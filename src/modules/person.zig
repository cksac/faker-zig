const std = @import("std");
const Helper = @import("../helper.zig").Helper;

pub const NamePattern = struct {
    value: []const u8,
    weight: u8,
};

pub fn PersonModule(comptime locales: anytype) type {
    return struct {
        const Self = @This();
        helper: Helper(locales),

        pub fn init(helper: Helper(locales)) Self {
            return Self{ .helper = helper };
        }

        pub fn firstName(self: Self, sex: ?enum { male, female }) []const u8 {
            if (sex) |s| {
                switch (s) {
                    .male => return self.helper.oneOfStr("person", "male_first_name"),
                    .female => return self.helper.oneOfStr("person", "female_first_name"),
                }
            } else {
                return self.helper.oneOfStr("person", "first_name");
            }
        }

        pub fn middleName(self: Self, sex: ?enum { male, female }) []const u8 {
            if (sex) |s| {
                switch (s) {
                    .male => return self.helper.oneOfStr("person", "male_middle_name"),
                    .female => return self.helper.oneOfStr("person", "female_middle_name"),
                }
            } else {
                return self.helper.oneOfStr("person", "middle_name");
            }
        }

        pub fn lastName(self: Self) []const u8 {
            // TODO: last_name_pattern, male_last_name_pattern, female_last_name_pattern
            return self.helper.oneOfStr("person", "last_name");
        }
    };
}
