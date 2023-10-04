const std = @import("std");
const Faker = @import("../../faker.zig").Faker;

pub fn is(
    comptime T: type,
) bool {
    return comptime T == std.BufMap;
}

pub fn dummy(comptime T: type, comptime opt: anytype, faker: Faker(opt)) T {
    const len = faker.random.uintLessThan(usize, 10);
    var v = std.BufMap.init(faker.allocator);
    for (0..len) |_| {
        v.put(faker.dummy([]const u8), faker.dummy([]const u8)) catch |e| std.debug.panic("panic with error: {any}", .{e});
    }
    return v;
}
