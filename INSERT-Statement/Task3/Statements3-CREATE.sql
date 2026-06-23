--1

CREATE TABLE Geldinstitut(
Geldinstitut_ID Integer PRIMARY KEY AUTOINCREMENT,
Name Text,
Ort Text,
Rezensionen Text
);

CREATE TABLE Tarif(
Tarif_ID Integer PRIMARY KEY AUTOINCREMENT,
Tarifdauer Text,
Kosten Text,
Leistungen Text

);



--2

CREATE TABLE Kunde(
Kunde_ID Integer,
Geldinstitut_ID Integer,
Vorname Text,
Nachname Text,
Ort Text,
PRIMARY KEY (Kunde_ID, Geldinstitut_ID),
FOREIGN KEY (Geldinstitut_ID) REFERENCES Geldinstitut (Geldinstitut_ID)

);


--3

CREATE TABLE Telefon(
Telefon_ID Integer,
Tarif_ID Integer,
Kunde_ID Integer,
Hersteller Text,
Preis Text,

PRIMARY KEY (Telefon_ID, Tarif_ID, Kunde_ID)
FOREIGN KEY (Tarif_ID) REFERENCES Tarif (Tarif_ID)
FOREIGN KEY (Kunde_ID) REFERENCES Kunde (Kunde_ID)
);


CREATE TABLE EinzelverbindungsNachweis(
EVN_ID Integer,
Telefon_ID Integer,
Rufnummerverzeichnis Integer,
Verbindungsdauer Text,
Eingelverbindungskosten Text,
PRIMARY KEY (EVN_ID, Telefon_ID),
FOREIGN KEY (Telefon_ID) REFERENCES Telefon (Telefon_ID)

);


CREATE TABLE EinzelverbindungsNachweis(
EVN_ID Integer,
Telefon_ID Integer,
Rufnummerverzeichnis Integer,
Verbindungsdauer Decimal,
Eingelverbindungskosten Text,
PRIMARY KEY (EVN_ID, Telefon_ID),
FOREIGN KEY (Telefon_ID) REFERENCES Telefon (Telefon_ID)

);