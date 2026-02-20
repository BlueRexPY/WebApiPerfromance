package com.performance.kotlinktor

import io.ktor.serialization.kotlinx.json.*
import io.ktor.server.application.*
import io.ktor.server.engine.*
import io.ktor.server.netty.*
import io.ktor.server.plugins.contentnegotiation.*
import io.ktor.server.response.*
import io.ktor.server.routing.*
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import kotlinx.serialization.Serializable
import org.postgresql.ds.PGSimpleDataSource
import java.sql.Connection
import java.time.LocalDateTime
import java.util.concurrent.ArrayBlockingQueue

@Serializable
data class HelloResponse(val message: String = "Hello, World!")

@Serializable
data class Order(
    val id: Int,
    val customer_id: Int,
    val total_cents: Int,
    val status: String,
    val created_at: String,
)

// Simple blocking connection pool
class PgPool(url: String, size: Int = 120) {
    private val queue = ArrayBlockingQueue<Connection>(size)

    init {
        val ds = PGSimpleDataSource().apply { setURL(url) }
        repeat(size) { queue.put(ds.connection) }
    }

    suspend fun <T> use(block: (Connection) -> T): T = withContext(Dispatchers.IO) {
        val conn = queue.take()
        try {
            block(conn)
        } finally {
            queue.put(conn)
        }
    }
}

fun main() {
    val dbUrl = System.getenv("DATABASE_URL")
        ?: "jdbc:postgresql://db:5432/ordersdb?user=apiuser&password=apipassword"

    // Convert postgres:// → jdbc:postgresql://
    val jdbcUrl = if (dbUrl.startsWith("postgresql://") || dbUrl.startsWith("postgres://")) {
        "jdbc:" + dbUrl.replace("^postgres://".toRegex(), "postgresql://")
    } else dbUrl

    val pool = PgPool(jdbcUrl, size = 120)

    embeddedServer(Netty, port = 8000, host = "0.0.0.0") {
        install(ContentNegotiation) { json() }

        routing {
            get("/") {
                call.respond(HelloResponse())
            }

            get("/orders") {
                val orders = pool.use { conn ->
                    conn.prepareStatement(
                        "SELECT id, customer_id, total_cents, status, created_at" +
                        " FROM orders LIMIT 100 OFFSET 1000"
                    ).use { stmt ->
                        stmt.executeQuery().use { rs ->
                            val list = mutableListOf<Order>()
                            while (rs.next()) {
                                list += Order(
                                    id          = rs.getInt(1),
                                    customer_id = rs.getInt(2),
                                    total_cents = rs.getInt(3),
                                    status      = rs.getString(4),
                                    created_at  = rs.getObject(5, LocalDateTime::class.java).toString(),
                                )
                            }
                            list
                        }
                    }
                }
                call.respond(orders)
            }
        }
    }.start(wait = true)
}
