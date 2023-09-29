# faker.zig
A faker library for Zig

# Examples
```Zig
const faker = @import("faker");
const std = @import("std");
const en = faker.locale.en;
const base = faker.locale.base;
const print = std.debug.print;

fn GenericsType(comptime T: type) type {
    return struct {
        data: T,
    };
}

pub fn main() !void {
    // create faker with locales and random
    const allocator = std.heap.page_allocator;
    var rng = std.rand.DefaultPrng.init(0);
    const f = faker.Faker(.{ en, base }, .{}).init(allocator, rng.random());

    // primitive types
    const u8_val = f.dummy(u8);
    print("u8_val = {}\n", u8_val);

    const f32_val = f.dummy(f32);
    print("f32_val = {}\n", f32_val);

    // arrays and vectors
    const arr_val = f.dummy([3]u8);
    print("arr_val = {}\n", arr_val);

    const multi_dim_arr_val = f.dummy([2][3]u8);
    print("multi_dim_arr_val = {}\n", multi_dim_arr_val);

    const vec_val = f.dummy(@Vector(4, i32));
    print("vec_val = {}\n", vec_val);

    // struct
    const Point = struct {
        x: f32,
        y: f32,
    };
    const point_val = f.dummy(Point);
    print("point_val = {}\n", point_val);

    const generic_val = f.dummy(GenericsType(u8));
    print("generic_val = {}\n", generic_val);

    // enum
    const EnumType = enum {
        ok,
        not_ok,
    };
    const enum_val = f.dummy(EnumType);
    print("enum_val = {}\n", enum_val);

    // union
    const UnionType = union(EnumType) {
        ok: u8,
        not_ok: void,
    };
    const union_val = f.dummy(UnionType);
    print("union_val = {}\n", union_val);

    // strings
    const str_val = f.dummy([]const u8);
    print("str_val = {s}\n", str_val);

    // customization
    const Foo = struct {
        id: u32,
        color: []const u8,
        color_space: []const u8,

        pub const @"faker.dummy" = struct {
            const color = .{ "color", "human" };

            pub fn color_space(comptime locales: anytype, comptime user_impls: anytype, f: faker.Faker(locales, user_impls)) []const u8 {
                return f.color.space();
            }
        };
    };

    const foo_val = f.dummy(Foo);
    print("foo_val = {}\n", foo_val);

    // user impls
    const non_null_option = struct {
        pub fn is(
            comptime T: type,
        ) bool {
            return @typeInfo(T) == .Optional;
        }

        pub fn dummy(comptime T: type, comptime locales: anytype, comptime user_impls: anytype, f: faker.Faker(locales, user_impls)) T {
            const info = @typeInfo(T).Optional;
            return f.dummy(info.child);
        }
    };

    const User = struct {
        const Self = @This();
        id: u32,
        friends: ?std.ArrayList(u8),

        pub fn deinit(self: Self) void {
            if (self.friends) |v| v.deinit();
        }        
    };
    const f2 = faker.Faker(.{ en, base }, .{non_null_option}).init(allocator, rng.random());
    const user_val = f2.dummy(User);
    defer user_val.deinit();
    print("user_val = {}\n", user_val);
}
```
