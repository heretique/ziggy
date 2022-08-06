const std = @import("std");

const bx = @import("build_bx.zig");
const bimg = @import("build_bimg.zig");
const bgfx = @import("build_bgfx.zig");

const zigstr = @import("build_zigstr.zig");
const zmath = @import("3rdparty/zmath/build.zig");
const imgui = @import("3rdparty/Zig-ImGui/zig-imgui/imgui_build.zig");

const LibExeObjStep = std.build.LibExeObjStep;
const Builder = std.build.Builder;
const CrossTarget = std.zig.CrossTarget;
const Pkg = std.build.Pkg;

pub fn build(b: *Builder, target: std.zig.CrossTarget, build_mode: std.builtin.Mode) *std.build.LibExeObjStep {
    const exe = b.addExecutable("texture_packer", "src/texture_packer.zig");

    exe.setTarget(target);
    exe.setBuildMode(build_mode);

    // sdl2
    if (target.isDarwin()){
        exe.addFrameworkDir("3rdparty/sdl2/osx");
        exe.linkFramework("sdl2");
        exe.linkFramework("Foundation");
        exe.linkFramework("CoreFoundation");
        exe.linkFramework("Cocoa");
        exe.linkFramework("QuartzCore");
        exe.linkFramework("OpenGL");
        exe.linkFramework("IOKit");
        exe.linkFramework("Metal");
    }
    else if (target.isWindows()) {
        exe.addIncludeDir("3rdparty/sdl2/windows/include");
        exe.addLibPath("3rdparty/sdl2/windows/win64");
        exe.linkSystemLibrary("sdl2");
        exe.linkSystemLibrary("opengl32");
        exe.linkSystemLibrary("gdi32");
    }

    bx.link(exe);
    bimg.link(exe);
    bgfx.link(exe);
    zigstr.link(exe);
    imgui.link(exe);
    exe.linkSystemLibrary("c");
    exe.linkSystemLibrary("c++");

    exe.install();
    return exe;
}
