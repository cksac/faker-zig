pub const city_pattern = [_][]const u8{ "{{location.city_prefix}} {{person.firstName}}{{location.city_suffix}}", "{{location.city_prefix}} {{person.firstName}}", "{{person.firstName}}{{location.city_suffix}}", "{{person.last_name}}{{location.city_suffix}}" };

pub const default_country = [_][]const u8{"Canada"};

pub const postcode = [_][]const u8{ "A#? #?#", "B#? #?#", "C#? #?#", "E#? #?#", "G#? #?#", "H#? #?#", "J#? #?#", "K#? #?#", "L#? #?#", "M#? #?#", "N#? #?#", "P#? #?#", "R#? #?#", "S#? #?#", "T#? #?#", "V#? #?#", "X#? #?#", "Y#? #?#" };

pub const state = [_][]const u8{ "Alberta", "Colombie-Britannique", "Manitoba", "Nouveau-Brunswick", "Terre-Neuve-et-Labrador", "Nouvelle-Écosse", "Territoires du Nord-Ouest", "Nunavut", "Ontario", "Île-du-Prince-Édouard", "Québec", "Saskatchewan", "Yukon" };

pub const state_abbr = [_][]const u8{ "AB", "BC", "MB", "NB", "NL", "NS", "NU", "NT", "ON", "PE", "QC", "SK", "YK" };

pub const street_pattern = [_][]const u8{ "{{person.firstName}} {{location.street_suffix}}", "{{person.lastName}} {{location.street_suffix}}" };
