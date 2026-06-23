-- SQL SELECT DQL Dialekt

-- Mit SELECT + "*" + TAbellenname: Alle attrribute aus einer Tabelle
SELECT * FROM Kunde;
SELECT * FROM Artikelgruppe;
SELECT * FROM Bestellung;
SELECT * FROM Artikel;
SELECT * FROM Bestellung_Artikel;
---------------------------------------------------------------------------------------------------------------

-- Bestimmtze Attribute ausgeben

SELECT Vorname, Nachname FROM Kunde;
SELECT Bezeichnung FROM Artikel;
SELECT Bestellung_ID, Kunde_ID FROM Bestellung;
SELECT Bestellung_ID, Artikel_ID FROM Bestellung_Artikel;

---------------------------------------------------------------------------------------------------------------

-- ALIAS verwenden
SELECT Vorname as "Kundenvorname" FROM Kunde;
SELECT Bezeichnung as "Artikelbeschreibung" FROM Artikel;

---------------------------------------------------------------------------------------------------------------

-- Bedingte Abfrage mit Filter "WHERE". Gezielt suchen
SELECT * FROM Kunde;
SELECT * FROM Kunde WHERE Ort = "Berlin";
SELECT * FROM Kunde WHERE Ort = "Hamburg";
SELECT * FROM Kunde WHERE Ort = "Muenchen";

---------------------------------------------------------------------------------------------------------------


-- Datensätze sortieren mit" ORDER BY.... ASC/DESC"
-- Sortieren von Zahlen
SELECT * FROM Artikel;
SELECT * FROM Artikel ORDER BY Preis ASC; -- wird Preis aufsteigend assending
SELECT * FROM Artikel ORDER BY Preis DESC; --wird Preis absteigeng dessending

-- Sortieren von Strings (Alphabetisch)
SELECT * FROM Kunde;
SELECT * FROm Kunde ORDER BY Vorname ASC; -- nach Alphabet aufseigend A-Z
SELECT * FROM Kunde ORDER BY Nachname DESC; -- nach Alphabet absteigend Z-A

---------------------------------------------------------------------------------------------------------------


--Logische Operatoren: AND / OR / NOT
SELECT * FROM Artikelgruppe;
SELECT * FROM Artikel;
SELECT * FROM Kunde;

-- Suchen nach einem Produnkt, das günstier ist als 100 Euro und zu bestimmten Kathegorie gehört
SELECT * FROM Artikel WHERE Preis > 100 AND Artikelgruppe_ID = 1;

-- Ausgeben von Attributen, die entweder oder sind
SELECT * FROM Kunde WHERE Ort = 'Berlin' OR 'Hamburg';

--bestimmte Attributen auslassen
SELECT * From Kunde WHERE NOT Ort = 'Berlin';

---------------------------------------------------------------------------------------------------------------


-- Spannweite ermitteln zwischen zwei Werte. Funktioniert NUR mit Zahlen gut!

SELECT * FROM Artikel;
SELECT * FROM Artikel WHERE Preis BETWEEN 1 AND 50;
SELECT * FROM Artikel WHERE Preis BETWEEN 50 AND 200;
SELECT * FROM Artikel WHERE Preis BETWEEN 100 AND 1000;

---------------------------------------------------------------------------------------------------------------


-- IN | 'explizit' nach bestimmten Einträgen prufen, ob diese in der Tabelle enthalten sind
SELECT * FROM Kunde WHERE Ort IN ('Berlin', 'Hamburg', 'Muenchen');

---------------------------------------------------------------------------------------------------------------


-- IS NULL | Pruft auf Leere Datensatze
SELECT * FROM Kunde WHERE Ort IS NULL; -- (Antrag in Kunde ändern) zeigt werte an, die NULL sind, also welche daten noch fehlen

-------------------------------------------------------------------------------------------------------------------------------

--Aggregatfunktionen für Berechnungen uber mehrere Zeilen

-- COUNT | zählt die einträge
-- MIN   | gibt die kleinsten Wert aus
-- MAX   | gibt die großten Wert aus
-- AVG   | gibt durchschnitt aus
-- SUM   | berechnet die summe aller eintrage


-- COUNT bsp. wieviele Kunden gibt es insgesamt?
SELECT COUNT(*) FROM Kunde;

SELECT COUNT(Ort) FROM Kunde; -- gibt 10 aus, weil 2 Einträge fehlen


-- MIN bsp. Günstigstes Artikel ausgeben
SELECT MIN(Preis) FROM Artikel;

-- MAX bsp. Teuersten Artiken ausgeben
SELECT MAX(Preis) FROM Artikel;

-- AVG bsp. Durchschnitt ausgeben
SELECT AVG(Preis) FROM Artikel;

-- SUM bsp. Summe aller Artikel ausgeben
SELECT SUM(Preis) FROM Artikel;

-- Variationen mit ALIAS-------------------------

-- Count | bsp. wieviele kunden gibt es?
SELECT COUNT(*) AS 'Anzhal Artikel' from Kunde;

-- MIN | bsp. gunstigstes Artikel ausgeben?
SELECT MIN(Preis) AS 'Gunstigster Preis' from Artikel;

--MAX | bsp. teuersten Artikel ausgeben?
SELECT MAX(Preis) AS 'Teuerster Preis' from Artikel;

---------------------------------------------------------------------------------------------------------------

--LIKE ist abgespeckte Suchfunktion nach Strings oder Buchstaben

-- nach etwas suchen, was mit bestimmten Buchstaben/String beginnt (Buchstabe + %)
SELECT * FROM Kunde WHERE Nachname LIKE 'M%';
-- nach etwas suchen, was mit bestimmten Buchstaben/String endet(% + Buchstabe)
SELECT * FROM Kunde WHERE Nachname LIKE '%er';
---------------------------------------------------------------------------------------------------------------

--DISTINCT ist eine Suchfunktion vermeidet Doppelte/Gleiche werte
SELECT * FROM Kunde WHERE Nachname LIKE 'K%'; -- gibt mehrere aus
SELECT DISTINCT Nachname FROM Kunde WHERE Nachname LIKE 'K%'; -- nur einzigartige

SELECT Artikelgruppe_ID FROM Artikel;-- gibt mehrere aus
SELECT DISTINCT Artikelgruppe_ID FROM Artikel;-- gibt einzigartige aus
SELECT DISTINCT Nachname FROM Kunde;


---------------------------------------------------------------------------------------------------------------
-- LIMIT : Anzahl der Ergebniosse einschränken/limitieren

SELECT * FROM Kunde; -- zeigt ALLES aus Tabelle Kunde
SELECT * FROM Kunde LIMIT 3; -- zeigt nur 3 Einträge aus Tabelle Kunde
SELECT * FROM Kunde LIMIT 15; -- zeigt 15 Einträge aus Tabelle Kunde, bzw alle, weil wir 12 Einträgen haben



