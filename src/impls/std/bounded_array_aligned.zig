const std = @import("std");
const Faker = @import("../../faker.zig").Faker;

pub fn is(
    comptime T: type,
) bool {
    return comptime std.mem.startsWith(u8, @typeName(T), "bounded_array.BoundedArrayAligned(");
}

pub fn dummy(comptime T: type, comptime opt: anytype, faker: Faker(opt)) T {
    var v = comptime T.init(0) catch |e| std.debug.panic("panic with error: {any}", .{e});
    const buf_ty = @typeInfo(@TypeOf(v.buffer));
    const len = faker.random.uintLessThan(usize, buf_ty.Array.len);
    v.resize(len) catch |e| std.debug.panic("panic with error: {any}", .{e});
    const elemType = buf_ty.Array.child;
    for (0..len) |i| {
        v.set(i, faker.dummy(elemType));
    }
    return v;
}
