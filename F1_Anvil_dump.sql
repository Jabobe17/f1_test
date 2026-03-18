-- SQL-Dump erzeugt aus F1_Anvil.db
PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE Fahrer (
  FahrerNr INTEGER PRIMARY KEY,
  Name TEXT,
  Nation TEXT,
  Geburtsdatum TEXT,
  Debutjahr INTEGER
);
INSERT INTO "Fahrer" VALUES(1,'Lando Norris','GBR','1999-11-13',2019);
INSERT INTO "Fahrer" VALUES(3,'Max Verstappen','NED','1997-09-30',2015);
INSERT INTO "Fahrer" VALUES(5,'Gabriel Bortoleto','BRA','2004-10-14',2025);
INSERT INTO "Fahrer" VALUES(6,'Isack Hadjar','FRA','2004-09-28',2025);
INSERT INTO "Fahrer" VALUES(10,'Pierre Gasly','FRA','1996-02-07',2017);
INSERT INTO "Fahrer" VALUES(11,'Sergio Perez','MEX','1990-01-26',2011);
INSERT INTO "Fahrer" VALUES(12,'Kimi Antonelli','ITA','2006-08-25',2025);
INSERT INTO "Fahrer" VALUES(14,'Fernando Alonso','ESP','1981-07-29',2001);
INSERT INTO "Fahrer" VALUES(16,'Charles Leclerc','MON','1997-10-16',2018);
INSERT INTO "Fahrer" VALUES(18,'Lance Stroll','CAN','1998-10-29',2017);
INSERT INTO "Fahrer" VALUES(23,'Alexander Albon','THA','1996-03-23',2019);
INSERT INTO "Fahrer" VALUES(27,'Nico Hülkenberg','GER','1987-08-19',2010);
INSERT INTO "Fahrer" VALUES(30,'Liam Lawson','NZL','2002-02-11',2023);
INSERT INTO "Fahrer" VALUES(31,'Esteban Ocon','FRA','1996-09-17',2016);
INSERT INTO "Fahrer" VALUES(41,'Arvid Lindblad','GBR','2007-08-08',2026);
INSERT INTO "Fahrer" VALUES(43,'Franco Colapinto','ARG','2003-05-27',2024);
INSERT INTO "Fahrer" VALUES(44,'Lewis Hamilton','GBR','1985-01-07',2007);
INSERT INTO "Fahrer" VALUES(55,'Carlos Sainz Jr.','ESP','1994-09-01',2015);
INSERT INTO "Fahrer" VALUES(63,'George Russell','GBR','1998-02-15',2019);
INSERT INTO "Fahrer" VALUES(77,'Valtteri Bottas','FIN','1989-08-28',2013);
INSERT INTO "Fahrer" VALUES(81,'Oscar Piastri','AUS','2001-04-06',2023);
INSERT INTO "Fahrer" VALUES(87,'Oliver Bearman','GBR','2005-05-08',2024);
INSERT INTO "Fahrer" VALUES(91,'Michael Schumacher','GER','1969-01-03',1991);
INSERT INTO "Fahrer" VALUES(92,'Kimi Räikkönen','FIN','1979-10-17',2001);
INSERT INTO "Fahrer" VALUES(93,'Jenson Button','GBR','1980-01-19',2000);
INSERT INTO "Fahrer" VALUES(94,'Sebastian Vettel','GER','1987-07-03',2007);
INSERT INTO "Fahrer" VALUES(95,'Nico Rosberg','GER','1985-06-27',2006);
CREATE TABLE FahrerWM (
  Jahr INTEGER PRIMARY KEY,
  FahrerNr INTEGER,
  team_id INTEGER,
  Punkte INTEGER,
  Siege INTEGER,
  FOREIGN KEY (FahrerNr) REFERENCES Fahrer(FahrerNr),
  FOREIGN KEY (team_id) REFERENCES Team(team_id)
);
INSERT INTO "FahrerWM" VALUES(2000,91,4,108,9);
INSERT INTO "FahrerWM" VALUES(2001,91,4,123,9);
INSERT INTO "FahrerWM" VALUES(2002,91,4,144,11);
INSERT INTO "FahrerWM" VALUES(2003,91,4,93,6);
INSERT INTO "FahrerWM" VALUES(2004,91,4,148,13);
INSERT INTO "FahrerWM" VALUES(2005,14,12,133,7);
INSERT INTO "FahrerWM" VALUES(2006,14,12,134,7);
INSERT INTO "FahrerWM" VALUES(2007,92,4,110,6);
INSERT INTO "FahrerWM" VALUES(2008,44,1,98,5);
INSERT INTO "FahrerWM" VALUES(2009,93,13,95,6);
INSERT INTO "FahrerWM" VALUES(2010,94,3,256,5);
INSERT INTO "FahrerWM" VALUES(2011,94,3,392,11);
INSERT INTO "FahrerWM" VALUES(2012,94,3,281,5);
INSERT INTO "FahrerWM" VALUES(2013,94,3,397,13);
INSERT INTO "FahrerWM" VALUES(2014,44,2,384,11);
INSERT INTO "FahrerWM" VALUES(2015,44,2,381,10);
INSERT INTO "FahrerWM" VALUES(2016,95,2,385,9);
INSERT INTO "FahrerWM" VALUES(2017,44,2,363,9);
INSERT INTO "FahrerWM" VALUES(2018,44,2,408,11);
INSERT INTO "FahrerWM" VALUES(2019,44,2,413,11);
INSERT INTO "FahrerWM" VALUES(2020,44,2,347,11);
INSERT INTO "FahrerWM" VALUES(2021,3,3,395.5,10);
INSERT INTO "FahrerWM" VALUES(2022,3,3,454,15);
INSERT INTO "FahrerWM" VALUES(2023,3,3,575,19);
INSERT INTO "FahrerWM" VALUES(2024,3,3,437,9);
INSERT INTO "FahrerWM" VALUES(2025,1,1,423,7);
INSERT INTO "FahrerWM" VALUES(2026,63,2,438,9);
CREATE TABLE Fahrer_Team (
  FahrerNr INTEGER,
  team_id INTEGER,
  Jahr INTEGER,
  PRIMARY KEY (FahrerNr, team_id, Jahr),
  FOREIGN KEY (FahrerNr) REFERENCES Fahrer(FahrerNr),
  FOREIGN KEY (team_id) REFERENCES Team(team_id)
);
INSERT INTO "Fahrer_Team" VALUES(1,1,2026);
INSERT INTO "Fahrer_Team" VALUES(81,1,2026);
INSERT INTO "Fahrer_Team" VALUES(63,2,2026);
INSERT INTO "Fahrer_Team" VALUES(12,2,2026);
INSERT INTO "Fahrer_Team" VALUES(3,3,2026);
INSERT INTO "Fahrer_Team" VALUES(6,3,2026);
INSERT INTO "Fahrer_Team" VALUES(16,4,2026);
INSERT INTO "Fahrer_Team" VALUES(44,4,2026);
INSERT INTO "Fahrer_Team" VALUES(23,5,2026);
INSERT INTO "Fahrer_Team" VALUES(55,5,2026);
INSERT INTO "Fahrer_Team" VALUES(41,6,2026);
INSERT INTO "Fahrer_Team" VALUES(30,6,2026);
INSERT INTO "Fahrer_Team" VALUES(14,7,2026);
INSERT INTO "Fahrer_Team" VALUES(18,7,2026);
INSERT INTO "Fahrer_Team" VALUES(10,8,2026);
INSERT INTO "Fahrer_Team" VALUES(43,8,2026);
INSERT INTO "Fahrer_Team" VALUES(27,9,2026);
INSERT INTO "Fahrer_Team" VALUES(5,9,2026);
INSERT INTO "Fahrer_Team" VALUES(31,10,2026);
INSERT INTO "Fahrer_Team" VALUES(87,10,2026);
INSERT INTO "Fahrer_Team" VALUES(11,11,2026);
INSERT INTO "Fahrer_Team" VALUES(77,11,2026);
CREATE TABLE Fahrerstatistik (
  FahrerNr INTEGER PRIMARY KEY,
  Pole_Position INTEGER,
  Punkte INTEGER,
  Siege INTEGER,
  DNF INTEGER,
  Podium INTEGER,
  FOREIGN KEY (FahrerNr) REFERENCES Fahrer(FahrerNr)
);
INSERT INTO "Fahrerstatistik" VALUES(1,3,297,3,3,11);
INSERT INTO "Fahrerstatistik" VALUES(3,2,171,2,4,6);
INSERT INTO "Fahrerstatistik" VALUES(5,0,60,0,4,0);
INSERT INTO "Fahrerstatistik" VALUES(6,0,96,0,4,1);
INSERT INTO "Fahrerstatistik" VALUES(10,0,132,0,3,2);
INSERT INTO "Fahrerstatistik" VALUES(11,0,30,0,6,0);
INSERT INTO "Fahrerstatistik" VALUES(12,7,401,7,2,17);
INSERT INTO "Fahrerstatistik" VALUES(14,0,24,0,7,0);
INSERT INTO "Fahrerstatistik" VALUES(16,4,356,4,2,14);
INSERT INTO "Fahrerstatistik" VALUES(18,0,16,0,7,0);
INSERT INTO "Fahrerstatistik" VALUES(23,0,54,0,5,0);
INSERT INTO "Fahrerstatistik" VALUES(27,0,42,0,6,0);
INSERT INTO "Fahrerstatistik" VALUES(30,0,116,0,3,1);
INSERT INTO "Fahrerstatistik" VALUES(31,0,58,0,5,0);
INSERT INTO "Fahrerstatistik" VALUES(41,0,74,0,5,0);
INSERT INTO "Fahrerstatistik" VALUES(43,0,68,0,4,0);
INSERT INTO "Fahrerstatistik" VALUES(44,3,338,3,2,12);
INSERT INTO "Fahrerstatistik" VALUES(55,0,88,0,4,0);
INSERT INTO "Fahrerstatistik" VALUES(63,8,438,9,2,18);
INSERT INTO "Fahrerstatistik" VALUES(77,0,34,0,6,0);
INSERT INTO "Fahrerstatistik" VALUES(81,1,110,1,5,3);
INSERT INTO "Fahrerstatistik" VALUES(87,1,182,1,2,5);
CREATE TABLE KonstrukteurWM (
  Jahr INTEGER PRIMARY KEY,
  team_id INTEGER,
  Punkte INTEGER,
  Siege INTEGER,
  FOREIGN KEY (team_id) REFERENCES Team(team_id)
);
INSERT INTO "KonstrukteurWM" VALUES(2000,4,170,10);
INSERT INTO "KonstrukteurWM" VALUES(2001,4,179,9);
INSERT INTO "KonstrukteurWM" VALUES(2002,4,221,15);
INSERT INTO "KonstrukteurWM" VALUES(2003,4,158,8);
INSERT INTO "KonstrukteurWM" VALUES(2004,4,262,15);
INSERT INTO "KonstrukteurWM" VALUES(2005,12,191,8);
INSERT INTO "KonstrukteurWM" VALUES(2006,12,206,8);
INSERT INTO "KonstrukteurWM" VALUES(2007,4,204,9);
INSERT INTO "KonstrukteurWM" VALUES(2008,4,172,8);
INSERT INTO "KonstrukteurWM" VALUES(2009,13,172,8);
INSERT INTO "KonstrukteurWM" VALUES(2010,3,498,9);
INSERT INTO "KonstrukteurWM" VALUES(2011,3,650,12);
INSERT INTO "KonstrukteurWM" VALUES(2012,3,460,7);
INSERT INTO "KonstrukteurWM" VALUES(2013,3,596,13);
INSERT INTO "KonstrukteurWM" VALUES(2014,2,701,16);
INSERT INTO "KonstrukteurWM" VALUES(2015,2,703,16);
INSERT INTO "KonstrukteurWM" VALUES(2016,2,765,19);
INSERT INTO "KonstrukteurWM" VALUES(2017,2,668,12);
INSERT INTO "KonstrukteurWM" VALUES(2018,2,655,11);
INSERT INTO "KonstrukteurWM" VALUES(2019,2,739,15);
INSERT INTO "KonstrukteurWM" VALUES(2020,2,573,13);
INSERT INTO "KonstrukteurWM" VALUES(2021,2,613.5,9);
INSERT INTO "KonstrukteurWM" VALUES(2022,3,759,17);
INSERT INTO "KonstrukteurWM" VALUES(2023,3,860,21);
INSERT INTO "KonstrukteurWM" VALUES(2024,1,666,6);
INSERT INTO "KonstrukteurWM" VALUES(2025,1,833,14);
INSERT INTO "KonstrukteurWM" VALUES(2026,2,839,16);
CREATE TABLE Team (
  team_id INTEGER PRIMARY KEY,
  name TEXT,
  Abkuerzung TEXT,
  Standort TEXT
);
INSERT INTO "Team" VALUES(1,'McLaren','MCL','Woking');
INSERT INTO "Team" VALUES(2,'Mercedes','MER','Brackley');
INSERT INTO "Team" VALUES(3,'Red Bull Racing','RBR','Milton Keynes');
INSERT INTO "Team" VALUES(4,'Ferrari','FER','Maranello');
INSERT INTO "Team" VALUES(5,'Williams','WIL','Grove');
INSERT INTO "Team" VALUES(6,'Racing Bulls','RB','Faenza');
INSERT INTO "Team" VALUES(7,'Aston Martin','AST','Silverstone');
INSERT INTO "Team" VALUES(8,'Alpine','ALP','Enstone');
INSERT INTO "Team" VALUES(9,'Audi','AUD','Ingolstadt');
INSERT INTO "Team" VALUES(10,'Haas F1 Team','HAA','Kannapolis');
INSERT INTO "Team" VALUES(11,'Cadillac','CAD','Detroit');
INSERT INTO "Team" VALUES(12,'Renault','REN','Enstone');
INSERT INTO "Team" VALUES(13,'Brawn GP','BRA','Brackley');
CREATE TABLE strecken (
    Name TEXT,
    Land TEXT,
    Kordinaten TEXT,
    Laenge_km REAL
, Rundenrekord TEXT, Letzter_Gewinner TEXT);
INSERT INTO "strecken" VALUES('Albert Park Grand Prix Circuit','Australien','-37.8497, 144.9680',5.278,'1:19.813 (Charles Leclerc, 2024)','George Russell (2026)');
INSERT INTO "strecken" VALUES('Shanghai International Circuit','China','31.3389, 121.2197',5.451,'1:32.238 (Michael Schumacher, 2004)','Kimi Antonelli (2026)');
INSERT INTO "strecken" VALUES('Suzuka Circuit','Japan','34.8431, 136.5410',5.807,'1:30.965 (Kimi Antonelli, 2025)','Max Verstappen (2025)');
INSERT INTO "strecken" VALUES('Bahrain International Circuit','Bahrain','26.0325, 50.5106',5.412,'1:31.447 (Pedro de la Rosa, 2005)','Oscar Piastri (2025)');
INSERT INTO "strecken" VALUES('Jeddah Corniche Circuit','Saudi-Arabien','21.6319, 39.1044',6.174,'1:27.294 (Max Verstappen, 2025)','Oscar Piastri (2025)');
INSERT INTO "strecken" VALUES('Miami International Autodrome','USA','25.9581, -80.2389',5.412,'1:29.708 (Max Verstappen, 2023)','Oscar Piastri (2025)');
INSERT INTO "strecken" VALUES('Circuit Gilles Villeneuve','Kanada','45.5006, -73.5228',4.361,'1:13.078 (Valtteri Bottas, 2019)','George Russell (2025)');
INSERT INTO "strecken" VALUES('Circuit de Monaco','Monaco','43.7347, 7.4206',3.337,'1:12.909 (Lewis Hamilton, 2021)','Lando Norris (2025)');
INSERT INTO "strecken" VALUES('Circuit de Barcelona-Catalunya','Spanien','41.5700, 2.2611',4.657,'1:15.743 (Oscar Piastri, 2025)','Oscar Piastri (2025)');
INSERT INTO "strecken" VALUES('Red Bull Ring','Österreich','47.2197, 14.7647',4.318,'1:05.619 (Carlos Sainz Jr., 2020)','Lando Norris (2025)');
INSERT INTO "strecken" VALUES('Silverstone Circuit','Großbritannien','52.0786, -1.0169',5.891,'1:27.097 (Max Verstappen, 2020)','Lando Norris (2025)');
INSERT INTO "strecken" VALUES('Circuit de Spa-Francorchamps','Belgien','50.4372, 5.9714',7.004,'1:44.701 (Sergio Perez, 2024)','Oscar Piastri (2025)');
INSERT INTO "strecken" VALUES('Hungaroring','Ungarn','47.5789, 19.2486',4.381,'1:16.627 (Lewis Hamilton, 2020)','Lando Norris (2025)');
INSERT INTO "strecken" VALUES('Circuit Zandvoort','Niederlande','52.3888, 4.5409',4.259,'1:11.097 (Lewis Hamilton, 2021)','Oscar Piastri (2025)');
INSERT INTO "strecken" VALUES('Autodromo Nazionale Monza','Italien','45.6156, 9.2811',5.793,'1:20.901 (Lando Norris, 2025)','Max Verstappen (2025)');
INSERT INTO "strecken" VALUES('Madring / IFEMA Madrid','Spanien','40.4638, -3.6160',5.47,NULL,NULL);
INSERT INTO "strecken" VALUES('Baku City Circuit','Aserbaidschan','40.3725, 49.8533',6.003,'1:43.009 (Charles Leclerc, 2019)','Max Verstappen (2025)');
INSERT INTO "strecken" VALUES('Marina Bay Street Circuit','Singapur','1.2914, 103.8644',4.94,'1:34.486 (Daniel Ricciardo, 2024)','George Russell (2025)');
INSERT INTO "strecken" VALUES('Circuit of the Americas','USA','30.1328, -97.6411',5.513,'1:36.169 (Charles Leclerc, 2019)','Max Verstappen (2025)');
INSERT INTO "strecken" VALUES('Autódromo Hermanos Rodríguez','Mexiko','19.4042, -99.0907',4.304,'1:17.774 (Valtteri Bottas, 2021)','Lando Norris (2025)');
INSERT INTO "strecken" VALUES('Autódromo José Carlos Pace (Interlagos)','Brasilien','-23.7036, -46.6997',4.309,'1:10.540 (Valtteri Bottas, 2018)','Lando Norris (2025)');
INSERT INTO "strecken" VALUES('Las Vegas Strip Circuit','USA','36.1147, -115.1728',6.201,'1:33.365 (Max Verstappen, 2025)','Max Verstappen (2025)');
INSERT INTO "strecken" VALUES('Lusail International Circuit','Katar','25.4900, 51.4542',5.419,'1:22.384 (Lando Norris, 2024)','Max Verstappen (2025)');
INSERT INTO "strecken" VALUES('Yas Marina Circuit','Vereinigte Arabische Emirate','24.4672, 54.6031',5.281,'1:25.637 (Kevin Magnussen, 2024)','Max Verstappen (2025)');
COMMIT;
PRAGMA foreign_keys=ON;
