const std = @import("std"); 

pub fn link(exe: *std.build.LibExeObjStep) void {
    const lib = buildLibrary(exe);
    exe.addPackagePath("ziglyph", "3rdparty/ziglyph/src/ziglyph.zig");
    exe.linkLibrary(lib);
}

fn buildLibrary(exe: *std.build.LibExeObjStep) *std.build.LibExeObjStep {
    const lib = exe.builder.addStaticLibrary("ziglyph", "3rdparty/ziglyph/src/ziglyph.zig");
    lib.setTarget(exe.target);
    lib.setBuildMode(exe.build_mode);
    lib.install();
    return lib;
}

fn thisDir() []const u8 {
    return std.fs.path.dirname(@src().file) orelse ".";
}


