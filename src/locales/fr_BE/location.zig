pub const building_number = [_][]const u8{ "#", "##", "###", "# bis", "## bis", "### bis", "###a", "###b", "###c", "###/2" };

pub const city_pattern = [_][]const u8{ "{{location.city_prefix}}", "{{location.city_prefix}}{{location.city_suffix}}" };

pub const city_prefix = [_][]const u8{ "Amblève", "Bullange", "Burg-Reuland", "Butgenbach", "Eupen", "La Calamine", "Lontzen", "Raeren", "Saint-Vith", "Aiseau-Presles", "Amay", "Andenne", "Anderlues", "Anhée", "Ans", "Anthisnes", "Antoing", "Arlon", "Assesse", "Ath", "Attert", "Aubange", "Aubel", "Awans", "Aywaille", "Baelen", "Bassenge", "Bastogne", "Beaumont", "Beauraing", "Beauvechain", "Beloeil", "Berloz", "Bernissart", "Bertogne", "Bertrix", "Beyne-Heusay", "Bièvre", "Binche", "Blégny", "Bouillon", "Boussu", "Braine-l'Alleud", "Braine-le-Château", "Braine-le-Comte", "Braives", "Brugelette", "Brunehaut", "Burdinne", "Celles", "Cerfontaine", "Chapelle-lez-Herlaimont", "Charleroi", "Chastre", "Châtelet", "Chaudfontaine", "Chaumont-Gistoux", "Chièvres", "Chimay", "Chiny", "Ciney", "Clavier", "Colfontaine", "Comblain-au-Pont", "Comines-Warneton", "Courcelles", "Court-Saint-Etienne", "Couvin", "Crisnée", "Dalhem", "Daverdisse", "Dinant", "Dison", "Doische", "Donceel", "Dour", "Durbuy", "Ecaussinnes", "Eghezée", "Ellezelles", "Enghien", "Engis", "Erezée", "Erquelinnes", "Esneux", "Estaimpuis", "Estinnes", "Etalle", "Faimes", "Farciennes", "Fauvillers", "Fernelmont", "Ferrières", "Fexhe-le-Haut-Clocher", "Flémalle", "Fléron", "Fleurus", "Flobecq", "Floreffe", "Florennes", "Florenville", "Fontaine-l'Evêque", "Fosses-la-Ville", "Frameries", "Frasnes-lez-Anvaing", "Froidchapelle", "Gedinne", "Geer", "Gembloux", "Genappe", "Gerpinnes", "Gesves", "Gouvy", "Grâce-Hollogne", "Grez-Doiceau", "Habay", "Hamoir", "Hamois", "Ham-sur-Heure-Nalinnes", "Hannut", "Hastière", "Havelange", "Hélécine", "Hensies", "Herbeumont", "Héron", "Herstal", "Herve", "Honnelles", "Hotton", "Houffalize", "Houyet", "Huy", "Incourt", "Ittre", "Jalhay", "Jemeppe-sur-Sambre", "Jodoigne", "Juprelle", "Jurbise", "La Bruyère", "La Hulpe", "La Louvière", "La Roche-en-Ardenne", "Lasne", "Le Roeulx", "Léglise", "Lens", "Les Bons Villers", "Lessines", "Leuze-en-Hainaut", "Libin", "Libramont-Chevigny", "Liège", "Lierneux", "Limbourg", "Lincent", "Lobbes", "Malmedy", "Manage", "Manhay", "Marche-en-Famenne", "Marchin", "Martelange", "Meix-devant-Virton", "Merbes-le-Château", "Messancy", "Mettet", "Modave", "Momignies", "Mons", "Mont-de-l'Enclus", "Montigny-le-Tilleul", "Mont-Saint-Guibert", "Morlanwelz", "Mouscron", "Musson", "Namur", "Nandrin", "Nassogne", "Neufchâteau", "Neupré", "Nivelles", "Ohey", "Olne", "Onhaye", "Oreye", "Orp-Jauche", "Ottignies-Louvain-la-Neuve", "Ouffet", "Oupeye", "Paliseul", "Pecq", "Pepinster", "Péruwelz", "Perwez", "Philippeville", "Plombières", "Pont-à-celles", "Profondeville", "Quaregnon", "Quévy", "Quiévrain", "Ramillies", "Rebecq", "Remicourt", "Rendeux", "Rixensart", "Rochefort", "Rouvroy", "Rumes", "Sainte-Ode", "Saint-Georges-sur-Meuse", "Saint-Ghislain", "Saint-Hubert", "Saint-Léger", "Saint-Nicolas", "Sambreville", "Seneffe", "Seraing", "Silly", "Sivry-Rance", "Soignies", "Sombreffe", "Somme-Leuze", "Soumagne", "Spa", "Sprimont", "Stavelot", "Stoumont", "Tellin", "Tenneville", "Theux", "Thimister-Clermont", "Thuin", "Tinlot", "Tintigny", "Tournai", "Trois-Ponts", "Trooz", "Tubize", "Vaux-sur-Sûre", "Verlaine", "Verviers", "Vielsalm", "Villers-la-Ville", "Villers-le-Bouillet", "Viroinval", "Virton", "Visé", "Vresse-sur-Semois", "Waimes", "Walcourt", "Walhain", "Wanze", "Waremme", "Wasseiges", "Waterloo", "Wavre", "Welkenraedt", "Wellin", "Yvoir" };

pub const city_suffix = [_][]const u8{ "centre", "plage", "Sud", "Nord" };

pub const default_country = [_][]const u8{"Belgique"};

pub const postcode = [_][]const u8{"####"};

pub const state = [_][]const u8{ "Anvers", "Limbourg", "Flandre occidentale", "Flandre orientale", "Hainaut", "Liège", "Luxembourg", "Namur", "Brabant flamand", "Brabant wallon" };

pub const state_abbr = [_][]const u8{ "VAN", "VLI", "VOV", "VBR", "VWV", "WHT", "WLG", "WLX", "WNA" };

pub const street_address = .{ .normal = "{{location.street}} {{location.buildingNumber}}", .full = "{{location.street}} {{location.buildingNumber}} {{location.secondaryAddress}}" };

pub const street_pattern = [_][]const u8{ "{{location.street_prefix}} {{person.first_name}}", "{{location.street_prefix}} {{person.last_name}}", "{{location.street_prefix}} {{location.street_suffix}}" };

pub const street_prefix = [_][]const u8{ "Allée", "Chemin", "Cours", "Rue", "Avenue", "Boulevard", "Drève", "Galerie", "Impasse", "Jardin", "Quai", "Passage", "Parc", "Parvis", "Petite rue", "Place", "Porte", "Square", "Voie" };

pub const street_suffix = [_][]const u8{ "de la Banque", "de la Barbe", "de Barchon", "Baron Horta", "aux Barques", "des Barricades", "Barthélémy", "du Baudet", "Frédéric Basse", "du Béguinage", "de Berlaimont", "au Beurre", "Henri Beyaert", "de Bischoffsheim", "Blaes", "de la Blanchisserie", "des Blindés", "de la Bobine", "Bodeghem", "Bodenbroeck", "des Boeufs", "des Bogards", "du Bois à Brûler", "au Bois de Construction", "du Bois Sauvage", "des Boîteux", "de Bon Secours", "du Borgendael", "Borgval", "Bortier", "des Bouchers", "rue des Bouchers", "du Boulet", "de la Bouquetière", "de la Bourse", "de la Braie", "des Brasseurs", "Brederode", "Jacques Brel", "Breughel", "des Brigittines", "rue des Brigittines", "aux Briques", "des Brodeurs", "de la Buanderie", "Charles Buls", "des Cadeaux", "Camusel", "du Canal", "du Canon", "Cantersteen", "des Capucins", "Cardinal Mercier", "de la Caserne", "des Cendres", "du Centre", "Chair et Pain", "des Chaisiers", "de la Chancellerie", "des Chandeliers", "du Chantier", "du Chapelet", "des Chapeliers", "de la Chapelle", "du Char", "des Charpentiers", "des Chartreux", "du Chasseur", "de la Chaufferette", "à la Chaux", "du Chêne", "du Cheval", "du Chevreuil", "du Chien Marin", "aux Choux", "Christine", "de la Cigogne", "du Cirque", "de la Clé", "de la Collégiale", "de la Colline", "du Colombier", "des Colonies", "des Comédiens", "des Commerçants", "du Commerce", "du Congrès", "Coppens", "Coudenberg", "Jo Cox", "de la Croix de Fer", "Cuerens", "des Cultes", "de Cureghem", "de la Cuve", "du Cyprès", "des Echelles", "de l' Eclipse", "de l' Economie", "de l' Ecuyer", "d' Egmont", "de l' Empereur", "de l' Enseignement", "de l' Epargne", "de l' Epée", "des Eperonniers", "de l' Escalier", "des Escrimeurs", "d' Espagne", "de l' Etuve", "de l' Europe", "de l' Eventail", "de l' Evêque", "Evers", "des Fabriques", "des Faisans", "de la Faucille", "du Faucon", "de la Ferraille", "de la Fiancée", "de la Fidélité", "du Finistère", "de Flandre", "des Fleuristes", "aux Fleurs", "au Foin", "Fontainas", "de la Fontaine", "de la Forêt d'Houthulst", "Fossé-aux-Loups", "des Foulons", "de la Fourche", "des Fripiers", "Froebel", "blanche", "noire", "verte", "pont de bois", "grand poire", "du marché", "du lundi", "des médias", "Robert Schuman", "du papier plié", "de la croix de fer", "cronque", "de l'Abbaye", "Adolphe Mille", "d'Assas", "du Bac", "de Paris", "La Boétie", "du roi", "de la Bûcherie", "de Caumartin", "Charlemagne", "du Chat-qui-Pêche", "de la Chaussée-d'Antin", "du Dahomey", "Dauphine", "Delesseux", "du Faubourg Saint-Honoré", "du Faubourg-Saint-Denis", "de la Ferronnerie", "des Francs-Bourgeois", "des Grands Augustins", "de la Harpe", "du Havre", "de la Huchette", "Joubert", "Laffitte", "Lepic", "des Lombards", "Marcadet", "Molière", "Monsieur-le-Prince", "de Montmorency", "Montorgueil", "Mouffetard", "de Nesle", "Oberkampf", "de l'Odéon", "d'Orsel", "de la Paix", "des Panoramas", "Pastourelle", "Pierre Charron", "de la Pompe", "de Presbourg", "de Provence", "de Richelieu", "de Rivoli", "des Rosiers", "Royale", "d'Abbeville", "Saint-Honoré", "Saint-Bernard", "Saint-Denis", "Saint-Dominique", "Saint-Jacques", "Saint-Séverin", "des Saussaies", "de Seine", "de Solférino", "Du Sommerard", "de Tilsitt", "Vaneau", "de Vaugirard", "de la Victoire", "Zadkine" };