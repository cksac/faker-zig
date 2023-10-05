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
    const f = Faker(.{ .locales = .{ en, base } }).init(allocator, rng.random());

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

        pub const @"faker.dummy" = struct {
            pub const tag = .{ "color", "human" };
            pub const title = .{ "lorem", "words", .{ .min = 5, .max = 10 } };

            pub fn body(comptime opt: anytype, f: faker.Faker(opt)) []u8 {
                return f.lorem.words(.{ .min = 20, .max = 30 });
            }
        };
    };

    const blog = f.dummy(BlogUnmanaged);
    defer blog.deinit(f.allocator);
    std.debug.print("blog.id {d}\n", .{blog.id});
    std.debug.print("blog.tag {s}\n", .{blog.tag});
    std.debug.print("blog.title {s}\n", .{blog.title});
    std.debug.print("blog.body {s}\n", .{blog.body});

    // user impls
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

    const User = struct {
        const Self = @This();
        id: u32,
        friends: ?std.ArrayList(u8),

        pub fn deinit(self: Self) void {
            if (self.friends) |v| v.deinit();
        }
    };
    const f2 = faker.Faker(.{
        .locales = .{ en, base },
        .user_impls = .{non_null_option},
    }).init(allocator, rng.random());

    const user_val = f2.dummy(User);
    defer user_val.deinit();
    print("user_val = {}\n", user_val);
}
```

# Credit
faker-zig was inspired by and use locale data generated from [faker-js/faker v8.1.0](https://github.com/faker-js/faker)
Commit: https://github.com/cksac/faker-zig/commit/5a5f9072541bab9ce4728a03b1126298f81a9260

# Orignal faker-js/faker LICENSE
Faker - Copyright (c) 2022-2023

This software consists of voluntary contributions made by many individuals.
For exact contribution history, see the revision history
available at https://github.com/faker-js/faker

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

===

From: https://github.com/faker-js/faker/commit/a9f98046c7d5eeaabe12fc587024c06d683800b8
To: https://github.com/faker-js/faker/commit/29234378807c4141588861f69421bf20b5ac635e

Based on faker.js, copyright Marak Squires and contributor, what follows below is the original license.

===

faker.js - Copyright (c) 2020
Marak Squires
http://github.com/marak/faker.js/

faker.js was inspired by and has used data definitions from:

 * https://github.com/stympy/faker/ - Copyright (c) 2007-2010 Benjamin Curtis
 * http://search.cpan.org/~jasonk/Data-Faker-0.07/ - Copyright 2004-2005 by Jason Kohles

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.