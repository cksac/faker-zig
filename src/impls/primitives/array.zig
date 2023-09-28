const Faker = @import("../../faker.zig").Faker;

pub fn is(
    comptime T: type,
) bool {
    return @typeInfo(T) == .Array;
}

pub fn dummy(comptime T: type, comptime locales: anytype, comptime user_impls: anytype, faker: Faker(locales, user_impls)) T {
    const info = @typeInfo(T).Array;
    if (info.sentinel == null) {
        var item: [info.len]info.child = undefined;
        inline for (0..info.len) |i| {
            item[i] = faker.dummy(info.child);
        }
        return item;
    } else {
        const sentinel_ptr = info.sentinel orelse return null;
        const sentinel = @as(*const info.child, @ptrCast(sentinel_ptr)).*;
        var item: [info.len:sentinel]info.child = undefined;
        inline for (0..info.len) |i| {
            item[i] = faker.dummy(info.child);
        }
        return item;
    }
}
