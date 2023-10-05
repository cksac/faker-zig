pub const name_pattern = [_][]const u8{ "{{company.prefix}} {{person.male_last_name}}", "{{company.prefix}} {{person.male_last_name}} {{company.suffix}}", "{{company.prefix}} {{person.female_last_name}} {{company.suffix}}", "{{person.male_last_name}} un {{person.male_last_name}}", "{{person.male_last_name}}, {{person.male_last_name}} un {{person.male_last_name}}" };

pub const prefix = [_][]const u8{ "SIA", "AS", "IU", "Bezp.Org.", "Firma", "Biedrība" };

pub const suffix = [_][]const u8{ "un partneri", "holdings", "grupa", "aģentūra" };
