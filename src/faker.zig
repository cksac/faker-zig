const std = @import("std");
const Allocator = std.mem.Allocator;

const impls = @import("impls.zig").impls;
const Helper = @import("helper.zig").Helper;

pub const locale = @import("locale.zig");
pub const module = @import("module.zig");

pub fn Faker(comptime opt: anytype) type {
    return struct {
        const Self = @This();

        allocator: Allocator,
        random: std.rand.Random,
        helper: Helper(opt.locales),

        // modules
        color: module.ColorModule(opt.locales),
        lorem: module.LoremModule(opt.locales),

        pub fn init(allocator: Allocator, random: std.rand.Random) Self {
            const helper = Helper(opt.locales).init(allocator, random);
            const color = module.ColorModule(opt.locales).init(helper);
            const lorem = module.LoremModule(opt.locales).init(helper);
            return Self{
                .allocator = allocator,
                .random = random,
                .helper = helper,
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

test {
    const tests = @import("test.zig");
    _ = tests;
    // std.testing.refAllDeclsRecursive(@This());
}
