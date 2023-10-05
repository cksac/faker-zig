pub const name_pattern = [_][]const u8{ "{{company.prefix}} {{person.last_name}}", "{{person.last_name}} {{company.suffix}}", "{{company.prefix}} {{person.last_name}} {{company.suffix}}" };

pub const prefix = [_][]const u8{ "PT", "CV", "UD", "PD", "Perum", "Fa", "Yayasan", "KKB" };

pub const suffix = [_][]const u8{ "(Persero) Tbk", "Tbk" };
