import com.github.jengelman.gradle.plugins.shadow.tasks.ShadowJar

plugins {
    kotlin("jvm") version "2.0.21"
    id("com.github.johnrengelman.shadow") version "8.1.1"
    application
}

group = "com.performance"
version = "1.0.0"

val ktorVersion = "3.0.3"

repositories {
    mavenCentral()
}

dependencies {
    // Ktor server with Netty engine
    implementation("io.ktor:ktor-server-netty:$ktorVersion")
    implementation("io.ktor:ktor-server-content-negotiation:$ktorVersion")
    implementation("io.ktor:ktor-serialization-kotlinx-json:$ktorVersion")
    // PostgreSQL JDBC + coroutine dispatcher
    implementation("org.postgresql:postgresql:42.7.4")
    implementation("org.jetbrains.kotlinx:kotlinx-coroutines-core:1.8.1")
    // Minimal logging
    implementation("org.slf4j:slf4j-nop:2.0.16")
}

application {
    mainClass.set("com.performance.kotlinktor.ApplicationKt")
}

tasks.withType<ShadowJar> {
    archiveClassifier.set("all")
    mergeServiceFiles()
}
