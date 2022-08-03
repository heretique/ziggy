const std = @import("std");
const Allocator = std.mem.Allocator;
const ArrayList = std.ArrayList;
const ChildProcess = std.ChildProcess;

const mem = std.mem;
const str = @import("zigstr");

pub const ShaderTypes = enum { Vertex, Fragment, Compute };

fn shaderTypeToString(shaderType: ShaderTypes) []const u8 {
    const vertex = "vertex";
    const fragment = "fragment";
    const compute = "compute";
    return switch (shaderType) {
        ShaderTypes.Vertex => vertex,
        ShaderTypes.Fragment => fragment,
        ShaderTypes.Compute => compute,
    };
}

pub fn compileShader(path: []const u8, varyings: []const u8, includes: []const []const u8, defines: []const []const u8, shaderType: ShaderTypes, allocator: Allocator) ![]u8 {
    var compiler_args_list = ArrayList([]const u8).init(allocator);
    defer compiler_args_list.deinit();

    var compiler_args = ArrayList(u8).init(allocator);
    defer compiler_args.deinit();

    var defines_arg = ArrayList(u8).init(allocator);
    defer defines_arg.deinit();

    try compiler_args_list.append("shaderc.exe");
    try compiler_args_list.append("-f");
    try compiler_args_list.append(path);

    // get binary path from path
    var bin_path = try str.fromBytes(allocator, path[0..mem.lastIndexOfScalar(u8, path, '.').?]);
    defer bin_path.deinit();
    try bin_path.concat(".bin");
    try compiler_args_list.append("-o");
    try compiler_args_list.append(bin_path.bytes.items);
    try compiler_args_list.append("--varyingdef");
    try compiler_args_list.append(varyings);
    for (includes) |include| {
        try compiler_args_list.append("-i");
        try compiler_args_list.append(include);
    }

    if (defines.len > 0) {
        try compiler_args_list.append("--define");
        for (defines) |define| {
            try defines_arg.appendSlice(define);
            try defines_arg.append(';');
        }
        try compiler_args_list.append(defines_arg.items);
    }

    try compiler_args_list.append("--type");
    try compiler_args_list.append(shaderTypeToString(shaderType));
    try compiler_args_list.append("--platform");
    // for now assume Windows
    // TODO get compile time platform
    try compiler_args_list.append("windows");
    try compiler_args_list.append("--profile");
    // for now we assume GLSL 400
    try compiler_args_list.append("150");

    for (compiler_args_list.items) |arg| {
        try compiler_args.appendSlice(arg);
        try compiler_args.append(' ');
    }
    std.debug.print("Shader compiler args: {s}\n", .{compiler_args.items});

    var cwd = std.fs.cwd();
    const exec_result = try ChildProcess.exec(.{
        .allocator = allocator,
        .argv = compiler_args_list.items,
        .max_output_bytes = 5 * 1024 * 1024, // 5 MB
        .cwd_dir = cwd,
    });

    defer allocator.free(exec_result.stdout);
    defer allocator.free(exec_result.stderr);

    const compiled_shader_file = try std.fs.cwd().openFile(bin_path.bytes.items, .{});
    const compiled_shader_buffer = try compiled_shader_file.readToEndAlloc(allocator, 5 * 1024 * 1024);
    compiled_shader_file.close();
    return compiled_shader_buffer;
}
