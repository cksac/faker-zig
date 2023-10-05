pub const building_number = [_][]const u8{ "#####", "####", "###" };

pub const city_pattern = [_][]const u8{ "{{person.firstName}}{{location.city_suffix}}", "{{person.last_name}}{{location.city_suffix}}" };

pub const city_prefix = .{};

pub const city_suffix = [_][]const u8{ " do Descoberto", " de Nossa Senhora", " do Norte", " do Sul" };

pub const country = [_][]const u8{ "Afeganistão", "Albânia", "Algéria", "Samoa", "Andorra", "Angola", "Anguila", "Antigua and Barbada", "Argentina", "Armênia", "Aruba", "Austrália", "Áustria", "Azerbaijão", "Bahamas", "Barém", "Bangladesh", "Barbados", "Bélgica", "Belize", "Benin", "Bermuda", "Butão", "Bolívia", "Bôsnia", "Botsuana", "Ilha Bouvet", "Brasil", "Arquipélago de Chagos", "Ilhas Virgens", "Brunei", "Bulgária", "Burkina Faso", "Burundi", "Camboja", "Camarões", "Canadá", "Cabo Verde", "Ilhas Caiman", "República da África Central", "Chade", "Chile", "China", "Ilha do Natal", "Ilhas Cocos", "Colômbia", "Comores", "Congo", "Ilhas Cook", "Costa Rica", "Costa do Marfim", "Croácia", "Cuba", "Chipre", "República Tcheca", "Dinamarca", "Jibuti", "Dominica", "República Dominicana", "Equador", "Egito", "El Salvador", "Guiné Equatorial", "Eritreia", "Estônia", "Etiópia", "Ilhas Faroe", "Malvinas", "Fiji", "Finlândia", "França", "Guiné Francesa", "Polinésia Francesa", "Gabão", "Gâmbia", "Georgia", "Alemanha", "Gana", "Gibraltar", "Grécia", "Groelândia", "Granada", "Guadalupe", "Guatemala", "Guernesey", "Guiné", "Guiné-Bissau", "Guiana", "Haiti", "Ilhas Heard e McDonald", "Vaticano", "Honduras", "Hong Kong", "Hungria", "Islândia", "Índia", "Indonésia", "Irã", "Iraque", "Irlanda", "Ilha de Man", "Israel", "Itália", "Jamaica", "Japão", "Jersey", "Jordânia", "Cazaquistão", "Quênia", "Quiribati", "Coreia do Norte", "Coreia do Sul", "Kuwait", "Quirguistão", "Laos", "Latvia", "Líbano", "Lesoto", "Libéria", "Líbia", "Liechtenstein", "Lituânia", "Luxemburgo", "Macao", "Macedônia", "Madagascar", "Malawi", "Malásia", "Maldives", "Mali", "Malta", "Ilhas Marshall", "Martinica", "Mauritânia", "Maurícia", "Maiote", "México", "Micronésia", "Moldávia", "Mônaco", "Mongólia", "Montenegro", "Montserrat", "Marrocos", "Moçambique", "Myanmar", "Namibia", "Nauru", "Nepal", "Antilhas Holandesas", "Países Baixos", "Nova Caledonia", "Nova Zelândia", "Nicarágua", "Nigéria", "Niue", "Ilha Norfolk", "Marianas Setentrionais", "Noruega", "Omã", "Paquistão", "Palau", "Território da Palestina", "Panamá", "Papua-Nova Guiné", "Paraguai", "Peru", "Filipinas", "Polônia", "Portugal", "Porto Rico", "Qatar", "Romênia", "Rússia", "Ruanda", "São Bartolomeu", "Santa Helena", "Santa Lúcia", "São Martinho", "São Pedro e Miquelão", "São Vicente e Granadinas", "San Marino", "Sao Tomé e Príncipe", "Arábia Saudita", "Senegal", "Sérvia", "Seicheles", "Serra Leoa", "Singapura", "Eslováquia", "Eslovênia", "Ilhas Salomão", "Somália", "África do Sul", "Ilhas Geórgia do Sul e Sandwich do Sul", "Espanha", "Sri Lanka", "Sudão", "Suriname", "Ilhas Svalbard & Jan Mayen", "Suazilândia", "Suécia", "Suíça", "Síria", "Taiwan", "Tajiquistão", "Tanzânia", "Tailândia", "Timor-Leste", "Togo", "Toquelau", "Tonga", "Trinidad e Tobago", "Tunísia", "Turquia", "Turcomenistão", "Turcas e Caicos", "Tuvalu", "Uganda", "Ucrânia", "Emirados Árabes Unidos", "Reino Unido", "Estados Unidos da América", "Estados Unidos das Ilhas Virgens", "Uruguai", "Uzbequistão", "Vanuatu", "Venezuela", "Vietnã", "Wallis e Futuna", "Iêmen", "Zâmbia", "Zimbábue" };

pub const default_country = [_][]const u8{"Brasil"};

pub const postcode = [_][]const u8{"#####-###"};

pub const secondary_address = [_][]const u8{ "Apto. ###", "Sobrado ##", "Casa #", "Lote ##", "Quadra ##" };

pub const state = [_][]const u8{ "Acre", "Alagoas", "Amapá", "Amazonas", "Bahia", "Ceará", "Distrito Federal", "Espírito Santo", "Goiás", "Maranhão", "Mato Grosso", "Mato Grosso do Sul", "Minas Gerais", "Pará", "Paraíba", "Paraná", "Pernambuco", "Piauí", "Rio de Janeiro", "Rio Grande do Norte", "Rio Grande do Sul", "Rondônia", "Roraima", "Santa Catarina", "São Paulo", "Sergipe", "Tocantins" };

pub const state_abbr = [_][]const u8{ "AC", "AL", "AP", "AM", "BA", "CE", "DF", "ES", "GO", "MA", "MT", "MS", "MG", "PA", "PB", "PR", "PE", "PI", "RJ", "RN", "RS", "RO", "RR", "SC", "SP", "SE", "TO" };

pub const street_pattern = [_][]const u8{ "{{person.firstName}} {{location.street_suffix}}", "{{person.lastName}} {{location.street_suffix}}" };

pub const street_suffix = [_][]const u8{ "Rua", "Avenida", "Travessa", "Alameda", "Marginal", "Rodovia" };
