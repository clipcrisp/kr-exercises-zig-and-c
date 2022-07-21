const std = @import("std");
const Builder = std.build.Builder;

pub fn build(b: *Builder) void {
    const mode = b.standardReleaseOptions();
    const target = b.standardTargetOptions(.{});

    const ex1_1_c = b.addExecutable("Ex1-1_C", null);
    ex1_1_c.addCSourceFile("src/ex1-1.c", &[_][]const u8 {});
    ex1_1_c.linkLibC();
    ex1_1_c.install();

    const ex1_1_zig = b.addExecutable("Ex1-1_Zig", "src/ex1-1.zig");
    ex1_1_zig.setBuildMode(mode);
    ex1_1_zig.setTarget(target);
    ex1_1_zig.install();
}
