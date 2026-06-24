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

SELECT Kunde.Vorname, Kunde.Nachname, Bestellung.Bestellung_ID AS 'Bestellungsnummer'
FROM Bestellung JOIN Kunde ON Bestellung.Kunde_ID = Kunde.Kunde_ID;

 
--------------------------------------------------------------------------------------------------------------
-- 8️⃣ Zeige alle Artikel mit ihrer Artikelgruppe

SELECT Artikel.Artikel_ID AS 'Artikelnummer', Artikelgruppe.Artikelgruppe_ID AS 'Artikelgruppennummer'
FROM Artikel JOIN Artikelgruppe ON Artikel.Artikelgruppe_ID = Artikelgruppe.Artikelgruppe_ID;
 
 
--------------------------------------------------------------------------------------------------------------
-- 9️⃣ Zeige alle Positionen (Artikel + Menge) einer bestimmten Bestellung
-- lösung1
SELECT Bestellung_ID AS 'Bestellnummer', Artikel_ID AS 'Artikel', COUNT(*) AS 'Menge' FROM Bestellung_Artikel WHERE Bestellung_ID = 3;
-- lösung2
SELECT Bestellung.Bestellung_ID as 'Bestellung', Artikel.Artikel_ID as 'Artikel', COUNT(Artikel.Artikel_ID) as 'Menge'
FROM Bestellung_Artikel
JOIN Bestellung ON Bestellung_Artikel.Bestellung_ID = Bestellung.Bestellung_ID
JOIN Artikel ON Bestellung_Artikel.Artikel_ID = Artikel.Artikel_ID;
--------------------------------------------------------------------------------------------------------------
-- 🔟 Bonus: Berechne den Gesamtpreis (Menge × Preis) für jede Position einer Bestellung

SELECT Bestellung.Bestellung_ID as 'Bestellung', COUNT(Artikel.Artikel_ID) * Artikel.Preis AS 'Gesamtpreis'
FROM Bestellung_Artikel
JOIN Bestellung ON Bestellung_Artikel.Bestellung_ID = Bestellung.Bestellung_ID
JOIN Artikel ON Bestellung_Artikel.Artikel_ID = Artikel.Artikel_ID;

 
-- #Mittelschwer Aufgaben: --------------------------------------------------------------------------------------------------------------
-- 1️⃣ Alle Bestellungen mit Kundennamen und Bestelldatum anzeigen (JOIN + Sortierung)
 
 
--------------------------------------------------------------------------------------------------------------
-- 2️⃣ Zeige alle Artikel mit ihrem Rabatt (JOIN Artikelgruppe)
 
--------------------------------------------------------------------------------------------------------------
-- 3️⃣ Berechne den durchschnittlichen Artikelpreis pro Artikelgruppe
 
--------------------------------------------------------------------------------------------------------------
-- 4️⃣ Zeige die Anzahl der Bestellungen pro Kunde
 
--------------------------------------------------------------------------------------------------------------
-- 5️⃣ Zeige alle Artikel, die in mindestens einer Bestellung vorkommen
 
--------------------------------------------------------------------------------------------------------------
-- 6️⃣ Berechne den Gesamtwert jeder Bestellung (SUM(Preis * Menge))
 
--------------------------------------------------------------------------------------------------------------
-- 7️⃣ Finde die teuersten Artikel (Preis über Durchschnitt aller Artikel)
 
--------------------------------------------------------------------------------------------------------------
-- 8️⃣ Zeige, welche Kunden mindestens 2 Bestellungen haben
 
--------------------------------------------------------------------------------------------------------------
-- 9️⃣ Zeige die meistverkauften Artikel (nach Menge sortiert)
 
--------------------------------------------------------------------------------------------------------------
-- 🔟 Bonus: Berechne den Rabattwert jedes Artikels basierend auf seiner Gruppe
 
 
