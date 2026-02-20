const std = @import("std");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    const zap = b.dependency("zap", .{
        .target = target,
        .optimize = optimize,
        .openssl = false,
    });

    const exe = b.addExecutable(.{
        .name = "zig-zap-api",
        .root_source_file = b.path("src/main.zig"),
        .target = target,
        .optimize = optimize,
    });

    exe.root_module.addImport("zap", zap.module("zap"));

    // Link libpq for PostgreSQL
    exe.linkSystemLibrary("pq");
    exe.linkLibC();
    exe.addIncludePath(.{ .cwd_relative = "/usr/include/postgresql" });

    b.installArtifact(exe);
}
