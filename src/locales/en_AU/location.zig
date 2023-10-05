pub const building_number = [_][]const u8{ "####", "###", "##" };

pub const city_pattern = [_][]const u8{ "{{location.city_prefix}} {{person.firstName}}{{location.city_suffix}}", "{{location.city_prefix}} {{person.firstName}}", "{{person.firstName}}{{location.city_suffix}}", "{{person.last_name}}{{location.city_suffix}}" };

pub const default_country = [_][]const u8{"Australia"};

pub const postcode = [_][]const u8{"####"};

pub const state = [_][]const u8{ "New South Wales", "Queensland", "Northern Territory", "South Australia", "Western Australia", "Tasmania", "Australian Capital Territory", "Victoria" };

pub const state_abbr = [_][]const u8{ "NSW", "QLD", "NT", "SA", "WA", "TAS", "ACT", "VIC" };

pub const street_pattern = [_][]const u8{ "{{person.firstName}} {{location.street_suffix}}", "{{person.lastName}} {{location.street_suffix}}" };

pub const street_suffix = [_][]const u8{ "Avenue", "Boulevard", "Circle", "Circuit", "Court", "Crescent", "Crest", "Drive", "Estate Dr", "Grove", "Hill", "Island", "Junction", "Knoll", "Lane", "Loop", "Mall", "Manor", "Meadow", "Mews", "Parade", "Parkway", "Pass", "Place", "Plaza", "Ridge", "Road", "Run", "Square", "Station St", "Street", "Summit", "Terrace", "Track", "Trail", "View Rd", "Way" };
