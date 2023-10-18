const std = @import("std");
const Helper = @import("../helper.zig").Helper;

pub fn CompanyModule(comptime locales: anytype) type {
    return struct {
        const Self = @This();
        helper: Helper(locales),

        pub fn init(helper: Helper(locales)) Self {
            return Self{ .helper = helper };
        }

        pub fn buzzAdjective(self: Self) []const u8 {
            return self.helper.oneOfStr("company", "buzz_adjective");
        }

        pub fn buzzVerb(self: Self) []const u8 {
            return self.helper.oneOfStr("company", "buzz_verb");
        }

        pub fn buzzNoun(self: Self) []const u8 {
            return self.helper.oneOfStr("company", "buzz_noun");
        }

        pub fn buzzPhrase(self: Self) []u8 {
            var arr = std.ArrayList([]const u8).init(self.helper.allocator);
            arr.append(self.buzzVerb());
            arr.append(self.buzzAdjective());
            arr.append(self.buzzNoun());
            defer arr.deinit();
            const v = std.mem.join(self.helper.allocator, " ", arr.items) catch |e| std.debug.panic("panic with error: {any}", .{e});
            return v;
        }
    };
}
