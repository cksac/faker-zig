const std = @import("std");
const Faker = @import("../../faker.zig").Faker;

pub fn is(
    comptime T: type,
) bool {
    return comptime std.mem.startsWith(u8, @typeName(T), "hash_map.HashMap(");
}

pub fn dummy(comptime T: type, comptime locales: anytype, comptime user_impls: anytype, faker: Faker(locales, user_impls)) T {
    const len = faker.random.uintLessThan(usize, 10);
    const keyType = std.meta.FieldType(T.KV, .key);
    const valType = std.meta.FieldType(T.KV, .value);
    var v = std.AutoHashMap(keyType, valType).init(faker.allocator);
    for (0..len) |_| {
        v.put(faker.dummy(keyType), faker.dummy(valType)) catch |e| std.debug.panic("panic with error: {any}", .{e});
    }
    return v;
}
