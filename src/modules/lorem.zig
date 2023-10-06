const std = @import("std");
const Allocator = std.mem.Allocator;
const Helper = @import("../helper.zig").Helper;

pub fn LoremModule(comptime locales: anytype) type {
    return struct {
        const Self = @This();
        helper: Helper(locales),

        pub fn init(helper: Helper(locales)) Self {
            return Self{ .helper = helper };
        }

        /// Generates a word from lorem words
        /// @example
        /// faker.lorem.word();
        pub fn word(self: Self) []const u8 {
            return self.helper.oneOfStr("lorem", "words");
        }

        /// Generates a separated list of words with given separator
        ///
        /// @param opt.min The minimum number of words to generate. Default to 3.
        /// @param opt.max The maximum number of words to generate. Default to 10.
        /// @param opt.separator The separator between words. Default to space.
        ///
        /// @example
        /// faker.lorem.words(.{});
        /// faker.lorem.words(.{ .max = 15 });
        /// faker.lorem.words(.{ .min = 10, .max = 15 });
        /// faker.lorem.words(.{ .separator = "-" });
        pub fn words(self: Self, opt: struct {
            min: usize = 3,
            max: usize = 10,
            separator: []const u8 = " ",
        }) []u8 {
            const len = self.helper.random.intRangeLessThan(usize, opt.min, opt.max);
            var arr = std.ArrayList([]const u8).init(self.helper.allocator);
            defer arr.deinit();
            for (0..len) |_| {
                arr.append(self.word()) catch |e| std.debug.panic("panic with error: {any}", .{e});
            }
            const v = std.mem.join(self.helper.allocator, opt.separator, arr.items) catch |e| std.debug.panic("panic with error: {any}", .{e});
            return v;
        }

        // pub fn sentence(self: Self, opt: struct {
        //     min: usize = 3,
        //     max: usize = 10,
        // }) []u8 {}

        // pub fn sentences(self: Self, opt: struct {
        //     min: usize = 3,
        //     max: usize = 10,
        // }) []u8 {}
    };
}
