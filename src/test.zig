const std = @import("std");
const Allocator = std.mem.Allocator;
const testing = std.testing;
const test_allocator = std.testing.allocator;

const faker = @import("faker.zig");

const en = faker.locale.en;
const base = faker.locale.base;

var RNG = std.rand.DefaultPrng.init(0);
const FAKER = faker.Faker(.{ .locales = .{ en, base } }).init(test_allocator, RNG.random());

fn deterministic_test(comptime Target: type) !void {
    const seed = 100;
    var rng1 = std.rand.DefaultPrng.init(seed);
    const faker1 = faker.Faker(.{ .locales = .{ en, base } }).init(test_allocator, rng1.random());

    var rng2 = std.rand.DefaultPrng.init(seed);
    const faker2 = faker.Faker(.{ .locales = .{ en, base } }).init(test_allocator, rng2.random());

    const t1 = faker1.dummy(Target);
    try testing.expect(@TypeOf(t1) == Target);

    const t2 = faker2.dummy(Target);
    std.debug.print("{s} = {any}\n", .{ @typeName(Target), t1 });
    try testing.expectEqual(t1, t2);
}

fn test_arr(comptime Target: type) !void {
    const seed = 100;
    var rng1 = std.rand.DefaultPrng.init(seed);
    const faker1 = faker.Faker(.{ .locales = .{ en, base } }).init(test_allocator, rng1.random());

    var rng2 = std.rand.DefaultPrng.init(seed);
    const faker2 = faker.Faker(.{ .locales = .{ en, base } }).init(test_allocator, rng2.random());

    const t1 = faker1.dummy(Target);
    defer t1.deinit();
    try testing.expect(@TypeOf(t1) == Target);

    const t2 = faker2.dummy(Target);
    defer t2.deinit();
    std.debug.print("{s} = {any}\n", .{ @typeName(Target), t1 });
    try testing.expectEqualSlices(std.meta.Child(@TypeOf(t1.items)), t1.items, t2.items);
}

fn test_arr_unmanaged(comptime Target: type) !void {
    const seed = 100;
    var rng1 = std.rand.DefaultPrng.init(seed);
    const faker1 = faker.Faker(.{ .locales = .{ en, base } }).init(test_allocator, rng1.random());

    var rng2 = std.rand.DefaultPrng.init(seed);
    const faker2 = faker.Faker(.{ .locales = .{ en, base } }).init(test_allocator, rng2.random());

    var t1 = faker1.dummy(Target);
    defer t1.deinit(faker1.allocator);
    var t2 = faker2.dummy(Target);
    defer t2.deinit(faker2.allocator);
    std.debug.print("{s} = {any}\n", .{ @typeName(Target), t1 });
    try testing.expectEqualSlices(std.meta.Child(@TypeOf(t1.items)), t1.items, t2.items);
}

fn test_hashmap(comptime Target: type) !void {
    const seed = 100;
    var rng1 = std.rand.DefaultPrng.init(seed);
    const faker1 = faker.Faker(.{ .locales = .{ en, base } }).init(test_allocator, rng1.random());

    var rng2 = std.rand.DefaultPrng.init(seed);
    const faker2 = faker.Faker(.{ .locales = .{ en, base } }).init(test_allocator, rng2.random());

    var t1 = faker1.dummy(Target);
    defer t1.deinit();
    try testing.expect(@TypeOf(t1) == Target);

    var t2 = faker2.dummy(Target);
    defer t2.deinit();
    std.debug.print("{s} = {any}\n", .{ @typeName(Target), t1 });
    // TODO: equal check
    // try testing.expectEqualSlices(std.meta.Child(@TypeOf(t1.keyIterator().items)), t1.keyIterator().items, t2.keyIterator().items);
    // try testing.expectEqualSlices(std.meta.Child(@TypeOf(t1.valueIterator().items)), t1.valueIterator().items, t2.valueIterator().items);
}

fn test_hashmap_unmanaged(comptime Target: type) !void {
    const seed = 100;
    var rng1 = std.rand.DefaultPrng.init(seed);
    const faker1 = faker.Faker(.{ .locales = .{ en, base } }).init(test_allocator, rng1.random());

    var rng2 = std.rand.DefaultPrng.init(seed);
    const faker2 = faker.Faker(.{ .locales = .{ en, base } }).init(test_allocator, rng2.random());

    var t1 = faker1.dummy(Target);
    defer t1.deinit(faker1.allocator);
    var t2 = faker2.dummy(Target);
    defer t2.deinit(faker2.allocator);
    std.debug.print("{s} = {any}\n", .{ @typeName(Target), t1 });

    // TODO: equal check
    // try testing.expectEqualSlices(std.meta.Child(@TypeOf(t1.keyIterator().items)), t1.keyIterator().items, t2.keyIterator().items);
    // try testing.expectEqualSlices(std.meta.Child(@TypeOf(t1.valueIterator().items)), t1.valueIterator().items, t2.valueIterator().items);
}

test "premitive types" {
    try deterministic_test(i8);
    try deterministic_test(u8);
    try deterministic_test(i16);
    try deterministic_test(u16);
    try deterministic_test(i32);
    try deterministic_test(u32);
    try deterministic_test(i64);
    try deterministic_test(u64);
    try deterministic_test(i128);
    try deterministic_test(u128);
    try deterministic_test(isize);
    try deterministic_test(usize);
    try deterministic_test(c_char);
    try deterministic_test(c_short);
    try deterministic_test(c_ushort);
    try deterministic_test(c_int);
    try deterministic_test(c_uint);
    try deterministic_test(c_long);
    try deterministic_test(c_ulong);
    try deterministic_test(c_longlong);
    try deterministic_test(c_ulonglong);
    //try deterministic_test(c_longdouble);
    //try deterministic_test(f16);
    try deterministic_test(f32);
    try deterministic_test(f64);
    //try deterministic_test(f80);
    //try deterministic_test(f128);
    try deterministic_test(bool);
    try deterministic_test(void);
}

test "arrays and vectors" {
    try deterministic_test([3]u8);
    try deterministic_test([2][2]f32);
    try deterministic_test([3:0]u8);

    try deterministic_test(@Vector(4, i32));
}

test "struct" {
    const Point = struct {
        x: f32,
        y: f32,
    };
    try deterministic_test(Point);

    const Point2 = packed struct {
        x: f32,
        y: f32,
    };
    try deterministic_test(Point2);

    const Vec3 = struct {
        const Self = @This();
        x: f32,
        y: f32,
        z: f32,

        pub fn init(x: f32, y: f32, z: f32) Self {
            return Self{
                .x = x,
                .y = y,
                .z = z,
            };
        }

        pub fn dot(self: Self, other: Self) f32 {
            return self.x * other.x + self.y * other.y + self.z * other.z;
        }
    };
    try deterministic_test(Vec3);

    const Empty = struct {
        pub const PI = 3.14;
    };
    try deterministic_test(Empty);

    const Foo = struct {
        a: i32 = 1234,
        b: i32,
    };
    try deterministic_test(Foo);

    const Divided = packed struct {
        half1: u8,
        quarter3: u4,
        quarter4: u4,
    };
    try deterministic_test(Divided);

    const BitField = packed struct {
        a: u3,
        b: u3,
        c: u2,
    };
    try deterministic_test(BitField);

    const Bar = struct {};
    try deterministic_test(Bar);

    try deterministic_test(GenericsType(u32));
}

fn GenericsType(comptime T: type) type {
    return struct {
        data: T,
    };
}

test "enum" {
    const Type = enum {
        ok,
        not_ok,
    };
    try deterministic_test(Type);

    const Value = enum(u2) {
        zero,
        one,
        two,
    };
    try deterministic_test(Value);

    const Value2 = enum(u32) {
        hundred = 100,
        thousand = 1000,
        million = 1000000,
    };
    try deterministic_test(Value2);

    const Value3 = enum(u4) {
        a,
        b = 8,
        c,
        d = 4,
        e,
    };
    try deterministic_test(Value3);

    const Suit = enum {
        clubs,
        spades,
        diamonds,
        hearts,

        const Self = @This();
        pub fn isClubs(self: Self) bool {
            return self == Self.clubs;
        }
    };
    try deterministic_test(Suit);
}

test "test union" {
    const ComplexTypeTag = enum {
        ok,
        not_ok,
    };
    const ComplexType = union(ComplexTypeTag) {
        ok: u8,
        not_ok: void,
    };
    try deterministic_test(ComplexType);

    const Variant = union(enum) {
        int: i32,
        boolean: bool,
        none,

        const Self = @This();
        fn truthy(self: Self) bool {
            return switch (self) {
                Self.int => |x_int| x_int != 0,
                Self.boolean => |x_bool| x_bool,
                Self.none => false,
            };
        }
    };
    try deterministic_test(Variant);
}

test "strings" {
    const Strings = struct { a: []const u8, b: []u8, c: [:0]const u8, d: [:0]u8, e: [:5]const u8, f: [:5]u8, h: *const [0]u8, i: *[0]u8, j: *const [0:0]u8, k: *[0:0]u8, l: *const [0:5]u8, m: *const [10]u8, o: *[10]u8, p: *const [10:0]u8, q: *[10:0]u8, r: *const [10:5]u8, s: *[10:5]u8 };
    try deterministic_test(Strings);
}

test "std array types" {
    try test_arr(std.ArrayList(u8));
    try test_arr(std.ArrayList(f32));
    try test_arr(std.ArrayListAligned(u8, 16));
    try test_arr(std.ArrayListAligned(f32, 16));

    try test_arr_unmanaged(std.ArrayListUnmanaged(u8));
    try test_arr_unmanaged(std.ArrayListUnmanaged(f32));
    try test_arr_unmanaged(std.ArrayListAlignedUnmanaged(u8, 16));
    try test_arr_unmanaged(std.ArrayListAlignedUnmanaged(f32, 16));
}

test "std hashmap types" {
    try test_hashmap(std.AutoHashMap(i32, i32));
    try test_hashmap(std.AutoHashMap(i32, i32));

    try test_hashmap_unmanaged(std.AutoHashMapUnmanaged(i32, i32));
    try test_hashmap_unmanaged(std.AutoHashMapUnmanaged(i32, i32));

    try test_hashmap(std.AutoArrayHashMap(i32, i32));
    try test_hashmap(std.AutoArrayHashMap(i32, i32));

    try test_hashmap_unmanaged(std.AutoArrayHashMapUnmanaged(i32, i32));
    try test_hashmap_unmanaged(std.AutoArrayHashMapUnmanaged(i32, i32));
}

test "customization" {
    const BlogUnmanaged = struct {
        const Self = @This();

        id: u32,
        tag: []const u8,
        title: []u8,
        body: []u8,

        pub fn deinit(self: Self, allocator: Allocator) void {
            allocator.free(self.title);
            allocator.free(self.body);
        }

        pub const @"faker.fields" = struct {
            pub const tag = .{ "color", "human" };
            pub const title = .{ "lorem", "words", .{ .min = 5, .max = 10 } };

            pub fn body(comptime opt: anytype, f: faker.Faker(opt)) []u8 {
                return f.lorem.words(.{ .min = 20, .max = 30 });
            }
        };
    };

    const blog = FAKER.dummy(BlogUnmanaged);
    defer blog.deinit(FAKER.allocator);
    std.debug.print("blog.id {d}\n", .{blog.id});
    std.debug.print("blog.tag {s}\n", .{blog.tag});
    std.debug.print("blog.title {s}\n", .{blog.title});
    std.debug.print("blog.body {s}\n", .{blog.body});
}

test "user impls" {
    const Bar = struct {
        const Self = @This();
        id: u32,
        friends: ?std.ArrayList(u8),

        pub fn deinit(self: Self) void {
            if (self.friends) |v| v.deinit();
        }
    };

    const Foo = struct {
        const Self = @This();
        id: u32,
        friends: ?std.ArrayList(u8),
        bar: ?Bar,
        pub fn deinit(self: Self) void {
            if (self.friends) |v| v.deinit();
            if (self.bar) |v| v.deinit();
        }
    };

    const non_null_option = struct {
        pub fn is(
            comptime T: type,
        ) bool {
            return @typeInfo(T) == .Optional;
        }

        pub fn dummy(comptime T: type, comptime opt: anytype, f: faker.Faker(opt)) T {
            const info = @typeInfo(T).Optional;
            return f.dummy(info.child);
        }
    };

    var rng = std.rand.DefaultPrng.init(0);
    const f = faker.Faker(.{
        .locales = .{ en, base },
        .user_impls = .{non_null_option},
    }).init(test_allocator, rng.random());

    const foo = f.dummy(Foo);
    defer foo.deinit();
    std.debug.print("foo = {}\n", .{foo});
}

test "lorem" {
    const v1 = FAKER.lorem.word();
    std.debug.print("lorem.word() = {s}\n", .{v1});

    const v2 = FAKER.lorem.words(.{});
    defer FAKER.allocator.free(v2);
    std.debug.print("lorem.words(.{{}}) = {s}\n", .{v2});

    const v3 = FAKER.lorem.words(.{ .min = 10, .max = 15 });
    defer FAKER.allocator.free(v3);
    std.debug.print("lorem.words(.{{ .min = 10, .max = 15 }}) = {s}\n", .{v3});

    const v4 = FAKER.lorem.words(.{ .separator = "-" });
    defer FAKER.allocator.free(v4);
    std.debug.print("lorem.words(.{{ .separator = \"-\" }}) = {s}\n", .{v4});

    {
        const v = FAKER.lorem.sentence(.{ .min = 10, .max = 15 });
        defer FAKER.allocator.free(v);
        std.debug.print("lorem.sentence(.{{ .min = 10, .max = 15 }}) = {s}\n", .{v});
    }
}
