pub const building_number = [_][]const u8{ "###", "##", "#" };

pub const city_pattern = [_][]const u8{"{{location.city_prefix}}{{location.city_suffix}}"};

pub const city_prefix = [_][]const u8{ "Söder", "Norr", "Väst", "Öster", "Aling", "Ar", "Av", "Bo", "Br", "Bå", "Ek", "En", "Esk", "Fal", "Gäv", "Göte", "Ha", "Helsing", "Karl", "Krist", "Kram", "Kung", "Kö", "Lyck", "Ny" };

pub const city_suffix = [_][]const u8{ "stad", "land", "sås", "ås", "holm", "tuna", "sta", "berg", "löv", "borg", "mora", "hamn", "fors", "köping", "by", "hult", "torp", "fred", "vik" };

pub const common_street_suffix = [_][]const u8{ "s Väg", "s Gata" };

pub const country = [_][]const u8{ "Ryssland", "Kanada", "Kina", "USA", "Brasilien", "Australien", "Indien", "Argentina", "Kazakstan", "Algeriet", "DR Kongo", "Danmark", "Färöarna", "Grönland", "Saudiarabien", "Mexiko", "Indonesien", "Sudan", "Libyen", "Iran", "Mongoliet", "Peru", "Tchad", "Niger", "Angola", "Mali", "Sydafrika", "Colombia", "Etiopien", "Bolivia", "Mauretanien", "Egypten", "Tanzania", "Nigeria", "Venezuela", "Namibia", "Pakistan", "Moçambique", "Turkiet", "Chile", "Zambia", "Marocko", "Västsahara", "Burma", "Afghanistan", "Somalia", "Centralafrikanska republiken", "Sydsudan", "Ukraina", "Botswana", "Madagaskar", "Kenya", "Frankrike", "Franska Guyana", "Jemen", "Thailand", "Spanien", "Turkmenistan", "Kamerun", "Papua Nya Guinea", "Sverige", "Uzbekistan", "Irak", "Paraguay", "Zimbabwe", "Japan", "Tyskland", "Kongo", "Finland", "Malaysia", "Vietnam", "Norge", "Svalbard", "Jan Mayen", "Elfenbenskusten", "Polen", "Italien", "Filippinerna", "Ecuador", "Burkina Faso", "Nya Zeeland", "Gabon", "Guinea", "Storbritannien", "Ghana", "Rumänien", "Laos", "Uganda", "Guyana", "Oman", "Vitryssland", "Kirgizistan", "Senegal", "Syrien", "Kambodja", "Uruguay", "Tunisien", "Surinam", "Nepal", "Bangladesh", "Tadzjikistan", "Grekland", "Nicaragua", "Eritrea", "Nordkorea", "Malawi", "Benin", "Honduras", "Liberia", "Bulgarien", "Kuba", "Guatemala", "Island", "Sydkorea", "Ungern", "Portugal", "Jordanien", "Serbien", "Azerbajdzjan", "Österrike", "Förenade Arabemiraten", "Tjeckien", "Panama", "Sierra Leone", "Irland", "Georgien", "Sri Lanka", "Litauen", "Lettland", "Togo", "Kroatien", "Bosnien och Hercegovina", "Costa Rica", "Slovakien", "Dominikanska republiken", "Bhutan", "Estland", "Nederländerna", "Schweiz", "Guinea-Bissau", "Taiwan", "Moldavien", "Belgien", "Lesotho", "Armenien", "Albanien", "Salomonöarna", "Ekvatorialguinea", "Burundi", "Haiti", "Rwanda", "Makedonien", "Djibouti", "Belize", "Israel", "El Salvador", "Slovenien", "Fiji", "Kuwait", "Swaziland", "Timor-Leste", "Montenegro", "Bahamas", "Vanuatu", "Qatar", "Gambia", "Jamaica", "Kosovo", "Libanon", "Cypern", "Brunei", "Trinidad och Tobago", "Kap Verde", "Samoa", "Luxemburg", "Komorerna", "Mauritius", "São Tomé och Príncipe", "Kiribati", "Dominica", "Tonga", "Mikronesiens federerade stater", "Singapore", "Bahrain", "Saint Lucia", "Andorra", "Palau", "Seychellerna", "Antigua och Barbuda", "Barbados", "Saint Vincent och Grenadinerna", "Grenada", "Malta", "Maldiverna", "Saint Kitts och Nevis", "Marshallöarna", "Liechtenstein", "San Marino", "Tuvalu", "Nauru", "Monaco", "Vatikanstaten" };

pub const default_country = [_][]const u8{"Sverige"};

pub const postcode = [_][]const u8{"#####"};

pub const secondary_address = [_][]const u8{ "Lgh. ###", "Hus ###" };

pub const state = [_][]const u8{ "Blekinge", "Dalarna", "Gotland", "Gävleborg", "Göteborg", "Halland", "Jämtland", "Jönköping", "Kalmar", "Kronoberg", "Norrbotten", "Skaraborg", "Skåne", "Stockholm", "Södermanland", "Uppsala", "Värmland", "Västerbotten", "Västernorrland", "Västmanland", "Älvsborg", "Örebro", "Östergötland" };

pub const street_address = .{ .normal = "{{location.street}} {{location.buildingNumber}}", .full = "{{location.street}} {{location.buildingNumber}} {{location.secondaryAddress}}" };

pub const street_name = [_][]const u8{ "Björk", "Järnvägs", "Ring", "Skol", "Skogs", "Ny", "Gran", "Idrotts", "Stor", "Kyrk", "Industri", "Park", "Strand", "Trädgård", "Ängs", "Kyrko", "Villa", "Ek", "Kvarn", "Stations", "Back", "Furu", "Gen", "Fabriks", "Åker", "Bäck", "Asp" };

pub const street_pattern = [_][]const u8{ "{{location.street_name}}{{location.street_suffix}}", "{{location.street_prefix}} {{location.street_name}}{{location.street_suffix}}", "{{person.first_name}}{{location.common_street_suffix}}", "{{person.last_name}}{{location.common_street_suffix}}" };

pub const street_prefix = [_][]const u8{ "Västra", "Östra", "Norra", "Södra", "Övre", "Undre" };

pub const street_suffix = [_][]const u8{ "vägen", "gatan", "gränden", "gärdet", "allén" };
