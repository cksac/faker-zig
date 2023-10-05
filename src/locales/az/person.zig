const NamePattern = @import("../../modules/person.zig").NamePattern;

pub const female_first_name = [_][]const u8{ "Anna", "Adeliya", "Afaq", "Afət", "Afərim", "Aidə", "Aygün", "Aynur", "Alsu", "Ayan", "Aytən", "Aygül", "Aydan", "Aylin", "Bahar", "Banu", "Bəyaz", "Billurə", "Cansu", "Ceyla", "Damla", "Dəniz", "Diana", "Dilarə", "Ella", "Elza", "Elyanora", "Ellada", "Elvira", "Elnarə", "Esmira", "Estella", "Fatimə", "Fəxriyyə", "Fərəh", "Fərqanə", "Fidan", "Firuzə", "Gövhər", "Günay", "Gülay", "Gülçin", "Gülər", "Gülsüm", "Humay", "Hüriyə", "Hülya", "Jalə", "Jasmin", "Kübra", "Ləman", "Lamiyə", "Lalə", "Liliya", "Laura", "Leyla", "Maya", "Mehriban", "Mələk", "Nuray", "Nurgün", "Nərgiz", "Nigar", "Ofelya", "Pəri", "Röya", "Səbinə", "Selcan", "Tansu", "Tuba", "Ülviyyə", "Ulduz", "Ülkər" };

pub const female_last_name = [_][]const u8{ "Qasımova", "Əfəndiyeva", "Soltanova", "Abdullayeva", "Rəşidova", "Ələkbərova", "Əliyeva", "Tahirova", "Seyidova", "Vəsiyeva" };

pub const female_last_name_pattern = [_]NamePattern{.{ .value = "{{person.female_last_name}}", .weight = 1 }};

pub const female_prefix = .{};

pub const first_name = [_][]const u8{ "Abbas", "Abdulla", "Adeliya", "Adil", "Afaq", "Afəl", "Afərim", "Afət", "Aidə", "Akif", "Alsu", "Amid", "Anar", "Anna", "Aqil", "Ayan", "Aydan", "Aygül", "Aygün", "Aylin", "Aynur", "Aytən", "Bahar", "Banu", "Billurə", "Bəhram", "Bəhruz", "Bəxtiyar", "Bəyaz", "Cansu", "Ceyla", "Damla", "Diana", "Dilarə", "Dəniz", "Ella", "Ellada", "Elnarə", "Elnur", "Elvira", "Elyanora", "Elza", "Emil", "Emin", "Esmira", "Estella", "Faiq", "Fatimə", "Fidan", "Firuzə", "Fərqanə", "Fərəh", "Fəxriyyə", "Gövhər", "Gülay", "Gülsüm", "Gülçin", "Gülər", "Günay", "Humay", "Hülya", "Hüriyə", "Jalə", "Jasmin", "Kamran", "Kübra", "Lalə", "Lamiyə", "Laura", "Leyla", "Liliya", "Ləman", "Maya", "Mehriban", "Mələk", "Nadir", "Nahid", "Natiq", "Nigar", "Nihad", "Nuray", "Nurgün", "Nurlan", "Nərgiz", "Ofelya", "Pəri", "Rafiq", "Röya", "Rəşad", "Rəşid", "Selcan", "Səbinə", "Tahir", "Tansu", "Tuba", "Tunar", "Tərlan", "Ulduz", "Zahir", "Zaur", "Ülkər", "Ülviyyə", "İlham", "İlqar", "İxtiyar", "Şaiq", "Şəhriyar", "Əhməd" };

pub const male_first_name = [_][]const u8{ "Anar", "Amid", "Afəl", "Abbas", "Abdulla", "Adil", "Akif", "Aqil", "Bəhram", "Nurlan", "Rafiq", "Tərlan", "Zaur", "Emin", "Emil", "Kamran", "Elnur", "Natiq", "Rəşad", "Rəşid", "Tahir", "Əhməd", "Zahir", "İlham", "İlqar", "Nahid", "Nihad", "Faiq", "İxtiyar", "Şəhriyar", "Şaiq", "Bəxtiyar", "Bəhruz", "Tunar", "Nadir" };

pub const male_last_name = [_][]const u8{ "Əhmədov", "Ələkbərov", "Əliyev", "Vəliyev", "Soltanov", "Quliyev", "Məmmədov", "Xəlilov", "Nəzərov", "Rəhimov" };

pub const male_last_name_pattern = [_]NamePattern{.{ .value = "{{person.male_last_name}}", .weight = 1 }};

pub const male_prefix = .{};

pub const name = [_]NamePattern{ .{ .value = "{{person.firstName}}", .weight = 1 }, .{ .value = "{{person.lastName}} {{person.firstName}}", .weight = 1 }, .{ .value = "{{person.firstName}} {{person.lastName}}", .weight = 1 } };

pub const prefix = .{};

pub const suffix = .{};
