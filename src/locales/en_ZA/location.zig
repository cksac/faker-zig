pub const city_name = [_][]const u8{ "Polokwane", "Johannesburg", "Pretoria", "Tshwane", "Durban", "Pietermaritzburg", "Mbombela", "Cape Town", "Stellenbosch", "Port Elizabeth", "East London", "Kimberley", "Rustenburg", "Bloemfontein" };

pub const city_pattern = [_][]const u8{"{{location.city_name}}"};

pub const default_country = [_][]const u8{ "South Africa", "The Republic of South Africa", "SA" };

pub const postcode = [_][]const u8{ "#####", "####" };

pub const state = [_][]const u8{ "Limpopo", "Gauteng", "Free State", "North West", "Northern Cape", "Western Cape", "KwaZulu-Natal", "Mpumalanga", "Eastern Cape" };

pub const street_pattern = [_][]const u8{ "{{person.firstName}} {{location.street_suffix}}", "{{person.lastName}} {{location.street_suffix}}" };
