const std = @import("std");
const locale = @import("../locale.zig");

pub fn Color(comptime locales: anytype) type {
    return struct {
        const Self = @This();
        data: locale.Data(locales),

        pub fn init(data: locale.Data(locales)) Self {
            return Self{ .data = data };
        }

        pub fn human(self: Self) []const u8 {
            return self.data.oneOfStr("color", "human");
        }

        pub fn space(self: Self) []const u8 {
            return self.data.oneOfStr("color", "space");
        }
    };
}
