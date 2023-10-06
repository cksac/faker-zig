const std = @import("std");
const Helper = @import("../helper.zig").Helper;

pub fn ColorModule(comptime locales: anytype) type {
    return struct {
        const Self = @This();
        helper: Helper(locales),

        pub fn init(helper: Helper(locales)) Self {
            return Self{ .helper = helper };
        }

        pub fn human(self: Self) []const u8 {
            return self.helper.oneOfStr("color", "human");
        }

        pub fn space(self: Self) []const u8 {
            return self.helper.oneOfStr("color", "space");
        }
    };
}
