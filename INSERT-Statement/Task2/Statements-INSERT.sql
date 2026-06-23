
-- 1 Schritt: Tabellen ohne FK

-- INSERT INTO Ort (Ortsname) VALUES
-- ('Berlin'),
-- ('Hamburg'),
-- ('Muenchen'),
-- ('Koeln'),
-- ('Stuttgart');


-- INSERT INTO Projekte (Projektbezeichnung) VALUES
-- ('Webseiten relaunch'),
-- ('Datenbank Migration'),
-- ('App Entwicklung'),
-- ('IT Sicherheit'),
-- ('Netzwerkausbau');

-- -- 2 Schritt: Tabellen mit FK. Hier soll die zuordnung stimmen

-- INSERT INTO Mitarbeiter (Mitarbeiter_ID, Ort_ID) VALUES
-- (1, 1),
-- (2, 2),
-- (3, 3),
-- (4, 4),
-- (5, 5);

-- -- 3 Schritt: Kreuztabelle mit FK

-- INSERT INTO Mitarbeiter_Projekte (Mitarbeiter_ID, Projekte_ID) VALUES
-- (1, 1),
-- (2, 2),
-- (3, 3),
-- (4, 4),
-- (5, 5);


-- und hier ist die Fortsetzung von INSERT, also die weitere Values


INSERT INTO Ort (Ortsname) VALUES
('Frankfurt'),
('Dresden'),
('Hannover'),
('Nuernberg'),
('Leipzig');


INSERT INTO Projekte (Projektbezeichnung) VALUES
('ERP Einfuehrung'),
('Cloud Migration'),
('Helpdesk Aufbau'),
('Schulungsprogramm IT'),
('Backup System Einrichtung');


INSERT INTO Mitarbeiter (Mitarbeiter_ID, Ort_ID) VALUES
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);


INSERT INTO Mitarbeiter_Projekte (Mitarbeiter_ID, Projekte_ID) VALUES
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);
