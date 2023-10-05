pub const name_pattern = [_][]const u8{ "{{company.prefix}} {{person.female_first_name}}", "{{company.prefix}} {{person.male_first_name}}", "{{company.prefix}} {{person.male_last_name}}", "{{company.prefix}} {{company.suffix}}{{company.suffix}}", "{{company.prefix}} {{company.suffix}}{{company.suffix}}{{company.suffix}}", "{{company.prefix}} {{location.city_name}}{{company.suffix}}", "{{company.prefix}} {{location.city_name}}{{company.suffix}}{{company.suffix}}", "{{company.prefix}} {{location.city_name}}{{company.suffix}}{{company.suffix}}{{company.suffix}}" };

pub const prefix = [_][]const u8{ "ТОВ", "ПАТ", "ПрАТ", "ТДВ", "КТ", "ПТ", "ДП", "ФОП" };

pub const suffix = [_][]const u8{ "Постач", "Торг", "Пром", "Трейд", "Збут" };
