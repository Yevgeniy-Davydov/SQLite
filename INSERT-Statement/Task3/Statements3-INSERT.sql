

INSERT INTO Geldinstitut(Name, Ort, Rezensionen) VALUES
('Sparkasse', 'Muenchen', 'Bewertung: 3 von 5'),
('Postbank', 'Berlin', 'Bewertung: 1 von 5'),
('Commerzbank', 'Hamburg', 'Bewertung: 4 von 5'),
('HypoVereinsbank', 'Muenchen', 'Bewertung: 3 von 5'),
('Commerzbank', 'Nuernberg', 'Bewertung: 5 von 5'),
('Sparkasse Nuernberg', 'Nuernberg', 'Bewertung: 4 von 5'),
('Sparda-Bank', 'Stuttgart', 'Bewertung: 4 von 5'),
('Targobank', 'Duesseldorf', 'Bewertung: 3 von 5'),
('Volksbank', 'Koeln', 'Bewertung: 5 von 5'),
('DKB', 'Berlin', 'Bewertung: 5 von 5');

INSERT INTO Tarif(Tarifdauer, Kosten, Leistungen) VALUES
('24 Monate', '19,99 EUR/Monat', '10 GB Datenvolumen, Allnet-Flat, SMS-Flat'),
('12 Monate', '9,99 EUR/Monat', '5 GB Datenvolumen, Allnet-Flat'),
('Monatlich kuendbar', '14,99 EUR/Monat', '15 GB Datenvolumen, Allnet-Flat, EU-Roaming'),
('24 Monate', '29,99 EUR/Monat', '50 GB Datenvolumen, 5G, Allnet-Flat, EU-Roaming'),
('36 Monate', '39,99 EUR/Monat', 'Unbegrenztes Datenvolumen, 5G, Allnet-Flat, SMS-Flat'),
('36 Monate', '44,99 EUR/Monat', 'Unbegrenztes Datenvolumen, 5G, Allnet-Flat, MultiSIM'),
('Monatlich kuendbar', '17,99 EUR/Monat', '25 GB Datenvolumen, Allnet-Flat, SMS-Flat'),
('12 Monate', '12,99 EUR/Monat', '8 GB Datenvolumen, Allnet-Flat, EU-Roaming'),
('24 Monate', '24,99 EUR/Monat', '20 GB Datenvolumen, Allnet-Flat, 5G'),
('24 Monate', '34,99 EUR/Monat', '100 GB Datenvolumen, 5G, Allnet-Flat, EU-Roaming');



INSERT INTO Kunde (Kunde_ID, Geldinstitut_ID, Vorname, Nachname, Ort) VALUES
(1, 2, 'Mueller', 'Hans', 'Berlin'),
(2, 3, 'Schnidt', 'Anna', 'Hamburg'),
(3, 1, 'Schneider', 'Peter', 'Muenchen'),
(4, 4, 'Fischer', 'Maria', 'Koeln'),
(5, 7, 'Weber', 'Klaus', 'Stuttgart'),
(6, 6, 'Meyer', 'Sandra', 'Frankfurt'),
(7, 9,'Wagner', 'Thomas', 'Dresden'),
(8, 8, 'Becker', 'Julia', 'Hannover'),
(9, 5, 'Hoffmann', 'Stefan', 'Nuernberg'),
(10, 10, 'Koch', 'Laura', 'Leipzig');



INSERT INTO Telefon(Telefon_ID, Tarif_ID, Kunde_ID, Hersteller, Preis) VALUES
(1, 1, 1, 'Samsung', '270,99 Euro'),
(2, 2, 2, 'Apple', '319,99 Euro'),
(3, 3, 3, 'Xiaomi', '129,00 Euro'),
(4, 4, 4, 'Google', '419,00 Euro'),
(5, 5, 5, 'Motorola', '199,99 Euro'),
(6, 6, 6, 'Sony', '449,00 Euro'),
(7, 7, 7, 'Huawei', '378,90 Euro'),
(8, 8, 8, 'Fairphone', '287,54 Euro'),
(9, 9, 9, 'Nokia', '154,99 Euro'),
(10, 10, 10, 'Lenovo', '319,99 Euro'); 


INSERT INTO EinzelverbindungsNachweis (EVN_ID, Telefon_ID, Rufnummerverzeichnis, Verbindungsdauer, Eingelverbindungskosten) VALUES
(1, 1, 012345776, '2 Minuten', '0,19 EUR'),
(2, 2, 023456881, '5 Minuten', '0,49 EUR'),
(3, 3, 034567892, '10 Minuten', '0,89 EUR'),
(4, 4, 045678942, '15 Minuten', '1,29 EUR'),
(5, 5, 054326721, '20 Minuten', '1,69 EUR'),
(6, 6, 067854383, '30 Minuten', '2,49 EUR'),
(7, 7, 076854392, '45 Minuten', '3,49 EUR'),
(8, 8, 084428917, '60 Minuten', '4,99 EUR'),
(9, 9, 094432727, '90 Minuten', '6,99 EUR'),
(10, 10, 02345671, '120 Minuten', '29,99 EUR');

