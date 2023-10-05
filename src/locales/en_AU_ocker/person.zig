const NamePattern = @import("../../modules/person.zig").NamePattern;

pub const first_name = [_][]const u8{ "Charlotte", "Ava", "Chloe", "Emily", "Olivia", "Zoe", "Lily", "Sophie", "Amelia", "Sofia", "Ella", "Isabella", "Ruby", "Sienna", "Mia+3", "Grace", "Emma", "Ivy", "Layla", "Abigail", "Isla", "Hannah", "Zara", "Lucy", "Evie", "Annabelle", "Madison", "Alice", "Georgia", "Maya", "Madeline", "Audrey", "Scarlett", "Isabelle", "Chelsea", "Mila", "Holly", "Indiana", "Poppy", "Harper", "Sarah", "Alyssa", "Jasmine", "Imogen", "Hayley", "Pheobe", "Eva", "Evelyn", "Mackenzie", "Ayla", "Oliver", "Jack", "Jackson", "William", "Ethan", "Charlie", "Lucas", "Cooper", "Lachlan", "Noah", "Liam", "Alexander", "Max", "Isaac", "Thomas", "Xavier", "Oscar", "Benjamin", "Aiden", "Mason", "Samuel", "James", "Levi", "Riley", "Harrison", "Ryan", "Henry", "Jacob", "Joshua", "Leo", "Zach", "Harry", "Hunter", "Flynn", "Archie", "Tyler", "Elijah", "Hayden", "Jayden", "Blake", "Archer", "Ashton", "Sebastian", "Zachery", "Lincoln", "Mitchell", "Luca", "Nathan", "Kai", "Connor", "Tom", "Nigel", "Matt", "Sean" };

pub const last_name = [_][]const u8{ "Smith", "Jones", "Williams", "Brown", "Wilson", "Taylor", "Morton", "White", "Martin", "Anderson", "Thompson", "Nguyen", "Thomas", "Walker", "Harris", "Lee", "Ryan", "Robinson", "Kelly", "King", "Rausch", "Ridge", "Connolly", "LeQuesne" };

pub const last_name_pattern = [_]NamePattern{ .{ .value = "{{person.last_name}}", .weight = 95 }, .{ .value = "{{person.last_name}}-{{person.last_name}}", .weight = 5 } };

pub const ocker_first_name = [_][]const u8{ "Bazza", "Bluey", "Davo", "Johno", "Shano", "Shazza" };
