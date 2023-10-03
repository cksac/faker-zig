const std = @import("std");
const Faker = @import("../../faker.zig").Faker;

pub fn is(
    comptime T: type,
) bool {
    return comptime std.mem.startsWith(u8, @typeName(T), "array_list.ArrayListAlignedUnmanaged(");
}

pub fn dummy(comptime T: type, comptime opt: anytype, faker: Faker(opt)) T {
    const len = faker.random.uintLessThan(usize, 10);
    const elemType = std.meta.Child(T.Slice);
    const alignment = std.meta.alignment(T.Slice);
    var v = std.ArrayListAlignedUnmanaged(elemType, alignment).initCapacity(faker.allocator, len) catch |e| std.debug.panic("panic with error: {any}", .{e});
    for (0..len) |_| {
        v.append(faker.allocator, faker.dummy(elemType)) catch |e| std.debug.panic("panic with error: {any}", .{e});
    }
    return v;
}
