const CountryCode = @import("../../modules/location.zig").CountryCode;

pub const city_name = [_][]const u8{ "Aarau", "Adliswil", "Allschwil", "Arbon", "Baar", "Baden", "Basel", "Bellinzona", "Bern", "Biel/Bienne", "Binningen", "Brig-Glis", "Bulle", "Burgdorf", "Bülach", "Carouge", "Cham", "Chur", "Dietikon", "Dübendorf", "Einsiedeln", "Emmen", "Frauenfeld", "Freiburg", "Freienbach", "Genf", "Glarus Nord", "Gossau", "Grenchen", "Herisau", "Horgen", "Horw", "Illnau-Effretikon", "Kloten", "Kreuzlingen", "Kriens", "Köniz", "Küsnacht", "La Chaux-de-Fonds", "Lancy", "Langenthal", "Lausanne", "Liestal", "Locarno", "Lugano", "Luzern", "Lyss", "Martigny", "Meilen", "Mendrisio", "Meyrin", "Monthey", "Montreux", "Morges", "Muri bei Bern", "Muttenz", "Neuenburg", "Nyon", "Oftringen", "Olten", "Onex", "Opfikon", "Ostermundigen", "Pratteln", "Pully", "Rapperswil-Jona", "Regensdorf", "Reinach", "Renens", "Rheinfelden", "Richterswil", "Riehen", "Schaffhausen", "Schlieren", "Schwyz", "Siders", "Sitten", "Solothurn", "St. Gallen", "Steffisburg", "Stäfa", "Thalwil", "Thun", "Thônex", "Uster", "Val-de-Ruz", "Vernier", "Versoix", "Vevey", "Volketswil", "Wallisellen", "Wettingen", "Wetzikon", "Wil", "Winterthur", "Wohlen", "Wädenswil", "Yverdon-les-Bains", "Zug", "Zürich" };

pub const city_pattern = [_][]const u8{"{{location.city_name}}"};

pub const country_code = [_]CountryCode{ .{ .alpha2 = "CH", .alpha3 = "CHE", .numeric = "756" }, .{ .alpha2 = "DE", .alpha3 = "DEU", .numeric = "276" }, .{ .alpha2 = "AT", .alpha3 = "AUT", .numeric = "040" } };

pub const default_country = [_][]const u8{"Schweiz"};

pub const postcode = [_][]const u8{ "1###", "2###", "3###", "4###", "5###", "6###", "7###", "8###", "9###" };

pub const state = [_][]const u8{ "Aargau", "Appenzell Ausserrhoden", "Appenzell Innerrhoden", "Basel-Land", "Basel-Stadt", "Bern", "Freiburg", "Genf", "Glarus", "Graubünden", "Jura", "Luzern", "Neuenburg", "Nidwalden", "Obwalden", "St. Gallen", "Schaffhausen", "Schwyz", "Solothurn", "Tessin", "Thurgau", "Uri", "Waadt", "Wallis", "Zug", "Zürich" };

pub const state_abbr = [_][]const u8{ "AG", "AR", "AI", "BL", "BS", "BE", "FR", "GE", "GL", "GR", "JU", "LU", "NE", "NW", "OW", "SG", "SH", "SZ", "SO", "TI", "TG", "UR", "VD", "VS", "ZG", "ZH" };

pub const street_name = [_][]const u8{ "Amthausstrasse", "Augustinergasse", "Bahnhofstrasse", "Birkenweg", "Bierkellerweg", "Columbusstrasse", "Dorfstrasse", "Elefantenbach", "Endingerstrasse", "Glockengasse", "Hauptstrasse", "Hirschengraben", "Honiggasse", "Industriestrasse", "Katzenplatz", "Kirchweg", "Knoblauchweg", "Lindenhofweg", "Melonenstrasse", "Oberdorfstrasse", "Ödhus", "Ogimatte", "Rämistrasse", "Rennweg", "Rosenweg", "Schulhausstrasse", "Schulstrasse", "Sihlfeldstrasse", "Trittligasse", "Uraniastrasse", "Vorstadt" };

pub const street_pattern = [_][]const u8{"{{location.street_name}}"};
