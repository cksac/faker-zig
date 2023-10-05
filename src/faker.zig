const std = @import("std");
const Allocator = std.mem.Allocator;

const impls = @import("impls.zig").impls;
pub const locale = @import("locale.zig");
pub const module = @import("module.zig");

pub fn Faker(comptime opt: anytype) type {
    return struct {
        const Self = @This();

        allocator: Allocator,
        random: std.rand.Random,
        data: locale.Data(opt.locales),

        // modules
        color: module.ColorModule(opt.locales),
        lorem: module.LoremModule(opt.locales),

        pub fn init(allocator: Allocator, random: std.rand.Random) Self {
            const data = locale.Data(opt.locales).init(allocator, random);
            const color = module.ColorModule(opt.locales).init(data);
            const lorem = module.LoremModule(opt.locales).init(data);
            return Self{
                .allocator = allocator,
                .random = random,
                .data = data,
                .color = color,
                .lorem = lorem,
            };
        }

        pub fn dummy(self: Self, comptime T: type) T {
            const fake = comptime blk: {
                if (@hasField(@TypeOf(opt), "user_impls")) {
                    inline for (opt.user_impls) |impl| {
                        if (impl.is(T)) {
                            break :blk impl;
                        }
                    }
                }

                inline for (impls) |impl| {
                    if (impl.is(T)) {
                        break :blk impl;
                    }
                }

                @compileError("type is not supported: " ++ @typeName(T));
            };

            return fake.dummy(T, opt, self);
        }
    };
}

pub fn main() !void {
    const allocator = std.heap.page_allocator;
    var rng = std.rand.DefaultPrng.init(0);
    const f = Faker(.{ .locales = .{ locale.en, locale.base } }).init(allocator, rng.random());

    std.debug.print("{s}\n", .{@typeName(std.AutoArrayHashMap(u8, u32))});
    std.debug.print("{s}\n", .{@typeName(std.BoundedArray(u8, 10))});
    //_ = f;
    std.debug.print("{}\n", .{f.dummy(std.BoundedArray(u8, 10))});
    std.debug.print("{}\n", .{f.dummy(std.BoundedArrayAligned(u8, 32, 12))});
    std.debug.print("{}\n", .{f.dummy(std.BufMap)});
    std.debug.print("{}\n", .{f.dummy(std.BufSet)});
}
