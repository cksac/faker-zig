const std = @import("std");
const Allocator = std.mem.Allocator;
const locale = @import("../../locale.zig");

pub fn Lorem(comptime locales: anytype) type {
    const WordsOptions = struct {
        min: usize = 3,
        max: usize = 10,
    };

    return struct {
        const Self = @This();
        data: locale.Data(locales),

        pub fn init(data: locale.Data(locales)) Self {
            return Self{ .data = data };
        }

        pub fn word(self: Self) []const u8 {
            return self.data.oneOfStr("lorem", "words");
        }

        pub fn words(self: Self, options: WordsOptions) Allocator.Error![]u8 {
            const len = self.data.random.intRangeLessThan(usize, options.min, options.max);
            var arr = std.ArrayList([]const u8).init(self.data.allocator);
            defer arr.deinit();
            for (0..len) |_| {
                try arr.append(self.word());
            }
            return try std.mem.join(self.data.allocator, " ", arr.items);
        }
    };
}
