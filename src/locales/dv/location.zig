pub const city_name = [_][]const u8{ "ރަސްގެ", "ބުޅާ", "ކާށި", "ކުރުނބާ", "މަޑި", "ކޯވަިމަސް", "ބޮޑުމަސް", "ކަނު", "ބޮޑު", "ވައި", "އަލަނާސި", "އަނބު", "ކަރާ", "ބަށި", "ޗިޗަންޑާ", "ބޯށި", "ތޮޅި", "ދޫނި", "ކެކުރި" };

pub const city_pattern = [_][]const u8{ "{{location.city_prefix}} {{company.noun}}{{location.city_suffix}}", "{{company.adjective}}{{company.noun}}{{location.city_suffix}}", "{{location.city_prefix}} {{person.first_name}}", "{{person.first_name}}{{location.city_suffix}}", "{{person.last_name}}{{location.city_suffix}}", "{{location.city_name}}" };

pub const city_prefix = [_][]const u8{ "އިރުމަތި", "ހުޅަނގު", "ދެކުނު", "އުތުރު", "ދެ" };

pub const city_suffix = [_][]const u8{ "ފުށި", "ދޫ", "ފަރު", "ރަށް", "ކޮޑި" };

pub const default_country = [_][]const u8{"ދިވެހިރާއްޖެ"};

pub const postcode = [_][]const u8{"#####"};

pub const street_pattern = [_][]const u8{ "{{person.first_name}} {{location.street_suffix}}", "{{person.last_name}} {{location.street_suffix}}", "{{company.adjective}} {{company.noun}} {{location.street_suffix}}" };

pub const street_suffix = [_][]const u8{ "ހިނގުން", "މަގު", "ގޯޅި" };
