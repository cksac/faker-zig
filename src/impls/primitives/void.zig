const Faker = @import("../../faker.zig").Faker;

pub fn is(
    comptime T: type,
) bool {
    return T == void;
}

pub fn dummy(comptime T: type, comptime locales: anytype, comptime user_impls: anytype, _: Faker(locales, user_impls)) T {
    return void{};
}
