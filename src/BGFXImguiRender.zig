// const Self = @This();

// const bgfx = @import("bgfx");
// const imgui = @import("imgui");
// const c = @cImport({
//     @cInclude("bgfx_imgui/vs_ocornut_imgui.bin.h");
//     @cInclude("bgfx_imgui/fs_ocornut_imgui.bin.h");
//     @cInclude("bgfx_imgui/vs_imgui_image.bin.h");
//     @cInclude("bgfx_imgui/fs_imgui_image.bin.h");

//     @cInclude("bgfx_imgui/droidsans.ttf.h");
//     @cInclude("bgfx_imgui/icons_font_awesome.ttf.h");
//     @cInclude("bgfx_imgui/icons_kenney.ttf.h");
//     @cInclude("bgfx_imgui/roboto_regular.ttf.h");
//     @cInclude("bgfx_imgui/robotomono_regular.ttf.h");
// });

// vertexLayout: bgfx.VertexLayout = undefined,
// program: bgfx.ProgramHandle = undefined,
// texture: bgfx.TextureHandle = undefined,
// textureUniform: bgfx.UniformHandle = undefined,

// pub fn init(self: *Self, width: u32, height: u32) !void {
//     _ = self;
//     _ = width;
//     _ = height;
//     // var io = imgui.GetIO();
//     // var vsmem = bgfx.Memory{};
//     // var fsmem = bgfx.Memory{};

//     //     var vsmem: ?
//     //     switch(bgfx.getRendererType) {
//     //         .Direct3D9 => {
//     //             vsmem = bgfx.makeRef();
//     //         }
//     //     }

//     //     switch (bgfx_get_renderer_type())
//     //     {
//     //         case BGFX_RENDERER_TYPE_DIRECT3D9:
//     //             vsmem = bgfx_make_ref(vs_ocornut_imgui_dx9, sizeof(vs_ocornut_imgui_dx9));
//     //             fsmem = bgfx_make_ref(fs_ocornut_imgui_dx9, sizeof(fs_ocornut_imgui_dx9));
//     //             break;

//     //         case BGFX_RENDERER_TYPE_DIRECT3D11:
//     //         case BGFX_RENDERER_TYPE_DIRECT3D12:
//     //             vsmem = bgfx_make_ref(vs_ocornut_imgui_dx11, sizeof(vs_ocornut_imgui_dx11));
//     //             fsmem = bgfx_make_ref(fs_ocornut_imgui_dx11, sizeof(fs_ocornut_imgui_dx11));
//     //             break;

//     //         case BGFX_RENDERER_TYPE_METAL:
//     //             vsmem = bgfx_make_ref(vs_ocornut_imgui_mtl, sizeof(vs_ocornut_imgui_mtl));
//     //             fsmem = bgfx_make_ref(fs_ocornut_imgui_mtl, sizeof(fs_ocornut_imgui_mtl));
//     //             break;

//     //         default:
//     //             vsmem = bgfx_make_ref(vs_ocornut_imgui_glsl, sizeof(vs_ocornut_imgui_glsl));
//     //             fsmem = bgfx_make_ref(fs_ocornut_imgui_glsl, sizeof(fs_ocornut_imgui_glsl));
//     //             break;
//     //     }

//     //     bgfx_shader_handle_t vsh = bgfx_create_shader(vsmem);
//     //     bgfx_shader_handle_t fsh = bgfx_create_shader(fsmem);
//     //     _program                 = bgfx_create_program(vsh, fsh, true);

//     //     bgfx_vertex_layout_begin(&_layout, bgfx_get_renderer_type());
//     //     bgfx_vertex_layout_add(&_layout, BGFX_ATTRIB_POSITION, 2, BGFX_ATTRIB_TYPE_FLOAT, false, false);
//     //     bgfx_vertex_layout_add(&_layout, BGFX_ATTRIB_TEXCOORD0, 2, BGFX_ATTRIB_TYPE_FLOAT, false, false);
//     //     bgfx_vertex_layout_add(&_layout, BGFX_ATTRIB_COLOR0, 4, BGFX_ATTRIB_TYPE_UINT8, true, false);
//     //     bgfx_vertex_layout_end(&_layout);

//     //     _tex = bgfx_create_uniform("s_tex", BGFX_UNIFORM_TYPE_SAMPLER, 1);

//     //     u8* data;
//     //     i32 texWidth;
//     //     i32 texHeight;
//     //     i32 texBits;
//     //     io.Fonts->GetTexDataAsRGBA32(&data, &texWidth, &texHeight, &texBits);
//     //     _texture = bgfx_create_texture_2d((u16)texWidth,              //
//     //                                       (u16)texHeight,             //
//     //                                       false,                      //
//     //                                       1,                          //
//     //                                       BGFX_TEXTURE_FORMAT_BGRA8,  //
//     //                                       0,                          //
//     //                                       bgfx_copy(data, texWidth * texHeight * texBits));
// }

// pub fn render(self: *Self, view_id: u8, framebuffer: bgfx.FrameBufferHandle, draw_data: imgui.DrawData) !void {
//     _ = self;
//     _ = view_id;
//     _ = framebuffer;
//     _ = draw_data;
// }

// pub fn deinit(self: *Self) void {
//     _ = self;
// }
