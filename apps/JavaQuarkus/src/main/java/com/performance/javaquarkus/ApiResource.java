package com.performance.javaquarkus;

import io.smallrye.mutiny.Uni;
import io.vertx.mutiny.pgclient.PgPool;
import io.vertx.mutiny.sqlclient.Tuple;
import jakarta.inject.Inject;
import jakarta.ws.rs.GET;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.Produces;
import jakarta.ws.rs.core.MediaType;

import java.util.ArrayList;
import java.util.List;

@Path("/")
public class ApiResource {

    @Inject
    PgPool db;

    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public HelloResponse hello() {
        return new HelloResponse("Hello, World!");
    }

    @GET
    @Path("/orders")
    @Produces(MediaType.APPLICATION_JSON)
    public Uni<List<Order>> orders() {
        return db.preparedQuery(
                        "SELECT id, customer_id, total_cents, status, created_at" +
                        " FROM orders LIMIT $1 OFFSET $2")
                .execute(Tuple.of(100, 1000))
                .map(rows -> {
                    List<Order> result = new ArrayList<>();
                    for (var row : rows) {
                        result.add(new Order(
                                row.getInteger("id"),
                                row.getInteger("customer_id"),
                                row.getInteger("total_cents"),
                                row.getString("status"),
                                row.getLocalDateTime("created_at")));
                    }
                    return result;
                });
    }
}
