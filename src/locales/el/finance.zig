const Currency = @import("../../modules/finance.zig").Currency;

pub const account_type = [_][]const u8{ "Καταθετικός", "Μισθοδοσίας", "Δανειακός" };

pub const credit_card = .{ .american_express = [_][]const u8{ "/34##-######-####L/", "/37##-######-####L/" }, .discover = [_][]const u8{ "/6011-####-####-###L/", "/65##-####-####-###L/", "/64[4-9]#-####-####-###L/", "/6011-62##-####-####-###L/", "/65##-62##-####-####-###L/", "/64[4-9]#-62##-####-####-###L/" }, .maestro = [_][]const u8{ "/50#{9,16}L/", "/5[6-8]#{9,16}L/", "/56##{9,16}L/" }, .mastercard = [_][]const u8{ "/5[1-5]##-####-####-###L/", "/6771-89##-####-###L/" }, .visa = [_][]const u8{ "/4###########L/", "/4###-####-####-###L/" } };

pub const currency = [_]Currency{.{ .name = "Ευρώ", .code = "EUR", .symbol = "€" }};

pub const transaction_type = [_][]const u8{ "κατάθεση", "ανάληψη", "πληρωμή", "τιμολόγιο" };
