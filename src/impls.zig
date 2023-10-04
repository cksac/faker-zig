pub const impls = .{
    ////////////////////////////////////////////////////////////////////////
    // Primitives
    ////////////////////////////////////////////////////////////////////////
    @import("impls/primitives/int.zig"),
    @import("impls/primitives/float.zig"),
    @import("impls/primitives/bool.zig"),
    @import("impls/primitives/string.zig"),

    @import("impls/primitives/enum.zig"),
    @import("impls/primitives/tuple.zig"),

    @import("impls/primitives/array.zig"),
    @import("impls/primitives/optional.zig"),
    @import("impls/primitives/vector.zig"),
    @import("impls/primitives/error_union.zig"),
    @import("impls/primitives/error.zig"),
    @import("impls/primitives/void.zig"),

    ////////////////////////////////////////////////////////////////////////
    // Standard Library
    ////////////////////////////////////////////////////////////////////////
    @import("impls/std/array_list_aligned.zig"),
    @import("impls/std/array_list_aligned_unmanaged.zig"),
    @import("impls/std/hash_map.zig"),
    @import("impls/std/hash_map_unmanaged.zig"),
    @import("impls/std/array_hash_map.zig"),
    @import("impls/std/array_hash_map_unmanaged.zig"),
    @import("impls/std/bit_stack.zig"),
    @import("impls/std/bounded_array_aligned.zig"),
    @import("impls/std/buf_map.zig"),
    @import("impls/std/buf_set.zig"),
    ////////////////////////////////////////////////////////////////////////////
    // Aggregates
    //
    // IMPORTANT: All user-defined types must be listed BEFORE this section.
    //            Each type in this section has user-defined aliases that are
    //            supported by Faker (e.g., std.ArrayList is a struct).
    ////////////////////////////////////////////////////////////////////////////
    @import("impls/primitives/struct.zig"),
    @import("impls/primitives/union.zig"),
};
