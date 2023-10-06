const std = @import("std");

const package_name = "faker";
const package_path = "src/faker.zig";

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    _ = b.addModule(package_name, .{
        .source_file = .{ .path = package_path },
        .dependencies = &[_]std.Build.ModuleDependency{},
    });

    const tests = b.addTest(.{
        .root_source_file = .{ .path = "src/faker.zig" },
        .target = target,
        .optimize = optimize,
        .main_pkg_path = .{ .path = "src/" },
    });
    const run_tests = b.addRunArtifact(tests);

    const test_step = b.step("test", "Run library tests");
    test_step.dependOn(&run_tests.step);

    const install_docs = b.addInstallDirectory(.{
        .source_dir = tests.getEmittedDocs(),
        .install_dir = std.build.InstallDir{ .custom = "../docs" }, // custom relative to ./zig-out
        .install_subdir = "",
    });
    const docs_step = b.step("docs", "Generate API docs");
    docs_step.dependOn(&install_docs.step);
}
