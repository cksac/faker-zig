pub const building_number = [_][]const u8{ "#", "##" };

pub const city_name = [_][]const u8{ "Fet", "Gjes", "Høy", "Inn", "Fager", "Lille", "Lo", "Mal", "Nord", "Nær", "Sand", "Sme", "Stav", "Stor", "Tand", "Ut", "Vest" };

pub const city_pattern = [_][]const u8{"{{location.city_name}}{{location.city_suffix}}"};

pub const city_suffix = [_][]const u8{ "berg", "borg", "by", "bø", "dal", "eid", "fjell", "fjord", "foss", "grunn", "hamn", "havn", "helle", "mark", "nes", "odden", "sand", "sjøen", "stad", "strand", "strøm", "sund", "vik", "vær", "våg", "ø", "øy", "ås" };

pub const common_street_suffix = [_][]const u8{ "sgate", "svei", "s Gate", "s Vei", "gata", "veien" };

pub const default_country = [_][]const u8{"Norge"};

pub const postcode = [_][]const u8{ "####", "0###" };

pub const secondary_address = [_][]const u8{ "Leil. ###", "Oppgang A", "Oppgang B" };

pub const state = [_][]const u8{""};

pub const street_address = .{ .normal = "{{location.street}} {{location.buildingNumber}}", .full = "{{location.street}} {{location.buildingNumber}} {{location.secondaryAddress}}" };

pub const street_name = [_][]const u8{ "Eike", "Bjørke", "Gran", "Vass", "Furu", "Litj", "Lille", "Høy", "Fosse", "Elve", "Ku", "Konvall", "Soldugg", "Hestemyr", "Granitt", "Hegge", "Rogne", "Fiol", "Sol", "Ting", "Malm", "Klokker", "Preste", "Dam", "Geiterygg", "Bekke", "Berg", "Kirke", "Kors", "Bru", "Blåveis", "Torg", "Sjø" };

pub const street_pattern = [_][]const u8{ "{{location.street_name}}{{location.street_suffix}}", "{{location.street_prefix}} {{location.street_name}}{{location.street_suffix}}", "{{person.first_name}}{{location.common_street_suffix}}", "{{person.last_name}}{{location.common_street_suffix}}" };

pub const street_prefix = [_][]const u8{ "Øvre", "Nedre", "Søndre", "Gamle", "Østre", "Vestre" };

pub const street_suffix = [_][]const u8{ "alléen", "bakken", "berget", "bråten", "eggen", "engen", "ekra", "faret", "flata", "gata", "gjerdet", "grenda", "gropa", "hagen", "haugen", "havna", "holtet", "høgda", "jordet", "kollen", "kroken", "lia", "lunden", "lyngen", "løkka", "marka", "moen", "myra", "plassen", "ringen", "roa", "røa", "skogen", "skrenten", "spranget", "stien", "stranda", "stubben", "stykket", "svingen", "tjernet", "toppen", "tunet", "vollen", "vika", "åsen" };
