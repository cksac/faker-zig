const NamePattern = @import("../../modules/person.zig").NamePattern;

pub const female_first_name = [_][]const u8{ "Μαρια", "Ελενη", "Αικατερινη", "Ιωαννα", "Δημητρα", "Ευαγγελια", "Γεωργια", "Αναστασια", "Παναγιωτα", "Σοφια", "Κωνσταντινα", "Παρασκευη", "Αννα", "Χριστινα", "Αθανασια", "Δεσποινα", "Χρυσουλα", "Αλεξανδρα", "Σταυρουλα" };

pub const female_prefix = [_][]const u8{ "Κυρία", "Δόκτορ" };

pub const first_name = [_][]const u8{ "Άγγελος", "Αθανάσιος", "Αθανασια", "Αικατερινη", "Αλέξανδρος", "Αλεξανδρα", "Αναστάσιος", "Αναστασια", "Ανδρέας", "Αννα", "Αντώνης", "Απόστολος", "Αριστείδης", "Βασίλης", "Γεωργια", "Γεώργιος", "Γρηγόριος", "Δεσποινα", "Δημήτρης", "Δημητρα", "Διονύσιος", "Ελενη", "Ελευθέριος", "Εμμανουήλ", "Ευάγγελος", "Ευαγγελια", "Ευστάθιος", "Ηλίας", "Θεόδωρος", "Ιωάννης", "Ιωαννα", "Κωνσταντινα", "Κώστας", "Λεωνίδας", "Μαρια", "Μιχαήλ", "Νικόλαος", "Πέτρος", "Παναγιωτα", "Παναγιώτης", "Παρασκευάς", "Παρασκευη", "Παύλος", "Σοφια", "Σπύρος", "Στέφανος", "Σταυρουλα", "Σταύρος", "Στυλιανός", "Σωτήριος", "Φώτιος", "Χαράλαμπος", "Χρήστος", "Χριστινα", "Χρυσουλα" };

pub const last_name = [_][]const u8{ "Αβραμίδης", "Αγγελίδης", "Αγγελίδου", "Αγγελόπουλος", "Αγγελοπούλου", "Αθανασιάδης", "Αθανασίου", "Ακρίδας", "Αλαβάνος", "Αλαφούζος", "Αλεβιζόπουλος", "Αλεβίζος", "Αλεξάκης", "Αλεξίου", "Αλεξόπουλος", "Αλεξανδρίδης", "Αλεξάνδρου", "Αλεξιάδης", "Αλιβιζάτος", "Αναγνωστάκης", "Αναγνώστου", "Αναστασιάδης", "Ανδρεάδης", "Ανδρέου", "Αντωνιάδης", "Αντωνόπουλος", "Αντωνοπούλου", "Αξιώτης", "Αποστόλου", "Αποστολίδης", "Αρβανίτης", "Αργυριάδης", "Ασπάσιος", "Αυγερινός", "Βάμβας", "Βαμβακάς", "Βαρνακιώτης", "Βαρουξής", "Βασιλόπουλος", "Βασιλείου", "Βασιλειάδης", "Βασιλικός", "Βενιζέλος", "Βέργας", "Βικελίδης", "Βιλαέτης", "Βιτάλη", "Βιτάλης", "Βλαβιανός", "Βλαστός", "Βλαχόπουλος", "Βούλγαρης", "Βονόρτας", "Βουγιουκλάκης", "Βουρδουμπάς", "Βυζάντιος", "Γαλάνη", "Γαλάνης", "Γεννάδιος", "Γερμανός", "Γερμανού", "Γεωργίου", "Γεωργιάδης", "Γιάγκος", "Γιαννόπουλος", "Γιαννακόπουλος", "Γιάνναρης", "Γκόφας", "Γλυκύς", "Γούναρης", "Γούσιος", "Δάβης", "Δαγκλής", "Δαμασκηνός", "Δασκαλόπουλος", "Δασκαλοπούλου", "Δελή", "Δεσποτόπουλος", "Δημαράς", "Δημητρίου", "Δημητρακόπουλος", "Διαμαντόπουλος", "Διδασκάλου", "Δοξαράς", "Δουμπιώτης", "Δουρέντης", "Δράκος", "Δραγούμης", "Δυοβουνιώτης", "Ελευθερόπουλος", "Ελευθεριάδης", "Ελευθερίου", "Ευταξίας", "Ζάνος", "Ζάππας", "Ζάρκος", "Ζάχος", "Ζέρβας", "Ζαΐμης", "Ζαφειρόπουλος", "Ζαχαρίου", "Ζερβός", "Ζυγομαλάς", "Ζωγράφος", "Ζωγράφου", "Ηλιόπουλος", "Θεοδοσίου", "Θεοδωρίδης", "Θεοτόκης", "Ιωαννίδης", "Ιωάννου", "Καζαντζής", "Κακριδής", "Καλάρης", "Καλύβας", "Καλαμογδάρτης", "Καλλιγάς", "Καλογιάννης", "Κανακάρης-Ρούφος", "Καραβίας", "Καραμήτσος", "Καραμανλής", "Καρράς", "Κασιδιάρης", "Καψής", "Κεδίκογλου", "Κούνδουρος", "Κολιάτσος", "Κομνηνός", "Κοντολέων", "Κοντόσταυλος", "Κόρακας", "Κορνάρος", "Κορομηλάς", "Κορωναίος", "Κοσμόπουλος", "Κοτζιάς", "Κουβέλης", "Κουντουριώτης", "Κουρμούλης", "Κουταλιανός", "Κρεστενίτης", "Κυπραίος", "Κωνσταντίνου", "Κωνσταντόπουλος", "Λόντος", "Λύτρας", "Λαγός", "Λαιμός", "Λαμέρας", "Λαμπρόπουλος", "Λειβαδάς", "Λιάπης", "Λιακόπουλος", "Λούλης", "Λούπης", "Λύκος", "Μάγκας", "Μήτζου", "Μαγγίνας", "Μακρή", "Μακρής", "Μαλαξός", "Μανιάκης", "Μανωλάς", "Μαρής", "Μαρκόπουλος", "Μαυρίδης", "Μαυρογένης", "Μελετόπουλος", "Μέλιοι", "Μεσσηνέζης", "Μεταξάς", "Μητσοτάκης", "Μιαούλης", "Μιχαηλίδης", "Μιχαλολιάκος", "Μοσχοβάκης", "Μπότσαρης", "Μπλέτσας", "Μπουκουβαλαίοι", "Νικολαΐδης", "Νικολάκος", "Οικονόμου", "Ουζουνίδης", "Πανταζής", "Παπαγεωργίου", "Παπάγος", "Παπαδάκης", "Παπαδόπουλος", "Παπάζογλου", "Παπακώστας", "Παπακωνσταντίνου", "Παπανδρέου", "Παπανικολάου", "Παπαντωνίου", "Παπαστεφάνου", "Παπαφιλίππου", "Παπαϊωάννου", "Παππάς" };

pub const last_name_pattern = [_]NamePattern{.{ .value = "{{person.last_name}}", .weight = 1 }};

pub const male_first_name = [_][]const u8{ "Γεώργιος", "Ιωάννης", "Κώστας", "Δημήτρης", "Νικόλαος", "Παναγιώτης", "Βασίλης", "Χρήστος", "Αθανάσιος", "Μιχαήλ", "Ευάγγελος", "Σπύρος", "Αντώνης", "Αναστάσιος", "Θεόδωρος", "Ανδρέας", "Χαράλαμπος", "Αλέξανδρος", "Εμμανουήλ", "Ηλίας", "Σταύρος", "Πέτρος", "Σωτήριος", "Στυλιανός", "Ελευθέριος", "Απόστολος", "Φώτιος", "Διονύσιος", "Γρηγόριος", "Άγγελος", "Στέφανος", "Ευστάθιος", "Παύλος", "Παρασκευάς", "Αριστείδης", "Λεωνίδας" };

pub const male_prefix = [_][]const u8{ "Κύριος", "Δόκτορ" };

pub const name = [_]NamePattern{ .{ .value = "{{person.prefix}} {{person.firstName}} {{person.lastName}}", .weight = 1 }, .{ .value = "{{person.firstName}} {{person.lastName}} {{person.suffix}}", .weight = 1 }, .{ .value = "{{person.firstName}} {{person.lastName}}", .weight = 8 } };

pub const prefix = [_][]const u8{ "Δόκτορ", "Κυρία", "Κύριος" };

pub const title = .{ .descriptor = [_][]const u8{ "Senior", "Εταιρείες", "Πελάτης", "Επενδυτής", "Εσωτερικό", "Κύριος" }, .level = [_][]const u8{ "Λύσεις", "Πρόγραμμα", "Μάρκα", "Ασφάλεια", "Έρευνα", "Μάρκετινγκ", "Οδηγιών", "Εφαρμογή", "Ενσωμάτωση", "Λειτουργικότητα", "Τακτική", "Ταυτότητα", "Αγορές", "Όμιλος", "Εφαρμογές", "Βελτιστοποίηση", "Δραστηριότητες", "Υποδομή", "Intranet", "Επικοινωνίες", "Web", "Branding", "Ποιότητα", "Διασφάλιση", "Κινητικότητα", "Λογαριασμοί", "Δεδομένα", "Δημιουργική", "Διαμόρφωση", "Μετρήσεις" }, .job = [_][]const u8{ "Επόπτης", "Συνεργάτης", "Σύμβουλος", "Διευθυντής", "Μηχανικός", "Ειδικός", "Συντονιστή", "Διαχειριστής", "Αναλυτής", "Designer", "Τεχνικός", "Προγραμματιστής", "Παραγωγός", "Βοηθός", "Συντονιστής", "Εκπρόσωπος", "Αντιπρόσωπος" } };