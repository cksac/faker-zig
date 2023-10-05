pub const city_name = [_][]const u8{ "Polokwane", "Johannesburg", "Pretoria", "Tshwane", "Durban", "Pietermaritzburg", "Nelspruit", "Kaapstad", "Stellenbosch", "Port Elizabeth", "Oos-Londen", "Kimberley", "Rustenburg", "Bloemfontein" };

pub const city_pattern = [_][]const u8{"{{location.city_name}}"};

pub const default_country = [_][]const u8{"South Africa"};

pub const postcode = [_][]const u8{ "#####", "####" };

pub const state = [_][]const u8{ "Gauteng", "KwaZulu-Natal", "Limpopo", "Mpumalanga", "Noord-Kaap", "Noordwes", "Oos-Kaap", "Vrystaat", "Wes-Kaap" };

pub const street_pattern = [_][]const u8{ "{{person.firstName}} {{location.street_suffix}}", "{{person.lastName}} {{location.street_suffix}}" };
