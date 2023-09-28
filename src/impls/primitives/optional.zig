const Faker = @import("../../faker.zig").Faker;

pub fn is(
    comptime T: type,
) bool {
    return @typeInfo(T) == .Optional;
}

pub fn dummy(comptime T: type, comptime locales: anytype, comptime user_impls: anytype, faker: Faker(locales, user_impls)) T {
    const info = @typeInfo(T).Optional;
    const has_val = faker.random.boolean();
    return if (has_val) faker.dummy(info.child) else null;
}
