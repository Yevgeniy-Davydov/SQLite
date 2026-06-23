--1
CREATE TABLE Kunde(
Kunde_ID Integer PRIMARY KEY AUTOINCREMENT,
Vorneme Text,
Nachnahme Text,
Strasse Text,
PLZ Text,
Ort Text
);

CREATE TABLE Artikelgruppe(
Artikelgruppe_ID Integer PRIMARY KEY AUTOINCREMENT,
Bezeichnung Text,
Rabatt Text
);

--2

CREATE TABLE Bestellung(
Bestellung_ID Integer,
Kunde_ID Integer,
Bestelldatum Text,
PRIMARY KEY (Bestellung_ID, Kunde_ID)
FOREIGN KEY (Kunde_ID) REFERENCES Kunde (Kunde_ID)
);

CREATE TABLE Artikel(
Artikel_ID Integer,
Artikelgruppe_ID,
Bezeichnung Text,
Preis Text,
PRIMARY KEY (Artikel_ID, Artikelgruppe_ID)
FOREIGN KEY (Artikelgruppe_ID) REFERENCES Artikelgruppe (Artikelgruppe_ID)
);

--3 

CREATE TABLE Bestellung_Artikel(
Bestellung_ID Integer,
Artikel_ID Integer,
PRIMARY KEY (Bestellung_ID, Artikel_ID)
FOREIGN KEY (Bestellung_ID) REFERENCES Bestellung (Bestellung_ID)
FOREIGN KEY (Artikel_ID) REFERENCES Artikel (Artikel_ID)
);

