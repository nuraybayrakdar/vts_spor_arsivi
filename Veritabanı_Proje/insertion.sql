USE SPOR_ARSIVI

INSERT INTO ULKELER VALUES (1,'Turkey');
INSERT INTO ULKELER VALUES (2,'Greece');
INSERT INTO ULKELER VALUES (3,'Germany');
INSERT INTO ULKELER VALUES (4,'England');
INSERT INTO ULKELER VALUES (5,'Spanish');
INSERT INTO ULKELER VALUES (6,'Netherlands');


INSERT INTO SEHIR VALUES ('�stanbul','1');
INSERT INTO SEHIR VALUES ('Eski�ehir','1');
INSERT INTO SEHIR VALUES ('Atina','2');
INSERT INTO SEHIR VALUES ('Selanik','2');
INSERT INTO SEHIR VALUES ('Leipzig','3');
INSERT INTO SEHIR VALUES ('Munih','3');
INSERT INTO SEHIR VALUES ('Liverpool','4');
INSERT INTO SEHIR VALUES ('Manchester','4');
INSERT INTO SEHIR VALUES ('Londra','4');
INSERT INTO SEHIR VALUES ('Granada','5');
INSERT INTO SEHIR VALUES ('Barselona','5');
INSERT INTO SEHIR VALUES ('Madrid','5');
INSERT INTO SEHIR VALUES ('Nijmegen','6');
INSERT INTO SEHIR VALUES ('Eindhoven','6');
INSERT INTO SEHIR VALUES ('Dortmund','3');


INSERT INTO TAKIM VALUES ('Bayern Munih','1900-02-26',6);
INSERT INTO TAKIM VALUES ('RB Leipzig','2009-05-19',5);
INSERT INTO TAKIM VALUES ('Borusia Dortmund','1909-12-19',15);
INSERT INTO TAKIM VALUES ('PAOK','1996-04-01',4);
INSERT INTO TAKIM VALUES ('AEK','1924-04-13',3);
INSERT INTO TAKIM VALUES ('Liverpool FC','1892-01-01',7);
INSERT INTO TAKIM VALUES ('Chelsea','1905-03-10',9);
INSERT INTO TAKIM VALUES ('Manchester City FC','1880-01-01',8);
INSERT INTO TAKIM VALUES ('Manchester United FC','1878-01-01',8);
INSERT INTO TAKIM VALUES ('FC Barselona','1899-01-01',11);
INSERT INTO TAKIM VALUES ('Granada FC','1931-01-01',10);
INSERT INTO TAKIM VALUES ('PSV','1913-08-31',14);
INSERT INTO TAKIM VALUES ('NEC','1900-11-15',13);
INSERT INTO TAKIM VALUES ('Eskisehir Spor','1965-06-19',2);
INSERT INTO TAKIM VALUES ('Fenerbah�e','1907-05-03',1);
INSERT INTO TAKIM VALUES ('Galatasaray','1905-10-01',1);


INSERT INTO STADYUM VALUES ('Nef Stadyumu',52000,16,1);
INSERT INTO STADYUM VALUES ('��kr� Sara�o�lu',47000,15,1);
INSERT INTO STADYUM VALUES ('Atat�rk Stadyumu',32500,14,2);
INSERT INTO STADYUM VALUES ('NEC Nijmegen',72000,13,4);
INSERT INTO STADYUM VALUES ('Philips Stad�',37000,12,5);
INSERT INTO STADYUM VALUES ('Yeni los Carmenes',22000,11,6);
INSERT INTO STADYUM VALUES ('Camp Nou',40000,10,7);
INSERT INTO STADYUM VALUES ('Manchester City stadyumu',54000,8,8);
INSERT INTO STADYUM VALUES ('Old Trafford',76000,9,8);
INSERT INTO STADYUM VALUES ('Stampford Bridge',62000,7,9);
INSERT INTO STADYUM VALUES ('Anfield',40000,6,7);
INSERT INTO STADYUM VALUES ('Red Bull Arena',55000,2,5);
INSERT INTO STADYUM VALUES ('Olimpiyat Stadyumu',37000,5,3);
INSERT INTO STADYUM VALUES ('Touba',28000,4,4);
INSERT INTO STADYUM VALUES ('Signal Iduna',81000,3,15);
INSERT INTO STADYUM VALUES ('Allianz Arena',70000,1,6);


INSERT INTO OLAYTURU VALUES ('OyuncuDe�i�imi');
INSERT INTO OLAYTURU VALUES ('FAUL');
INSERT INTO OLAYTURU VALUES ('Sar�Kart');
INSERT INTO OLAYTURU VALUES ('K�rm�z�Kart');
INSERT INTO OLAYTURU VALUES ('Penalt�');


INSERT INTO SEZON VALUES ('S�per Lig','2020-03-10','2021-12-30',1);
INSERT INTO SEZON VALUES ('Avrupa Ligi ','2020-05-10','2021-08-02',4);
INSERT INTO SEZON VALUES ('UEFA Super Kupa ','2020-05-20','2021-10-05',6);
INSERT INTO SEZON VALUES ('La Liga ','2020-06-10','2021-05-01',7);


INSERT INTO HAKEM VALUES ('1','C�neyt �ak�r','Orta Hakem');
INSERT INTO HAKEM VALUES ('1','F�rat Ayd�nus','Yard�mc� Hakem');
INSERT INTO HAKEM VALUES ('2','Anastasios','Yard�mc� Hakem');
INSERT INTO HAKEM VALUES ('2','Kyros Vassaras','D�rd�nc� Hakem');
INSERT INTO HAKEM VALUES ('3','Felix Brych','Yard�mc� Hakem');
INSERT INTO HAKEM VALUES ('3','Manuel Grafe','Orta Hakem');
INSERT INTO HAKEM VALUES ('4','Mark Clattenburg','Yard�mc� Hakem');
INSERT INTO HAKEM VALUES ('4','Anthony Taylor','D�rd�nc� Hakem');
INSERT INTO HAKEM VALUES ('5','Jes�s Gil Manzano','Orta Hakem');
INSERT INTO HAKEM VALUES ('5','Carlos Carballo','Yard�mc� Hakem');
INSERT INTO HAKEM VALUES ('6','Danny Makkelie','D�rd�nc� Hakem');
INSERT INTO HAKEM VALUES ('6','Kevin Blom','Orta Hakem');


INSERT INTO OYUNCU VALUES ('Thomas','M�ller','1989-09-13',25,'3');
INSERT INTO OYUNCU VALUES ('Manuel','Neuer','1986-03-27',01,'3');
INSERT INTO OYUNCU VALUES ('Kevin','Cample','1990-10-10',44,'3');
INSERT INTO OYUNCU VALUES ('Konrad','Laimer','1997-05-27',27,'3');
INSERT INTO OYUNCU VALUES ('Timo',' Werner','1996-03-06',13,'3');
INSERT INTO OYUNCU VALUES ('Marco','Reus','1989-05-31',11,'3');
INSERT INTO OYUNCU VALUES ('Arda ','Turan','1987-01-30',66,'1');
INSERT INTO OYUNCU VALUES ('Semih','Kaya','1991-02-24',88,'1');
INSERT INTO OYUNCU VALUES ('Mesut','�zil','1988-10-15',10,'1');
INSERT INTO OYUNCU VALUES ('Arda','G�ller','2005-02-25',25,'1');
INSERT INTO OYUNCU VALUES ('Ozan','Tufan','1995-03-23',07,'1');
INSERT INTO OYUNCU VALUES ('Onur','Ar�','2001-03-04',09,'1');
INSERT INTO OYUNCU VALUES ('Bu�ra','�a�l�yan','2004-04-13',26,'1');
INSERT INTO OYUNCU VALUES ('Jasmin','Kurtic','1989-01-10',14,'2');
INSERT INTO OYUNCU VALUES ('Nelson','Oliveira','1981-08-08',18,'2');
INSERT INTO OYUNCU VALUES ('Filipe','Soares','1999-05-20',50,'2');
INSERT INTO OYUNCU VALUES ('Steven','Zuber','1991-08-17',17,'2');
INSERT INTO OYUNCU VALUES ('Sergio','Araujo','1992-01-28',11,'2');
INSERT INTO OYUNCU VALUES ('L�is','Diaz','1997-01-13',23,'4');
INSERT INTO OYUNCU VALUES ('Diogo','Jota','1996-12-04',20,'4');
INSERT INTO OYUNCU VALUES ('Romelu','Lucaku','1993-05-13',09,'4');
INSERT INTO OYUNCU VALUES ('Mason','Mount','1999-01-10',19,'4');
INSERT INTO OYUNCU VALUES ('Riad','Mahrez','1991-02-21',26,'4');
INSERT INTO OYUNCU VALUES ('Phil','Foden','2000-05-28',47,'4');
INSERT INTO OYUNCU VALUES ('Paul','Pogba','1993-03-15',06,'4');
INSERT INTO OYUNCU VALUES ('Harry','Maguire','1993-03-05',05,'4');
INSERT INTO OYUNCU VALUES ('Ousmane','Dembele','1997-05-15',26,'5');
INSERT INTO OYUNCU VALUES ('Ansu','Fati','2002-10-31',05,'5');
INSERT INTO OYUNCU VALUES ('Ronald','Araujo','1999-03-07',04,'5');
INSERT INTO OYUNCU VALUES ('Adama','Traore','1999-01-25',11,'5');
INSERT INTO OYUNCU VALUES ('Darwin','Mach�s','1993-02-07',11,'5');
INSERT INTO OYUNCU VALUES ('Myrto ','Uzuni','1995-05-31',10,'5');
INSERT INTO OYUNCU VALUES ('Matias ','Arezo','2002-11-21',10,'5');
INSERT INTO OYUNCU VALUES ('Mario','G�tze','1992-06-03',0,'6');
INSERT INTO OYUNCU VALUES ('Ritsu','Doan','1998-06-16',25,'6');
INSERT INTO OYUNCU VALUES ('Eran','Zahavi','1987-07-25',07,'6');
INSERT INTO OYUNCU VALUES ('Noni','Madueke','2002-03-10',10,'6');
INSERT INTO OYUNCU VALUES ('Wilfried','Bony','1998-12-10',12,'6');
INSERT INTO OYUNCU VALUES ('Rodrigo','Guth','2000-10-10',05,'6');
INSERT INTO OYUNCU VALUES ('Ilias',' Bronkhorst','1997-05-10',02,'6');


INSERT INTO MAC VALUES ('2020-03-10', 1, 1,2,16,15,2);
INSERT INTO MAC VALUES ('2020-04-12', 1, 2,1,15,16,1);
INSERT INTO MAC VALUES ('2020-04-20', 1, 0,1,15,14,3);
INSERT INTO MAC VALUES ('2020-12-05', 1, 1,2,14,16,1);
INSERT INTO MAC VALUES ('2020-05-09', 2, 3,2,1,13,4);
INSERT INTO MAC VALUES ('2020-07-10', 2, 2,2,12,2,12);
INSERT INTO MAC VALUES ('2020-12-10', 2, 1,3,16,3,1);
INSERT INTO MAC VALUES ('2020-09-10', 2, 3,2,8,10,8);
INSERT INTO MAC VALUES ('2020-03-10', 4, 2,1,10,11,6);
INSERT INTO MAC VALUES ('2020-03-10', 4, 0,2,11,10,7);
INSERT INTO MAC VALUES ('2020-03-10', 2, 2,3,4,5,13);
INSERT INTO MAC VALUES ('2020-03-10', 2, 1,5,12,11,5);
INSERT INTO MAC VALUES ('2020-03-10', 2, 0,3,6,10,9);
INSERT INTO MAC VALUES ('2020-03-10', 3, 2,1,3,7,10);
INSERT INTO MAC VALUES ('2020-03-10', 3, 1,1,12,5,13);
INSERT INTO MAC VALUES ('2020-03-10', 3, 0,6,10,14,3);
INSERT INTO MAC VALUES ('2020-03-10', 3, 3,2,9,8,8);


INSERT INTO TAKIMSEZONDAOYNAR VALUES (1,2,3,2,1,1,0,0,3);
INSERT INTO TAKIMSEZONDAOYNAR VALUES (2,2,2,2,0,0,0,1,1);
INSERT INTO TAKIMSEZONDAOYNAR VALUES (3,2,3,1,2,1,0,0,3);
INSERT INTO TAKIMSEZONDAOYNAR VALUES (3,3,2,1,1,1,0,0,3);
INSERT INTO TAKIMSEZONDAOYNAR VALUES (4,2,2,3,-1,0,1,0,0);
INSERT INTO TAKIMSEZONDAOYNAR VALUES (5,2,3,2,1,1,0,0,3);
INSERT INTO TAKIMSEZONDAOYNAR VALUES (5,3,1,1,0,0,0,1,1);
INSERT INTO TAKIMSEZONDAOYNAR VALUES (6,2,0,3,-3,0,1,0,0);
INSERT INTO TAKIMSEZONDAOYNAR VALUES (7,3,1,2,-1,0,1,0,0);
INSERT INTO TAKIMSEZONDAOYNAR VALUES (8,2,3,2,1,1,0,0,3);
INSERT INTO TAKIMSEZONDAOYNAR VALUES (8,3,2,3,-1,0,1,0,0);
INSERT INTO TAKIMSEZONDAOYNAR VALUES (9,3,3,2,1,1,0,0,3);
INSERT INTO TAKIMSEZONDAOYNAR VALUES (10,2,5,3,-2,1,1,0,3);
INSERT INTO TAKIMSEZONDAOYNAR VALUES (10,3,0,6,-6,0,1,0,0);
INSERT INTO TAKIMSEZONDAOYNAR VALUES (10,4,4,1,3,2,0,0,6);
INSERT INTO TAKIMSEZONDAOYNAR VALUES (11,3,5,1,4,1,0,0,3);
INSERT INTO TAKIMSEZONDAOYNAR VALUES (11,4,1,4,-3,0,2,0,0);
INSERT INTO TAKIMSEZONDAOYNAR VALUES (12,2,3,7,-4,0,1,0,0);
INSERT INTO TAKIMSEZONDAOYNAR VALUES (12,3,1,1,0,0,0,1,1);
INSERT INTO TAKIMSEZONDAOYNAR VALUES (13,2,2,3,-1,0,1,0,0);
INSERT INTO TAKIMSEZONDAOYNAR VALUES (14,1,2,2,0,1,1,0,3);
INSERT INTO TAKIMSEZONDAOYNAR VALUES (14,3,6,0,6,1,0,0,3);
INSERT INTO TAKIMSEZONDAOYNAR VALUES (15,1,4,3,1,2,1,0,6);
INSERT INTO TAKIMSEZONDAOYNAR VALUES (16,1,3,3,0,1,1,0,3);
INSERT INTO TAKIMSEZONDAOYNAR VALUES (16,2,1,3,-2,0,1,0,0);


INSERT INTO YONETIR VALUES (1,1);
INSERT INTO YONETIR VALUES (2,2);
INSERT INTO YONETIR VALUES (3,3);
INSERT INTO YONETIR VALUES (4,4);
INSERT INTO YONETIR VALUES (5,5);
INSERT INTO YONETIR VALUES (6,6);
INSERT INTO YONETIR VALUES (7,7);
INSERT INTO YONETIR VALUES (8,8);
INSERT INTO YONETIR VALUES (9,9);
INSERT INTO YONETIR VALUES (10,10);
INSERT INTO YONETIR VALUES (11,11);
INSERT INTO YONETIR VALUES (12,12);
INSERT INTO YONETIR VALUES (5,13);
INSERT INTO YONETIR VALUES (3,14);
INSERT INTO YONETIR VALUES (4,15);
INSERT INTO YONETIR VALUES (8,16);


INSERT INTO MACOLAYI VALUES ('21:06',4,13,Null,1);
INSERT INTO MACOLAYI VALUES ('20:46',1,9,10,1);
INSERT INTO MACOLAYI VALUES ('20:52',2,5,Null,11);
INSERT INTO MACOLAYI VALUES ('21:06',4,12,Null,1);
INSERT INTO MACOLAYI VALUES ('20:32',1,32,33,10);
INSERT INTO MACOLAYI VALUES ('21:08',4,31,Null,10);
INSERT INTO MACOLAYI VALUES ('20:47',3,34,Null,15);
INSERT INTO MACOLAYI VALUES ('21:42',5,39,Null,9);
INSERT INTO MACOLAYI VALUES ('20:26',3,26,Null,17);


INSERT INTO Pozisyon VALUES('Kaleci'),('Defans'),('Orta Saha'),('Forvet'),('D�� Ba�lant�lar'); 


INSERT INTO Sponsor VALUES('Opet'),('Beko'),('Do�u�'),('T�rpa�'),('HDI Sigorta'), 
                          ('Nesine.com'),('Ac�badem'),
						  ('Turkish Airlines'),('ADIDAS'),('�lker');


INSERT INTO SponsorOlur VALUES(1,1,'2020-02-11','2021-02-11',750.000), 
                              (2,2,'2020-01-01','2021-01-01',620.000), 
                              (3,3,'2020-03-04','2021-03-04',196.000), 
                              (4,4,'2020-11-19','2021-11-19',321.000), 
                              (5,5,'2020-12-20','2021-12-20',211.000), 
                              (6,6,'2020-10-10','2021-10-10',147.000), 
                              (7,7,'2020-09-17','2021-09-17',254.000), 
                              (8,8,'2020-12-06','2021-12-06',356.000), 
                              (9,9,'2020-09-09','2021-09-09',421.000), 
                              (10,10,'2020-10-02','2021-10-02',144.000),
							  (13,8,'2020-12-06','2021-12-06',356.000), 
                              (11,6,'2020-09-09','2021-09-09',421.000), 
                              (14,4,'2020-10-02','2021-10-02',144.000); 


INSERT INTO SOZLESME VALUES ('2020-02-11','2021-02-11',750.000,1,2),
                            ('2020-01-01','2021-01-01',620.000,2,14), 
                            ('2020-03-04','2021-03-04',196.000,3,11), 
                            ('2020-11-19','2021-11-19',321.000,4,32), 
                            ('2020-12-20','2021-12-20',211.000,5,15), 
                            ('2020-10-10','2021-10-10',147.000,1,17), 
                            ('2020-09-17','2021-09-17',254.000,2,9), 
                            ('2020-12-06','2021-12-06',356.000,3,6), 
                            ('2020-09-09','2021-09-09',421.000,4,26), 
                            ('2020-10-02','2021-10-02',144.000,5,35),
							('2020-02-10','2021-11-02',254.000,5,35),
							('2020-09-07','2021-12-10',147.000,1,17),
                            ('2020-09-17','2021-10-27',254.000,2,9);



INSERT INTO SOZLESMEYAPAR VALUES (1,1);
INSERT INTO SOZLESMEYAPAR VALUES (2,4);
INSERT INTO SOZLESMEYAPAR VALUES (3,15);
INSERT INTO SOZLESMEYAPAR VALUES (4,11);
INSERT INTO SOZLESMEYAPAR VALUES (5,4);
INSERT INTO SOZLESMEYAPAR VALUES (6,5);
INSERT INTO SOZLESMEYAPAR VALUES (7,15);
INSERT INTO SOZLESMEYAPAR VALUES (8,3);
INSERT INTO SOZLESMEYAPAR VALUES (9,9);
INSERT INTO SOZLESMEYAPAR VALUES (10,12);
INSERT INTO SOZLESMEYAPAR VALUES (11,8);
INSERT INTO SOZLESMEYAPAR VALUES (12,13);
INSERT INTO SOZLESMEYAPAR VALUES (13,14);

