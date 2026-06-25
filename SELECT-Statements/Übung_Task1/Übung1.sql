-- #leichte aufgaben:  --------------------------------------------------------------------------------------------------------------
-- 1️⃣ Alle Kunden anzeigen

SELECT * FROM Kunde;
 
--------------------------------------------------------------------------------------------------------------
-- 2️⃣ Nur die Nachnamen und Orte der Kunden anzeigen

SELECT Nachname, Ort FROM Kunde;
 
--------------------------------------------------------------------------------------------------------------
-- 3️⃣ Alle Artikel mit Preis größer als 100 €
 
SELECT Artikel_ID AS 'Artikel', Preis FROM Artikel WHERE Preis > 100;

--------------------------------------------------------------------------------------------------------------
-- 4️⃣ Nur die Bezeichnung und den Rabatt aller Artikelgruppen
 
SELECT Bezeichnung, Rabatt FROM Artikelgruppe;

--------------------------------------------------------------------------------------------------------------
-- 5️⃣ Alle Bestellungen eines bestimmten Kunden (z. B. Kundennummer = 1)
 
SELECT * FROM Bestellung WHERE Kunde_ID = 1;

--------------------------------------------------------------------------------------------------------------
-- 6️⃣ Alle Artikel alphabetisch sortiert ausgeben
 
SELECT * FROM Artikel ORDER BY Bezeichnung ASC;
SELECT Bezeichnung FROM Artikel ORDER BY Bezeichnung ASC; -- nur Bezeichnung


--------------------------------------------------------------------------------------------------------------
-- 7️⃣ Zeige alle Bestellungen mit zugehörigem Kundennamen

SELECT Bestellung.Bestellung_ID AS 'Bestellungsnummer', Kunde.Vorname, Kunde.Nachname, Bestellung.Bestelldatum
FROM Bestellung JOIN Kunde ON Bestellung.Kunde_ID = Kunde.Kunde_ID;

--------------------------------------------------------------------------------------------------------------
-- 8️⃣ Zeige alle Artikel mit ihrer Artikelgruppe

SELECT Artikel.Bezeichnung AS 'Artikel', Artikelgruppe.Bezeichnung AS 'Artikelgruppe'
FROM Artikel JOIN Artikelgruppe ON Artikel.Artikelgruppe_ID = Artikelgruppe.Artikelgruppe_ID;
 
 
--------------------------------------------------------------------------------------------------------------
-- 9️⃣ Zeige alle Positionen (Artikel + Menge) einer bestimmten Bestellung

-- lösung1

SELECT Bestellung_ID AS 'Bestellnummer', Artikel_ID AS 'Artikel', COUNT(*) AS 'Menge' 
FROM Bestellung_Artikel WHERE Bestellung_ID = 3;

-- lösung2- Tabellenübergreifend

SELECT Bestellung.Bestellung_ID as 'Bestellung', Artikel.Bezeichnung as 'Artikel', COUNT(Artikel.Artikel_ID) as 'Menge'
FROM Bestellung_Artikel
JOIN Bestellung ON Bestellung_Artikel.Bestellung_ID = Bestellung.Bestellung_ID
JOIN Artikel ON Bestellung_Artikel.Artikel_ID = Artikel.Artikel_ID
GROUP BY Bestellung.Bestellung_ID
HAVING Bestellung.Bestellung_ID = 3;

--------------------------------------------------------------------------------------------------------------
-- 🔟 Bonus: Berechne den Gesamtpreis (Menge × Preis) für jede Position einer Bestellung

SELECT Bestellung.Bestellung_ID as 'Bestellung', COUNT(Artikel.Artikel_ID) * Artikel.Preis AS 'Gesamtpreis'
FROM Bestellung_Artikel
JOIN Bestellung ON Bestellung_Artikel.Bestellung_ID = Bestellung.Bestellung_ID
JOIN Artikel ON Bestellung_Artikel.Artikel_ID = Artikel.Artikel_ID
GROUP BY Bestellung.Bestellung_ID;


 
-- #Mittelschwer Aufgaben: --------------------------------------------------------------------------------------------------------------
-- 1️⃣ Alle Bestellungen mit Kundennamen und Bestelldatum anzeigen (JOIN + Sortierung)
 
SELECT Bestellung.Bestellung_ID AS 'Bestellungsnummer', Kunde.Vorname, Kunde.Nachname, Bestellung.Bestelldatum
FROM Bestellung
JOIN Kunde ON Bestellung.Bestellung_ID = Kunde.Kunde_ID
ORDER BY Bestellung.Bestelldatum ASC;

--------------------------------------------------------------------------------------------------------------
-- 2️⃣ Zeige alle Artikel mit ihrem Rabatt (JOIN Artikelgruppe)

SELECT Artikel.Bezeichnung AS 'Artikel', Artikelgruppe.Rabatt AS 'Rabatt'
FROM Artikel
JOIN Artikelgruppe ON Artikel.Artikelgruppe_ID = Artikelgruppe.Artikelgruppe_ID;
 
--------------------------------------------------------------------------------------------------------------
-- 3️⃣ Berechne den durchschnittlichen Artikelpreis pro Artikelgruppe

SELECT Artikelgruppe.Bezeichnung AS 'Artikelgruppe', AVG(Artikel.Preis) AS 'Durchschnittspreis'
FROM Artikel
JOIN Artikelgruppe ON Artikel.Artikelgruppe_ID = Artikelgruppe.Artikelgruppe_ID
GROUP BY Artikelgruppe.Bezeichnung;
 
--------------------------------------------------------------------------------------------------------------
-- 4️⃣ Zeige die Anzahl der Bestellungen pro Kunde

SELECT Kunde.Vorname, Kunde.Nachname, COUNT(Bestellung.Bestellung_ID) AS 'Anzahl der Bestellungen'
FROM Kunde
JOIN Bestellung ON Bestellung.Kunde_ID = Kunde.Kunde_ID
GROUP BY Kunde.Kunde_ID;

--------------------------------------------------------------------------------------------------------------
-- 5️⃣ Zeige alle Artikel, die in mindestens einer Bestellung vorkommen

SELECT DISTINCT Bestellung.Bestellung_ID as 'Bestellungsnummer', Artikel.Bezeichnung as 'Artikel'
FROM Bestellung_Artikel
JOIN Bestellung ON Bestellung_Artikel.Bestellung_ID = Bestellung.Bestellung_ID
JOIN Artikel ON Bestellung_Artikel.Artikel_ID = Artikel.Artikel_ID
GROUP BY Bestellung.Bestellung_ID
HAVING Bestellung.Bestellung_ID = Artikel.Artikel_ID;


--------------------------------------------------------------------------------------------------------------
-- 6️⃣ Berechne den Gesamtwert jeder Bestellung (SUM(Preis * Menge))

-- SELECT Bestellung.Bestellung_ID as 'Bestellungsnummer', SUM(COUNT(Artikel.Artikel_ID) * Artikel.Preis) AS 'Gesamtwert'
-- FROM Bestellung_Artikel
-- JOIN Bestellung ON Bestellung_Artikel.Bestellung_ID = Bestellung.Bestellung_ID
-- JOIN Artikel ON Bestellung_Artikel.Artikel_ID = Artikel.Artikel_ID
-- GROUP BY Bestellung.Bestellung_ID;
 
--------------------------------------------------------------------------------------------------------------
-- 7️⃣ Finde die teuersten Artikel (Preis über Durchschnitt aller Artikel)

SELECT Bezeichnung, Preis FROM Artikel
WHERE Preis > (SELECT AVG(Preis) FROM Artikel);
 
--------------------------------------------------------------------------------------------------------------
-- 8️⃣ Zeige, welche Kunden mindestens 2 Bestellungen haben

SELECT Kunde.Vorname, Kunde.Nachname, COUNT(Bestellung.Bestellung_ID) AS 'Anzahl der Bestellungen'
FROM Kunde
JOIN Bestellung ON Kunde.Kunde_ID = Bestellung.Bestellung_ID
GROUP BY Kunde.Kunde_ID 
HAVING COUNT(Bestellung.Bestellung_ID) >= 2;
 
--------------------------------------------------------------------------------------------------------------
-- 9️⃣ Zeige die meistverkauften Artikel (nach Menge sortiert)

SELECT Bestellung.Bestellung_ID AS 'Bestellnummer', Artikel.Bezeichnung, SUM(Artikel.Artikel_ID) as 'Artikelmenge'
FROM Bestellung_Artikel
JOIN Bestellung ON Bestellung_Artikel.Bestellung_ID = Bestellung.Bestellung_ID
JOIN Artikel ON Bestellung_Artikel.Artikel_ID = Artikel.Artikel_ID
GROUP BY Bestellung.Bestellung_ID
ORDER BY SUM(Artikel.Artikel_ID) DESC;
 
--------------------------------------------------------------------------------------------------------------
-- 🔟 Bonus: Berechne den Rabattwert jedes Artikels basierend auf seiner Gruppe

--Lösung1
 SELECT Artikel.Bezeichnung, Artikel.Preis, Artikelgruppe.Rabatt,
        Artikel.Preis * Artikelgruppe.Rabatt AS 'Rabattwert',
        Artikel.Preis - (Artikel.Preis * Artikelgruppe.Rabatt) AS 'Preis nach Rabatt'
FROm Artikel JOIN Artikelgruppe ON Artikel.Artikelgruppe_ID = Artikelgruppe.Artikelgruppe_ID;

--Lösung2 mit aufrunden
 SELECT Artikel.Bezeichnung, Artikel.Preis, Artikelgruppe.Rabatt,
        ROUND(Artikel.Preis * Artikelgruppe.Rabatt, 2) AS 'Rabattwert',
        ROUND(Artikel.Preis - (Artikel.Preis * Artikelgruppe.Rabatt), 2) AS 'Preis nach Rabatt'
FROm Artikel JOIN Artikelgruppe ON Artikel.Artikelgruppe_ID = Artikelgruppe.Artikelgruppe_ID;
 
