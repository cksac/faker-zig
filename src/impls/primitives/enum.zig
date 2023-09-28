const Faker = @import("../../faker.zig").Faker;

pub fn is(
    comptime T: type,
) bool {
    return @typeInfo(T) == .Enum;
}

pub fn dummy(comptime T: type, comptime locales: anytype, comptime user_impls: anytype, faker: Faker(locales, user_impls)) T {
    return faker.random.enumValue(T);
}
