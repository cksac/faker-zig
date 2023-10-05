const NamePattern = @import("../../modules/person.zig").NamePattern;

pub const female_first_name = [_][]const u8{ "Emma", "Sara", "Thea", "Ida", "Julie", "Nora", "Emilie", "Ingrid", "Hanna", "Maria", "Sofie", "Anna", "Malin", "Amalie", "Vilde", "Frida", "Andrea", "Tuva", "Victoria", "Mia", "Karoline", "Mathilde", "Martine", "Linnea", "Marte", "Hedda", "Marie", "Helene", "Silje", "Leah", "Maja", "Elise", "Oda", "Kristine", "Aurora", "Kaja", "Camilla", "Mari", "Maren", "Mina", "Selma", "Jenny", "Celine", "Eline", "Sunniva", "Natalie", "Tiril", "Synne", "Sandra", "Madeleine" };

pub const female_prefix = [_][]const u8{ "Dr.", "Prof." };

pub const first_name = [_][]const u8{ "Emma", "Sara", "Thea", "Ida", "Julie", "Nora", "Emilie", "Ingrid", "Hanna", "Maria", "Sofie", "Anna", "Malin", "Amalie", "Vilde", "Frida", "Andrea", "Tuva", "Victoria", "Mia", "Karoline", "Mathilde", "Martine", "Linnea", "Marte", "Hedda", "Marie", "Helene", "Silje", "Leah", "Maja", "Elise", "Oda", "Kristine", "Aurora", "Kaja", "Camilla", "Mari", "Maren", "Mina", "Selma", "Jenny", "Celine", "Eline", "Sunniva", "Natalie", "Tiril", "Synne", "Sandra", "Madeleine", "Markus", "Mathias", "Kristian", "Jonas", "Andreas", "Alexander", "Martin", "Sander", "Daniel", "Magnus", "Henrik", "Tobias", "Kristoffer", "Emil", "Adrian", "Sebastian", "Marius", "Elias", "Fredrik", "Thomas", "Sondre", "Benjamin", "Jakob", "Oliver", "Lucas", "Oskar", "Nikolai", "Filip", "Mats", "William", "Erik", "Simen", "Ole", "Eirik", "Isak", "Kasper", "Noah", "Lars", "Joakim", "Johannes", "Håkon", "Sindre", "Jørgen", "Herman", "Anders", "Jonathan", "Even", "Theodor", "Mikkel", "Aksel" };

pub const last_name = [_][]const u8{ "Johansen", "Hansen", "Andersen", "Kristiansen", "Larsen", "Olsen", "Solberg", "Andresen", "Pedersen", "Nilsen", "Berg", "Halvorsen", "Karlsen", "Svendsen", "Jensen", "Haugen", "Martinsen", "Eriksen", "Sørensen", "Johnsen", "Myhrer", "Johannessen", "Nielsen", "Hagen", "Pettersen", "Bakke", "Skuterud", "Løken", "Gundersen", "Strand", "Jørgensen", "Kvarme", "Røed", "Sæther", "Stensrud", "Moe", "Kristoffersen", "Jakobsen", "Holm", "Aas", "Lie", "Moen", "Andreassen", "Vedvik", "Nguyen", "Jacobsen", "Torgersen", "Ruud", "Krogh", "Christiansen", "Bjerke", "Aalerud", "Borge", "Sørlie", "Berge", "Østli", "Ødegård", "Torp", "Henriksen", "Haukelidsæter", "Fjeld", "Danielsen", "Aasen", "Fredriksen", "Dahl", "Berntsen", "Arnesen", "Wold", "Thoresen", "Solheim", "Skoglund", "Bakken", "Amundsen", "Solli", "Smogeli", "Kristensen", "Glosli", "Fossum", "Evensen", "Eide", "Carlsen", "Østby", "Vegge", "Tangen", "Smedsrud", "Olstad", "Lunde", "Kleven", "Huseby", "Bjørnstad", "Ryan", "Rasmussen", "Nygård", "Nordskaug", "Nordby", "Mathisen", "Hopland", "Gran", "Finstad", "Edvardsen" };

pub const last_name_pattern = [_]NamePattern{ .{ .value = "{{person.last_name}}", .weight = 8 }, .{ .value = "{{person.last_name}} {{person.last_name}}", .weight = 2 } };

pub const male_first_name = [_][]const u8{ "Markus", "Mathias", "Kristian", "Jonas", "Andreas", "Alexander", "Martin", "Sander", "Daniel", "Magnus", "Henrik", "Tobias", "Kristoffer", "Emil", "Adrian", "Sebastian", "Marius", "Elias", "Fredrik", "Thomas", "Sondre", "Benjamin", "Jakob", "Oliver", "Lucas", "Oskar", "Nikolai", "Filip", "Mats", "William", "Erik", "Simen", "Ole", "Eirik", "Isak", "Kasper", "Noah", "Lars", "Joakim", "Johannes", "Håkon", "Sindre", "Jørgen", "Herman", "Anders", "Jonathan", "Even", "Theodor", "Mikkel", "Aksel" };

pub const male_prefix = [_][]const u8{ "Dr.", "Prof." };

pub const name = [_]NamePattern{ .{ .value = "{{person.prefix}} {{person.firstName}} {{person.lastName}}", .weight = 1 }, .{ .value = "{{person.firstName}} {{person.lastName}} {{person.suffix}}", .weight = 1 }, .{ .value = "{{person.firstName}} {{person.lastName}}", .weight = 9 } };

pub const prefix = [_][]const u8{ "Dr.", "Prof." };

pub const suffix = [_][]const u8{ "Jr.", "Sr.", "I", "II", "III", "IV", "V" };
