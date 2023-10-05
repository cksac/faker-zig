pub const building_number = [_][]const u8{ "###", "##", "#" };

pub const city_name = [_][]const u8{ "Espoo", "Helsinki", "Hyvinkää", "Iisalmi", "Joensuu", "Jyväskylä", "Kokkola", "Kuopio", "Lahti", "Oulu", "Pori", "Porvoo", "Raisio", "Rovaniemi", "Sastamala", "Tampere", "Turku", "Vaasa", "Valkeakoski", "Vantaa" };

pub const city_pattern = [_][]const u8{"{{location.city_name}}"};

pub const postcode = [_][]const u8{"#####"};

pub const secondary_address = [_][]const u8{ "A", "B", "C", "A #", "A ##", "B #", "B ##", "C #", "C ##" };

pub const state = [_][]const u8{ "Ahvenanmaa", "Etelä-Karjala", "Etelä-Pohjanmaa", "Etelä-Savo", "Kainuu", "Kanta-Häme", "Keski-Pohjanmaa", "Keski-Suomi", "Kymenlaakso", "Lappi", "Päijät-Häme", "Pirkanmaa", "Pohjanmaa", "Pohjois-Karjala", "Pohjois-Pohjanmaa", "Pohjois-Savo", "Satakunta", "Uusimaa", "Varsinais-Suomi" };

pub const street_address = .{ .normal = "{{location.street}} {{location.buildingNumber}}", .full = "{{location.street}} {{location.buildingNumber}} {{location.secondaryAddress}}" };

pub const street_pattern = [_][]const u8{ "{{person.first_name}}{{location.street_suffix}}", "{{person.last_name}}{{location.street_suffix}}" };

pub const street_suffix = [_][]const u8{ "katu", "tie", "kuja", "polku", "kaari", "linja", "raitti", "rinne", "penger", "ranta", "väylä" };
