const std = @import("std");
const Faker = @import("../../faker.zig").Faker;

pub fn is(
    comptime T: type,
) bool {
    return comptime T == std.BitStack;
}

pub fn dummy(comptime T: type, comptime opt: anytype, faker: Faker(opt)) T {
    const len = faker.random.uintLessThan(usize, 10);
    var v = std.BitStack.init(faker.allocator);
    v.ensureTotalCapacity(len) catch |e| std.debug.panic("panic with error: {any}", .{e});
    for (0..len) |_| {
        v.push(faker.dummy(u1)) catch |e| std.debug.panic("panic with error: {any}", .{e});
    }
    return v;
}
