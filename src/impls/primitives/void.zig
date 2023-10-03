const Faker = @import("../../faker.zig").Faker;

pub fn is(
    comptime T: type,
) bool {
    return T == void;
}

pub fn dummy(comptime T: type, comptime opt: anytype, _: Faker(opt)) T {
    return void{};
}
