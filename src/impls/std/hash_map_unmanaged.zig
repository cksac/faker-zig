const std = @import("std");
const Faker = @import("../../faker.zig").Faker;

pub fn is(
    comptime T: type,
) bool {
    return comptime std.mem.startsWith(u8, @typeName(T), "hash_map.HashMapUnmanaged(");
}

pub fn dummy(comptime T: type, comptime locales: anytype, comptime user_impls: anytype, faker: Faker(locales, user_impls)) T {
    const len = faker.random.uintLessThan(u32, 10);
    const keyType = std.meta.FieldType(T.KV, .key);
    const valType = std.meta.FieldType(T.KV, .value);
    var v = std.AutoHashMapUnmanaged(keyType, valType){};
    v.ensureTotalCapacity(faker.allocator, len) catch |e| std.debug.panic("panic with error: {any}", .{e});
    for (0..len) |_| {
        v.put(faker.allocator, faker.dummy(keyType), faker.dummy(valType)) catch |e| std.debug.panic("panic with error: {any}", .{e});
    }
    return v;
}
