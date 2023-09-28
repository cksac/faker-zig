const std = @import("std");
const Allocator = std.mem.Allocator;

const impls = @import("impls.zig").impls;
pub const locale = @import("locale.zig");
pub const module = @import("module.zig");

pub fn Faker(comptime locales: anytype, comptime user_impls: anytype) type {
    return struct {
        const Self = @This();

        allocator: Allocator,
        random: std.rand.Random,
        data: locale.Data(locales),

        // modules
        color: module.Color(locales),
        lorem: module.Lorem(locales),

        pub fn init(allocator: Allocator, random: std.rand.Random) Self {
            const data = locale.Data(locales).init(allocator, random);
            const color = module.Color(locales).init(data);
            const lorem = module.Lorem(locales).init(data);
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
                inline for (user_impls) |impl| {
                    if (impl.is(T)) {
                        break :blk impl;
                    }
                }

                inline for (impls) |impl| {
                    if (impl.is(T)) {
                        break :blk impl;
                    }
                }

                @compileError("type is not supported: " ++ @typeName(T));
            };

            return fake.dummy(T, locales, user_impls, self);
        }
    };
}
