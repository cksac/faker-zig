const Faker = @import("../../faker.zig").Faker;

pub fn is(
    comptime T: type,
) bool {
    return @typeInfo(T) == .ErrorUnion;
}

pub fn dummy(comptime T: type, comptime locales: anytype, comptime user_impls: anytype, faker: Faker(locales, user_impls)) T {
    const info = @typeInfo(T).ErrorUnion;
    const is_err = faker.random.boolean();
    return if (is_err) faker.dummy(info.error_set) else faker.dummy(info.payload);
}
