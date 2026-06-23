-- Schritt 1 - Basistabellen ohne Fremdschlüssel anlegen

CREATE TABLE Kunde (
Kundennummer Integer Primary Key AUTOINCREMENT,
Nachname Text Not NULL,                             -- (Optional) Name soll da sein, diese Felder müssen ausgefüllt werden
Vorname Text Not NULL,
Straße Text,
PLZ Text,
Ort Text
);

CREATE TABLE Artikelgruppe (
Artikelgruppennummer Integer PRIMARY KEY AUTOINCREMENT,
Bezeichnung Text NOT NULL,
Rabatt Decimal                                  -- Decimal bei sehr genauen Berechungen. Integer wäre auch ok
);

-- Schritt 2 - Tabellen mit Fremdschlüsseln anlegen

CREATE TABLE Bestellung (
Bestellnummer Integer,                                      --PK primary Key
Kundennummer Integer,                                       --FK Foreign Key
Bestelldatum Date,
PRIMARY KEY (Bestellnummer, Kundennummer)                   -- 2er Kombination aus PK und FK
FOREIGN KEY(Kundennummer) REFERENCES Kunde (Kundennummer)   -- Referenz für den Fremdschlüssel
);

CREATE TABLE Artikel (
Artikelnummer Integer,                                      --PK primary key
Artikelgruppennummer Integer,                               --FK aus "Artikelgruppe"
Bezeichnung Text,
Preis Decimal,
PRIMARY KEY (Artikelnummer, Artikelgruppennummer)           --2er Set aus Primary und Foregn Key
FOREIGN KEY (Artikelgruppennummer) REFERENCES Artikelgruppe(Artikelgruppennummer) --Referenz auf FK
);

-- Erstellen von der Vermittler-Tabelle(Kreuztabelle/Kindstabelle) mit nur mit Foreign Keys
CREATE TABLE Bestellung_Artikel(
Bestellnummer Integer,                                      --FK aus BEstellung
Artikelnummer Integer,                                      --FK aus Artikel
PRIMARY KEY (Bestellnummer, Artikelnummer)
FOREIGN KEY (Bestellnummer) REFERENCES Bestellung (Bestellnummer)
FOREIGN KEY (Artikelnummer) REFERENCES Artikel (Artikelnummer)
);


