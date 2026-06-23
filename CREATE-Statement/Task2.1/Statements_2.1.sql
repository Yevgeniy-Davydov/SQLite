--1
CREATE TABLE Ort (
Ort_ID Integer PRIMARY KEY AUTOINCREMENT,
Strasse Text,
PLZ Text,
Stadt Text

);

CREATE TABLE Projekte (
Projekte_ID Integer PRIMARY KEY AUTOINCREMENT,
Bezeichnung Text,
Dauer Text,
Kosten Text

);

--2
CREATE TABLE Mitarbeiter(
Mitarbeiter_ID Integer,
Ort_ID Integer,
Position Text,
Gehalt Text,
Erfahrung Text,
PRIMARY KEY (Mitarbeiter_ID, Ort_ID)
FOREIGN KEY (Ort_ID) REFERENCES Ort (Ort_ID)
);

--3
CREATE TABLE Mitarbeiter_Projekte(
Mitarbeiter_ID Integer,
Projekte_ID Integer,
PRIMARY KEY (Mitarbeiter_ID, Projekte_ID)
FOREIGN KEY (Mitarbeiter_ID) REFERENCES Mitarbeiter(Mitarbeiter_ID)
FOREIGN KEY (Projekte_ID) REFERENCES Projekte(Projekte_ID)
);



--DROP TABLE Ort; 



