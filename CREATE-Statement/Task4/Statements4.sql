--1

CREATE TABLE Kunde(
Kunde_ID Integer PRIMARY KEY AUTOINCREMENT
);

CREATE TABLE Lieferant(
Lieferant_ID Integer PRIMARY KEY AUTOINCREMENT
);

--2

CREATE TABLE Kundenauftrag(
Kundenauftrag_ID Integer,
Kunde_ID Integer,
PRIMARY KEY (Kundenauftrag_ID, Kunde_ID),
FOREIGN KEY (Kunde_ID) REFERENCES Kunde(Kunde_ID)
);

CREATE TABLE Solaranlage(
Solaranlage_ID Integer,
Kundenauftrag_ID Integer,
PRIMARY KEY (Solaranlage_ID, Kundenauftrag_ID),
FOREIGN KEY (Kundenauftrag_ID) REFERENCES Kundenauftrag(Kundenauftrag_ID)
);

CREATE TABLE Lieferung(
Lieferung_ID Integer,
Lieferant_ID Integer,
PRIMARY KEY (Lieferung_ID, Lieferant_ID),
FOREIGN KEY (Lieferant_ID) REFERENCES Lieferant(Lieferant_ID)
);

CREATE TABLE Lieferantenauftrag(
Lieferanenauftrag_ID Integer,
Lieferant_ID Integer,
PRIMARY KEY (Lieferanenauftrag_ID, Lieferant_ID),
FOREIGN KEY (Lieferant_ID) REFERENCES Lieferant(Lieferant_ID)
);

CREATE TABLE Komponenten(
Komponenten_ID Integer,
Solaranlage_ID Integer,
Lieferant_ID Integer,
PRIMARY KEY (Komponenten_ID, Solaranlage_ID, Lieferant_ID),
FOREIGN KEY (Solaranlage_ID) REFERENCES Solaranlage(Solaranlage_ID),
FOREIGN KEY (Lieferant_ID) REFERENCES Lieferant(Lieferant_ID)
);

--3

CREATE TABLE Lieferung_Komponenten(
Lieferung_ID Integer,
Komponenten_ID Integer,
PRIMARY KEY (Lieferung_ID, Komponenten_ID),
FOREIGN KEY (Lieferung_ID) REFERENCES Lieferung(Lieferung_ID),
FOREIGN KEY (Komponenten_ID) REFERENCES Komponenten(Komponenten_ID)
);

CREATE TABLE Komponenten_Lieferantenauftrag(
Komponenten_ID Integer,
Lieferanenauftrag_ID Integer,
PRIMARY KEY (Komponenten_ID, Lieferanenauftrag_ID),
FOREIGN KEY (Komponenten_ID) REFERENCES Komponenten(Komponenten_ID),
FOREIGN KEY (Lieferanenauftrag_ID) REFERENCES Lieferantenauftrag(Lieferanenauftrag_ID)
);

DROP TABLE Kunde;