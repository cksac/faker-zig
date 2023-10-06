const std = @import("std");
const Allocator = std.mem.Allocator;

pub fn Helper(comptime locales: anytype) type {
    return struct {
        const Self = @This();
        allocator: Allocator,
        random: std.rand.Random,

        pub fn init(allocator: Allocator, random: std.rand.Random) Self {
            return Self{ .allocator = allocator, .random = random };
        }

        pub inline fn oneOfStr(self: Self, comptime module: []const u8, comptime field: []const u8) []const u8 {
            return self.oneOf([]const u8, module, field);
        }

        pub fn oneOf(self: Self, comptime Output: type, comptime module: []const u8, comptime field: []const u8) Output {
            const data_field = comptime blk: {
                inline for (locales) |locale| {
                    if (@hasDecl(locale, module)) {
                        const m = @field(locale, module);
                        if (@hasDecl(m, field)) {
                            break :blk @field(m, field);
                        }
                    }
                }
                @compileError(std.fmt.comptimePrint("{s}.{s} does not defined in {any}", .{ module, field, locales }));
            };
            const idx = self.random.uintLessThan(usize, data_field.len);
            return data_field[idx];
        }
    };
}
