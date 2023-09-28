const Faker = @import("../../faker.zig").Faker;

pub fn is(
    comptime T: type,
) bool {
    return @typeInfo(T) == .Vector;
}

pub fn dummy(comptime T: type, comptime locales: anytype, comptime user_impls: anytype, faker: Faker(locales, user_impls)) T {
    const info = @typeInfo(T).Vector;
    var arr: [info.len]info.child = undefined;
    inline for (0..info.len) |i| {
        arr[i] = faker.dummy(info.child);
    }
    const vec: T = arr;
    return vec;
}
