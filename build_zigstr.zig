const std = @import("std");
const ziglyph = @import("build_ziglyph.zig");

pub fn link(exe: *std.build.LibExeObjStep) void {
    const lib = buildLibrary(exe);
    exe.addPackagePath("zigstr", "3rdparty/zigstr/src/Zigstr.zig");
    exe.linkLibrary(lib);
}

fn buildLibrary(exe: *std.build.LibExeObjStep) *std.build.LibExeObjStep {
    const lib = exe.builder.addStaticLibrary("zigstr", "3rdparty/zigstr/src/Zigstr.zig");
    lib.setTarget(exe.target);
    lib.setBuildMode(exe.build_mode);
    ziglyph.link(lib);
    lib.install();
    return lib;
}

fn thisDir() []const u8 {
    return std.fs.path.dirname(@src().file) orelse ".";
}
