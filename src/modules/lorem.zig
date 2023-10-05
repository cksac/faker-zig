const std = @import("std");
const Allocator = std.mem.Allocator;
const locale = @import("../locale.zig");

pub fn LoremModule(comptime locales: anytype) type {
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

        pub fn words(self: Self, options: WordsOptions) []u8 {
            const len = self.data.random.intRangeLessThan(usize, options.min, options.max);
            var arr = std.ArrayList([]const u8).init(self.data.allocator);
            defer arr.deinit();
            for (0..len) |_| {
                arr.append(self.word()) catch |e| std.debug.panic("panic with error: {any}", .{e});
            }
            const v = std.mem.join(self.data.allocator, " ", arr.items) catch |e| std.debug.panic("panic with error: {any}", .{e});
            return v;
        }
    };
}
