const std = @import("std");
const Helper = @import("../helper.zig").Helper;
const faker = @import("../faker.zig");

pub fn NumberModule(comptime locales: anytype) type {
    return struct {
        const Self = @This();
        helper: Helper(locales),

        pub fn init(helper: Helper(locales)) Self {
            return Self{ .helper = helper };
        }

        pub fn float(self: Self, comptime T: type, opt: struct { min: T = 0.0, max: T = 1.0 }) T {
            if (opt.min == opt.max) {
                return opt.min;
            }
            std.debug.assert(opt.max > opt.min);

            return self.helper.random.float(T) * (opt.max - opt.min) + opt.min;
        }

        pub fn int(self: Self, comptime T: type, opt: struct { min: T = std.math.minInt(T), max: T = std.math.maxInt(T) }) T {
            if (opt.min == opt.max) {
                return opt.min;
            }
            std.debug.assert(opt.max > opt.min);

            return self.helper.random.intRangeAtMost(T, opt.min, opt.max);
        }
    };
}

test {
    const allocator = std.testing.allocator;
    var rng = std.rand.DefaultPrng.init(0);
    const f = faker.Faker(.{
        .locales = .{ faker.locale.en, faker.locale.base },
    }).init(allocator, rng.random());
    // int
    {
        const v = f.number.int(u8, .{ .max = 10 });
        try std.testing.expect(v <= 10);
        std.debug.print("number.int(u8, .{{ .max = 10 }}) = {}\n", .{v});
    }
    {
        const v = f.number.int(u8, .{ .min = 10 });
        try std.testing.expect(v >= 10);
        std.debug.print("number.int(u8, .{{ .min = 10 }}) = {}\n", .{v});
    }
    {
        const v = f.number.int(u8, .{ .min = 10, .max = 11 });
        try std.testing.expect(v >= 10 and v <= 11);
        std.debug.print("number.int(u8, .{{ .min = 10, .max = 11  }}) = {}\n", .{v});
    }
    // float
    {
        const v = f.number.float(f32, .{ .min = 10.5, .max = 100.5 });
        try std.testing.expect(v >= 10.5 and v <= 100.5);
        std.debug.print("number.float(f32, .{{ .min = 10.5, .max = 100.5 }}) = {}\n", .{v});
    }
}
