pub const city_pattern = [_][]const u8{ "{{location.city_prefix}} {{person.firstName}}{{location.city_suffix}}", "{{location.city_prefix}} {{person.firstName}}", "{{person.firstName}}{{location.city_suffix}}", "{{person.last_name}}{{location.city_suffix}}" };

pub const county = [_][]const u8{ "Carlow", "Cavan", "Clare", "Cork", "Donegal", "Dublin", "Galway", "Kerry", "Kildare", "Kilkenny", "Laois", "Leitrim", "Limerick", "Longford", "Louth", "Mayo", "Meath", "Monaghan", "Offaly", "Roscommon", "Sligo", "Tipperary", "Waterford", "Westmeath", "Wexford", "Wicklow" };

pub const default_country = [_][]const u8{"Ireland"};

pub const postcode = [_][]const u8{ "A## ****", "D## ****", "E## ****", "F## ****", "H## ****", "K## ****", "N## ****", "P## ****", "R## ****", "T## ****", "V## ****", "W## ****", "X## ****", "Y## ****" };

pub const street_pattern = [_][]const u8{ "{{person.firstName}} {{location.street_suffix}}", "{{person.lastName}} {{location.street_suffix}}" };
