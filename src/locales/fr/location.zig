pub const building_number = [_][]const u8{ "####", "###", "##", "#" };

pub const city_name = [_][]const u8{ "Aix-en-Provence", "Ajaccio", "Amiens", "Angers", "Antibes", "Antony", "Argenteuil", "Asnières-sur-Seine", "Aubervilliers", "Aulnay-sous-Bois", "Avignon", "Beauvais", "Besançon", "Béziers", "Bordeaux", "Boulogne-Billancourt", "Bourges", "Brest", "Caen", "Calais", "Cannes", "Cayenne", "Cergy", "Chambéry", "Champigny-sur-Marne", "Cholet", "Clermont-Ferrand", "Clichy", "Colmar", "Colombes", "Courbevoie", "Créteil", "Dijon", "Drancy", "Dunkerque", "Fort-de-France", "Grenoble", "Hyères", "Issy-les-Moulineaux", "Ivry-sur-Seine", "La Rochelle", "La Seyne-sur-Mer", "Le Havre", "Le Mans", "Le Tampon", "Les Abymes", "Levallois-Perret", "Lille", "Limoges", "Lorient", "Lyon", "Marseille", "Mérignac", "Metz", "Montauban", "Montpellier", "Montreuil", "Mulhouse", "Nancy", "Nanterre", "Nantes", "Neuilly-sur-Seine", "Nice", "Nîmes", "Niort", "Noisy-le-Grand", "Orléans", "Paris", "Pau", "Perpignan", "Pessac", "Poitiers", "Quimper", "Reims", "Rennes", "Roubaix", "Rouen", "Rueil-Malmaison", "Saint-Denis", "Saint-Étienne", "Saint-Maur-des-Fossés", "Saint-Nazaire", "Saint-Paul", "Saint-Pierre", "Saint-Quentin", "Sarcelles", "Strasbourg", "Toulon", "Toulouse", "Tourcoing", "Tours", "Troyes", "Valence", "Vénissieux", "Versailles", "Villejuif", "Villeneuve-d'Ascq", "Villeurbanne", "Vitry-sur-Seine" };

pub const city_pattern = [_][]const u8{"{{location.city_name}}"};

pub const country = [_][]const u8{ "Afghanistan", "Albanie", "Algérie", "Andorre", "Angola", "Antigua-et-Barbuda", "Argentine", "Arménie", "Australie", "Autriche", "Azerbaïdjan", "Bahamas", "Bahreïn", "Bangladesh", "Barbade", "Biélorussie", "Belgique", "Belize", "Bénin", "Bhoutan", "Bolivie", "Bosnie-Herzégovine", "Botswana", "Brésil", "Brunei", "Bulgarie", "Burkina Faso", "Burundi", "Cambodge", "Cameroun", "Canada", "Cap-Vert", "République centrafricaine", "Tchad", "Chili", "Chine", "Colombie", "Comores", "Costa Rica", "Côte d’Ivoire", "Croatie", "Cuba", "Chypre", "République tchèque", "République démocratique du Congo", "Danemark", "Djibouti", "Dominique", "République dominicaine", "Timor oriental", "Équateur", "Égypte", "Salvador", "Guinée équatoriale", "Érythrée", "Estonie", "Eswatini", "Éthiopie", "Fidji", "Finlande", "France", "Gabon", "Gambie", "Géorgie", "Allemagne", "Ghana", "Grèce", "Grenade", "Guatemala", "Guinée", "Guinée-Bissau", "Guyane", "Haïti", "Honduras", "Hongrie", "Islande", "Inde", "Indonésie", "Iran", "Irak", "Irlande", "Israël", "Italie", "Jamaïque", "Japon", "Jordan", "Kazakhstan", "Kenya", "Kiribati", "Koweït", "Kirghizistan", "Laos", "Lettonie", "Liban", "Lesotho", "Liberia", "Libye", "Liechtenstein", "Lituanie", "Luxembourg", "Madagascar", "Malawi", "Malaisie", "Maldives", "Mali", "Malte", "Îles Marshall", "Mauritanie", "Maurice", "Mexique", "Micronésie", "Moldavie", "Monaco", "Mongolie", "Monténégro", "Maroc", "Mozambique", "Birmanie", "Namibie", "Nauru", "Népal", "Pays-Bas", "Nouvelle-Zélande", "Nicaragua", "Niger", "Nigeria", "Corée du Nord", "Norvège", "Oman", "Pakistan", "Palau", "Panama", "Papouasie-Nouvelle-Guinée", "Paraguay", "Pérou", "Philippines", "Pologne", "Portugal", "Qatar", "République du Congo", "Macédoine", "Roumanie", "Russie", "Rwanda", "Saint-Christophe-et-Niévès", "Sainte-Lucie", "Saint-Vincent-et-les-Grenadines", "Samoa", "Saint-Marin", "São Tomé-et-Principe", "Arabie saoudite", "Sénégal", "Serbie", "Seychelles", "Sierra Leone", "Singapour", "Slovaquie", "Slovénie", "Îles Salomon", "Somalie", "Afrique du Sud", "Corée du Sud", "Soudan du Sud", "Espagne", "Sri Lanka", "Soudan", "Suriname", "Suède", "Suisse", "Syrie", "Tadjikistan", "Tanzanie", "Thaïlande", "Togo", "Tonga", "Trinité-et-Tobago", "Tunisie", "Turquie", "Turkménistan", "Tuvalu", "Ouganda", "Ukraine", "Émirats arabes unis", "Royaume-Uni", "États-Unis", "Uruguay", "Ouzbékistan", "Vanuatu", "Venezuela", "Viêt Nam", "Yémen", "Zambie", "Zimbabwe" };

pub const default_country = [_][]const u8{"France"};

pub const direction = [_][]const u8{ "Nord", "Est", "Sud", "Ouest", "Nord-est", "Nord-ouest", "Sud-est", "Sud-ouest" };

pub const postcode = [_][]const u8{"#####"};

pub const secondary_address = [_][]const u8{ "Apt. ###", "# étage" };

pub const state = [_][]const u8{ "Alsace", "Aquitaine", "Auvergne", "Basse-Normandie", "Bourgogne", "Bretagne", "Centre", "Champagne-Ardenne", "Corse", "Franche-Comté", "Haute-Normandie", "Île-de-France", "Languedoc-Roussillon", "Limousin", "Lorraine", "Midi-Pyrénées", "Nord-Pas-de-Calais", "Pays de la Loire", "Picardie", "Poitou-Charentes", "Provence-Alpes-Côte d'Azur", "Rhône-Alpes" };

pub const street_address = .{ .normal = "{{location.buildingNumber}} {{location.street}}", .full = "{{location.buildingNumber}} {{location.street}} {{location.secondaryAddress}}" };

pub const street_pattern = [_][]const u8{"{{location.street_prefix}} {{location.street_suffix}}"};

pub const street_prefix = [_][]const u8{ "Allée", "Voie", "Rue", "Avenue", "Boulevard", "Quai", "Passage", "Impasse", "Place" };

pub const street_suffix = [_][]const u8{ "de l'Abbaye", "Adolphe Mille", "d'Alésia", "d'Argenteuil", "d'Assas", "du Bac", "de Paris", "La Boétie", "Bonaparte", "de la Bûcherie", "de Caumartin", "Charlemagne", "du Chat-qui-Pêche", "de la Chaussée-d'Antin", "du Dahomey", "Dauphine", "Delesseux", "du Faubourg Saint-Honoré", "du Faubourg-Saint-Denis", "de la Ferronnerie", "des Francs-Bourgeois", "des Grands Augustins", "de la Harpe", "du Havre", "de la Huchette", "Joubert", "Laffitte", "Lepic", "des Lombards", "Marcadet", "Molière", "Monsieur-le-Prince", "de Montmorency", "Montorgueil", "Mouffetard", "de Nesle", "Oberkampf", "de l'Odéon", "d'Orsel", "de la Paix", "des Panoramas", "Pastourelle", "Pierre Charron", "de la Pompe", "de Presbourg", "de Provence", "de Richelieu", "de Rivoli", "des Rosiers", "Royale", "d'Abbeville", "Saint-Honoré", "Saint-Bernard", "Saint-Denis", "Saint-Dominique", "Saint-Jacques", "Saint-Séverin", "des Saussaies", "de Seine", "de Solférino", "Du Sommerard", "de Tilsitt", "Vaneau", "de Vaugirard", "de la Victoire", "Zadkine" };