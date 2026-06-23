-- --Datenbank mit INSERT Statemant mit "Leben befüllen" -- Bereits inplementiert deswegen kommentiert
-- --1 Schritt: Tabellen mit Primärschlüssel
-- --Tabelle "Kunde"
INSERT INTO Kunde(Nachname, Vorname, Strasse, PLZ, Ort) VALUES
('Mueller', 'Hans', 'Hauptstraße 1', '10115', 'Berlin'),
('Schnidt', 'Anna', 'Bahnhofstrasse 12', '20095', 'Hamburg'),
('Schneider', 'Peter', 'Gartenweg 12', '80331', 'Muenchen'),
('Fischer', 'Maria', 'Rostenstrasse 3', '50667', 'Koeln'),
('Weber', 'Klaus', 'Lindenallee 7', '70173', 'Stuttgart');

--Tabelle "Artikelgruppe"

INSERT INTO Artikelgruppe (Bezeichnung, Rabatt) VALUES
('Elektronik', 0.05),
('Bekleidung', 0.10),
('Lebensmittel', 0.03),
('Spielzeug', 0.08),
('Moebel', 0.07);

--2 Schritt:  Tabellen mit Fremdschlüssel anlegen
-- Tabellen: "Besellung" und "Artikel"

--Tabelle Bestellung
INSERT INTO Bestellung (Bestellung_ID, Kunde_ID, Bestelldatum) VALUES
(1, 1, '2024-01-05'), -- PK selbst festlegen (1, 2,3 ,4...), FK abschauen, was automatisch generiert wurde
(2, 2, '2024-01-12'),
(3, 3, '2024-02-30'),
(4, 4, '2024-02-18'),
(5, 5, '2024-03-07');

--Tabelle Artikel

INSERT INTO Artikel(Artikel_ID, Artikelgruppe_ID, Bezeichnung, Preis) VALUES
(1, 1, 'Laptop 15 Zoll', 899.99), -- die FK soll am der Tabelle Artikelgruppe entnehmen.
(2, 1, 'Smartphone Pro', 599.49),
(3, 2, 'Winterjacke Groesse M', 89.95),
(4, 2, 'Jeans Classic Blue', 49.99),
(5, 3, 'Bio-Apfelsaft . 1L', 2.49);

-- -- 3 Schritt: Kreuztabelle mit FK anlegen
-- -- Tabelle Bestellung_Artikel

INSERT INTO Bestellung_Artikel (Bestellung_ID, Artikel_ID) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);



--jetzt geht es weiter mit weiteren Inports :) --

INSERT INTO Kunde(Nachname, Vorname, Strasse, PLZ, Ort) VALUES
('Meyer', 'Sandra', 'Kirchgasse 21', '60311', 'Frankfurt'),
('Wagner', 'Thomas', 'Bergstrasse 9', '01067', 'Dresden'),
('Becker', 'Julia', 'Seeweg 4', '30159', 'Hannover'),
('Hoffmann', 'Stefan', 'Marktplatz 2', '90402', 'Nuernberg'),
('Koch', 'Laura', 'Feldstrasse 18', '04109', 'Leipzig');

INSERT INTO Kunde(Nachname, Vorname, Strasse, PLZ, Ort) VALUES  -- hier geben wir bewusst nochmal den gleichen Kunden
('Koch', 'Laura', 'Feldstrasse 18', '04109', NULL);                   --ABER diesmal ohne Ort, damit man IS NULL prüfung machen kann


INSERT INTO Artikelgruppe(Bezeichnung, Rabatt) VALUES
('Sportartikel', '0.12'),
('Buero & Schreibwaren', '0.04'),
('Garten & Outdoor', '0.06'),
('Haushalt', '0.09'),
('Buecher & Medien', '0.02');

INSERT INTO Bestellung(Bestellung_ID, Kunde_ID, Bestelldatum) VALUES
(6, 6, '2024-03-22'),
(7, 7, '2024-04-10'),
(8, 8, '2024-04-25'),
(9, 9, '2024-05-14'),
(10, 10, '2024-05-30');

INSERT INTO Artikel(Artikel_ID, Artikelgruppe_ID, Bezeichnung, Preis) VALUES
(6, 4, 'Lego City Set 500 Teile', 59.95),
(7, 5, 'Schreibtisch 120cm', 199.00),
(8, 6, 'Laufschuhe Groesse 42', 79.90),
(9, 7, 'Kugelschreiber 10er Pack', 4.99),
(10, 8, 'Gartenliege Holz', 149.00);

INSERT INTO Bestellung_Artikel (Bestellung_ID, Artikel_ID) VALUES
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);