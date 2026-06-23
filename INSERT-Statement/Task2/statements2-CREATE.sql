-- Roter Faden-- Von außen nach ihnen die Tabellen Erstellen
-- Schritt 1: Basistabellen anlegen, diejenigen ohne FK
-- Tabellen: Ort, Projekte

CREATE TABLE Ort (
Ort_ID Integer PRIMARY KEY AUTOINCREMENT,
Ortsname Text
);

CREATE TABLE Projekte (
Projekte_ID Integer PRIMARY KEY AUTOINCREMENT,
Projektbezeichnung Text
);


--Schritt 2: Tabellen mit Referenz zu den FK
--Tabellen: Mitarbeiter 

CREATE TABLE Mitarbeiter (
Mitarbeiter_ID Integer,     --PK
Ort_ID Integer,             --FK
PRIMARY KEY (Mitarbeiter_ID, Ort_ID)    -- Kombination aus PK
FOREIGN KEY (Ort_ID) REFERENCES Ort (Ort_ID)
);

--Schritt 3: Kreuztabellen/Kindstabellen auflösen
--(verbindung zwischen n:m)
--Tabellen: Mitarbeiter_Projekte

CREATE TABLE Mitarbeiter_Projekte (
Mitarbeiter_ID Integer,         --FK
Projekte_ID Integer,            --FK

PRIMARY KEY (Mitarbeiter_ID, Projekte_ID)

FOREIGN KEY (Mitarbeiter_ID) REFERENCES Mitarbeiter (Mitarbeiter_ID)
FOREIGN KEY (Projekte_ID) REFERENCES Projekte(Projekte_ID)
);
