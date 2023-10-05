pub const collation = [_][]const u8{ "utf8_unicode_ci", "utf8_general_ci", "utf8_bin", "ascii_bin", "ascii_general_ci", "cp1250_bin", "cp1250_general_ci" };

pub const engine = [_][]const u8{ "InnoDB", "MyISAM", "MEMORY", "CSV", "BLACKHOLE", "ARCHIVE" };

pub const @"type" = [_][]const u8{ "int", "varchar", "text", "date", "datetime", "tinyint", "time", "timestamp", "smallint", "mediumint", "bigint", "decimal", "float", "double", "real", "bit", "boolean", "serial", "blob", "binary", "enum", "set", "geometry", "point" };
