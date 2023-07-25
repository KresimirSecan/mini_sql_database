ALTER SESSION SET NLS_DATE_FORMAT ='dd-mm-yyyy'; 
-- | ARTIKLI | --
INSERT INTO ARTIKL
VALUES (0,'coca cola',2.0,'boca 0.25');
INSERT INTO BEZALKOHOLNA(ARTIKL_ID, SECER)
VALUES (0,130);
INSERT INTO ARTIKL
VALUES (1,'sprite',2.0,'boca 0.25');
INSERT INTO BEZALKOHOLNA(ARTIKL_ID, SECER)
VALUES (1,90);
INSERT INTO ARTIKL
VALUES (2,'pipi',2.0,'boca 0.25');
INSERT INTO BEZALKOHOLNA(ARTIKL_ID, SECER)
VALUES (2,110);
INSERT INTO ARTIKL
VALUES (3,'pepsi',2.0,'boca 0.25');
INSERT INTO BEZALKOHOLNA(ARTIKL_ID, SECER)
VALUES (3,120);
INSERT INTO ARTIKL
VALUES (4,'cedevita',1.50,'paketic 20g');
INSERT INTO BEZALKOHOLNA(ARTIKL_ID, SECER)
VALUES (4,80);
INSERT INTO ARTIKL
VALUES (5,'sensation',2.0,'boca 0.25');
INSERT INTO BEZALKOHOLNA(ARTIKL_ID, SECER)
VALUES (5,95);
INSERT INTO ARTIKL
VALUES (6,'hidra',2.20,'boca 0.5');
INSERT INTO BEZALKOHOLNA(ARTIKL_ID, SECER)
VALUES (6,70);
INSERT INTO ARTIKL
VALUES (7,'mineralna voda',1.50,'boca 0.25');
INSERT INTO BEZALKOHOLNA(ARTIKL_ID, SECER)
VALUES (7,0);
INSERT INTO ARTIKL
VALUES (8,'julius main kava aparat',12.5,'paket 1 kg');
INSERT INTO BEZALKOHOLNA(ARTIKL_ID, KOFEIN)
VALUES (8,110);
INSERT INTO ARTIKL
VALUES (9,'cappucino franck',3.0,'8 paketića od 20g');
INSERT INTO BEZALKOHOLNA(ARTIKL_ID, KOFEIN)
VALUES (9,70);
INSERT INTO ARTIKL
VALUES (10,'nescaffe',1.90,'8 paketića od 20g');
INSERT INTO BEZALKOHOLNA(ARTIKL_ID, KOFEIN)
VALUES (10,90);
INSERT INTO ARTIKL
VALUES (11,'caj julius main',3.15,'25 vrećica');
INSERT INTO BEZALKOHOLNA(ARTIKL_ID, KOFEIN)
VALUES (11,0);
INSERT INTO ARTIKL
VALUES (12,'caj franck',2.80,'25 vrećica');
INSERT INTO BEZALKOHOLNA(ARTIKL_ID, KOFEIN)
VALUES (12,0);
INSERT INTO ARTIKL
VALUES (13,'costa coffe kava aparat',17.52,'paket 1 kg');
INSERT INTO BEZALKOHOLNA(ARTIKL_ID, KOFEIN)
VALUES (13,120);
INSERT INTO ARTIKL
VALUES (14,'keksi za ugostiteljstvo',35.68,'paket 500 komada');
INSERT INTO OSTALO
VALUES (14);
INSERT INTO ARTIKL
VALUES (15,'bijeli secer',10.95,'1000 komada paketici 4 g');
INSERT INTO OSTALO
VALUES (15);
INSERT INTO ARTIKL
VALUES (16,'smedi secer',13.15,'1000 komada paketici 4 g');
INSERT INTO OSTALO
VALUES (16);
INSERT INTO ARTIKL
VALUES (17,'badel pelinkovac',13.89,'boca 1l');
INSERT INTO ALKOHOLNA
VALUES(17,0.31);
INSERT INTO ARTIKL
VALUES (18,'bacardi',20.97,'boca 1l');
INSERT INTO ALKOHOLNA
VALUES(18,0.40);
INSERT INTO ARTIKL
VALUES (19,'jack daniels',25.48,'boca 1l');
INSERT INTO ALKOHOLNA
VALUES(19,0.40);
INSERT INTO ARTIKL
VALUES (20,'jagermaister',21.0,'boca 1l');
INSERT INTO ALKOHOLNA
VALUES(20,0.35);
INSERT INTO ARTIKL
VALUES (21,'vigor vodka',11.0,'boca 1l');
INSERT INTO ALKOHOLNA
VALUES(21,0.40);
INSERT INTO ARTIKL
VALUES (22,'heineken',1.52,'boca 0.33');
INSERT INTO ALKOHOLNA
VALUES(22,0.05);
INSERT INTO ARTIKL
VALUES (23,'ozujsko',1.10,'boca 0.5');
INSERT INTO ALKOHOLNA
VALUES(23,0.05);
INSERT INTO ARTIKL
VALUES (24,'osjecko',0.95,'boca 0.5');
INSERT INTO ALKOHOLNA
VALUES(24,0.48);
INSERT INTO ARTIKL
VALUES (25,'carlsberg',1.34,'boca 0.33');
INSERT INTO ALKOHOLNA
VALUES(25,0.05);
INSERT INTO ARTIKL
VALUES (26,'karlovacko',1.15,'boca 0.5');
INSERT INTO ALKOHOLNA
VALUES(26,0.05);
INSERT INTO ARTIKL
VALUES (27,'kutijevo grasevina ',1.46,'boca 0.187');
INSERT INTO ALKOHOLNA
VALUES(27,0.13);
INSERT INTO ARTIKL
VALUES (28,'kutijevo grasevina',4.64,'boca 1l');
INSERT INTO ALKOHOLNA
VALUES(28,0.13);
INSERT INTO ARTIKL
VALUES (29,'kutijevo cuvee',1.59,'boca 0.187');
INSERT INTO ALKOHOLNA
VALUES(29,0.13);
INSERT INTO ARTIKL
VALUES (30,'kutijevo cuvee',3.45,'boca 1l');
INSERT INTO ALKOHOLNA
VALUES(30,0.13);
INSERT INTO ARTIKL
VALUES (31,'moet sampanjac',47.80,'boca 0.75');
INSERT INTO ALKOHOLNA
VALUES(31,0.12);

-- | GRAD | --
INSERT INTO GRAD VALUES (31000, 'OSIJEK');
INSERT INTO GRAD VALUES (10000, 'ZAGREB');
INSERT INTO GRAD VALUES (31540, 'DONJI MIHOLJAC');

-- | LOKACIJA | --
INSERT INTO LOKACIJA VALUES(01,'ulica Hrvatske republike',19, 31000);
INSERT INTO LOKACIJA VALUES(02, 'Gacka ulica',37, 31000);
INSERT INTO LOKACIJA VALUES(03, 'Nasicko naselje',12, 31000);
INSERT INTO LOKACIJA VALUES(04, 'ulica Bartola Kašića',91, 31000);
INSERT INTO LOKACIJA VALUES(05, 'ulica Lavoslava Ružičke',8, 31000);
INSERT INTO LOKACIJA VALUES(06, 'Krstova ulica',211, 31000);
INSERT INTO LOKACIJA VALUES(07, 'Sibenska ulica',131, 31000);
INSERT INTO LOKACIJA VALUES(08, 'ulica Ivana Gundulića',96, 31000);
INSERT INTO LOKACIJA VALUES(09, 'Kozjacka ulica', 84,31000);
INSERT INTO LOKACIJA VALUES(010, 'Srebrnjak',44, 10000);
INSERT INTO LOKACIJA VALUES(011, 'Zelengaj',881, 10000);
INSERT INTO LOKACIJA VALUES(012, 'Jelenovac',3011, 10000);
INSERT INTO LOKACIJA VALUES(013, 'ulica Siska Mencetica',14, 10000);
INSERT INTO LOKACIJA VALUES(014, 'Zaharova ulica',522, 10000);
INSERT INTO LOKACIJA VALUES(015, 'ulica Ivana Gundulića',4, 31540);
INSERT INTO LOKACIJA VALUES(016, 'ulica Ruđera Boškovića',27, 31540);

-- | VODITELJ | --
INSERT INTO VODITELJ VALUES(94190591113,'Jozo','Malenica',1800,'HR41934914149','jozo.malenica@gmail.com');
INSERT INTO VODITELJ VALUES(31190532113,'Zdenko','Zorkic',2350,'HR81934414149','zdenko.zorkic@gmail.com');
INSERT INTO VODITELJ VALUES(864998637113,'Darko','Klempic',2200,'HR318934913149','darko.klempic@gmail.com');

-- | POSLOVNICA | --
INSERT INTO POSLOVNICA VALUES(1,94190591113,02);
INSERT INTO POSLOVNICA VALUES(2,31190532113,03);
INSERT INTO POSLOVNICA VALUES(3,31190532113,015);
INSERT INTO POSLOVNICA VALUES(4,864998637113,014);
INSERT INTO POSLOVNICA VALUES(5,864998637113,012);

-- | RADNIK | --
INSERT INTO RADNIK VALUES(94819203764,'Marko','Istvanic',1500,'HR85924032',1);
INSERT INTO RADNIK VALUES(22472915273,'Ivan','Peric',1482,'HR139867322',1);
INSERT INTO RADNIK VALUES(78159628309,'Ana','Kovacevic',1510,'HR453286545',1);
INSERT INTO RADNIK VALUES(10847012837,'Petar','Horvat',1635,'HR975843434',1);
INSERT INTO RADNIK VALUES(30192736456,'Maja','Novak',1378,'HR6382904545',1);
INSERT INTO RADNIK VALUES(43274910578,'Filip','Kovac',1452,'HR521038455',2);
INSERT INTO RADNIK VALUES(71539027648,'Marija','Petrovic',1523,'HR23894864',2);
INSERT INTO RADNIK VALUES(63510628971,'Ivan','Markovic',1743,'HR67432834343',2);
INSERT INTO RADNIK VALUES(91925648703,'Ana','Juric',1564,'HR832197343',2);
INSERT INTO RADNIK VALUES(60374910628,'Luka','Milic',1395,'HR4198675454',2);
INSERT INTO RADNIK VALUES(44071569382,'Elena','Knezevic',1587,'HR758431434',3);
INSERT INTO RADNIK VALUES(20521937684,'Ante','Babic',1672,'HR578432242',3);
INSERT INTO RADNIK VALUES(30593840261,'Nina','Kovacevic',1499,'HR172839242',3);
INSERT INTO RADNIK VALUES(40123746985,'Ivan','Horvat',1798,'HR43891065',3);
INSERT INTO RADNIK VALUES(11159628390,'Ema','Pavic',1468,'HR935278754',3);
INSERT INTO RADNIK VALUES(51749623850,'Josip','Rukavina',1576,'HR783492735',4);
INSERT INTO RADNIK VALUES(62374910685,'Mia','Vukovic',1365,'HR586243272',4);
INSERT INTO RADNIK VALUES(90582149736,'Ivan','Tomic',1550,'HR24519752',4);
INSERT INTO RADNIK VALUES(12471936582,'Elena','Kovac',1689,'HR978234242',4);
INSERT INTO RADNIK VALUES(31649302758,'Luka','Novak',1423,'HR8273945324',4);
INSERT INTO RADNIK VALUES(80592736841,'Petra','Varga',1527,'HR6382192442',5);
INSERT INTO RADNIK VALUES(51459628730,'Iva','Perokovic',1723,'HR294831241',5);
INSERT INTO RADNIK VALUES(70539417268,'Ivan','Knezevic',1534,'HR7942151424',5);
INSERT INTO RADNIK VALUES(80271936548,'Mara','Babic',1337,'HR842173142',5);
INSERT INTO RADNIK VALUES(32063917485,'Marko','Horvat',1592,'HR738495142',5);
INSERT INTO RADNIK VALUES(80194732856,'Eva','Milic',1446,'HR2163981424',5);

-- | SURADNIK | --
INSERT INTO SURADNIK VALUES (010,'Vaduz',07);
INSERT INTO SURADNIK VALUES (020,'Amsterdam',01);
INSERT INTO SURADNIK VALUES (030,'Minds',06);
INSERT INTO SURADNIK VALUES (040,'Firma',05);
INSERT INTO SURADNIK VALUES (050,'Dali',08);
INSERT INTO SURADNIK VALUES (060,'Glenns',016);
INSERT INTO SURADNIK VALUES (070,'Palma',010);
INSERT INTO SURADNIK VALUES (080,'Cug',013);
INSERT INTO SURADNIK VALUES (090,'Limb',011);
INSERT INTO SURADNIK VALUES (0100,'Krivi put',014);
INSERT INTO SURADNIK VALUES (0110,'Face2Face',09);
-- | NARUDZBA | -- 
INSERT INTO NARUDZBA VALUES (50,'13-07-2023',1,010);
INSERT INTO NARUDZBA VALUES (51,'08-08-2023',2,020);
INSERT INTO NARUDZBA VALUES (52,'05-08-2023',2,030);
INSERT INTO NARUDZBA VALUES (53,'07-08-2023',1,010);
INSERT INTO NARUDZBA VALUES (54,'13-07-2023',1,040);
INSERT INTO NARUDZBA VALUES (55,'31-07-2023',2,050);
INSERT INTO NARUDZBA VALUES (56,'25-07-2023',3,060);
INSERT INTO NARUDZBA VALUES (57,'15-08-2023',3,060);
INSERT INTO NARUDZBA VALUES (58,'20-07-2023',4,0100);
INSERT INTO NARUDZBA VALUES (59,'02-08-2023',4,0110);
INSERT INTO NARUDZBA VALUES (60,'09-09-2023',4,0100);
INSERT INTO NARUDZBA VALUES (61,'29-07-2023',5,090);
INSERT INTO NARUDZBA VALUES (62,'03-07-2023',5,070);
INSERT INTO NARUDZBA VALUES (63,'12-07-2023',5,080);
INSERT INTO NARUDZBA VALUES (64,'27-07-2023',5,070);
-- | DOBAVLJAC | --
INSERT INTO DOBAVLJAC VALUES (111,'Pivovara Osijek','HR63981723',04);
INSERT INTO DOBAVLJAC VALUES (222,'Jubilus','HR10249785',01);
INSERT INTO DOBAVLJAC VALUES (333,'Udruga pica Cepin','HR57293601',06);
INSERT INTO DOBAVLJAC VALUES (444,'Kutjevacki podrumi','HR89325140',09);
INSERT INTO DOBAVLJAC VALUES (555,'Badel','HR41780293',03);
INSERT INTO DOBAVLJAC VALUES (666,'Pivovara Zagreb','HR20936581',10);
INSERT INTO DOBAVLJAC VALUES (777,'Pivovara Karlovac','HR76541023',11);
INSERT INTO DOBAVLJAC VALUES (888,'Grupa Belje','HR31849205',16);

-- | ARTPOSL | --
--ARTPOSL_ID , KOLICINA, DOBAVLJAC_ID, ARTIKL_ID
INSERT INTO ARTPOSL VALUES (0110,100,111,24);
INSERT INTO ARTPOSL VALUES (0220,120,111,24);
INSERT INTO ARTPOSL VALUES (0330,500,111,24);
INSERT INTO ARTPOSL VALUES (0440,10,222,8);
INSERT INTO ARTPOSL VALUES (0550,20,222,12);
INSERT INTO ARTPOSL VALUES (0660,5,222,14);
INSERT INTO ARTPOSL VALUES (0770,100,333,0);
INSERT INTO ARTPOSL VALUES (0880,100,333,5);
INSERT INTO ARTPOSL VALUES (0990,25,444,31);
INSERT INTO ARTPOSL VALUES (01110,15,555,17);
INSERT INTO ARTPOSL VALUES (02220,10,555,19);
INSERT INTO ARTPOSL VALUES (03330,15,555,20);
INSERT INTO ARTPOSL VALUES (04440,500,666,23);
INSERT INTO ARTPOSL VALUES (05550,700,666,23);
INSERT INTO ARTPOSL VALUES (06660,400,777,26);
INSERT INTO ARTPOSL VALUES (07770,200,777,26);
INSERT INTO ARTPOSL VALUES (08880,200,777,26);
INSERT INTO ARTPOSL VALUES (09990,40,888,27);
INSERT INTO ARTPOSL VALUES (011110,300,888,28);
INSERT INTO ARTPOSL VALUES (022220,300,888,30);


-- | ARTIKL_POSL_DOBAVLJAC | --
--APD ID, ARTPOSL_ID,POSLOVNICA_ID 
INSERT INTO ARTIKL_POSL_DOBAVLJAC VALUES (70,0110,1);
INSERT INTO ARTIKL_POSL_DOBAVLJAC VALUES (71,0440,1);
INSERT INTO ARTIKL_POSL_DOBAVLJAC VALUES (72,0550,1);
INSERT INTO ARTIKL_POSL_DOBAVLJAC VALUES (73,0660,1);
INSERT INTO ARTIKL_POSL_DOBAVLJAC VALUES (74,0220,2);
INSERT INTO ARTIKL_POSL_DOBAVLJAC VALUES (75,04440,2);
INSERT INTO ARTIKL_POSL_DOBAVLJAC VALUES (76,06660,2);
INSERT INTO ARTIKL_POSL_DOBAVLJAC VALUES (77,0770,2);
INSERT INTO ARTIKL_POSL_DOBAVLJAC VALUES (78,0330,3);
INSERT INTO ARTIKL_POSL_DOBAVLJAC VALUES (79,07770,3);
INSERT INTO ARTIKL_POSL_DOBAVLJAC VALUES (80,05550,3);
INSERT INTO ARTIKL_POSL_DOBAVLJAC VALUES (81,03330,3);
INSERT INTO ARTIKL_POSL_DOBAVLJAC VALUES (82,08880,4);
INSERT INTO ARTIKL_POSL_DOBAVLJAC VALUES (83,09990,4);
INSERT INTO ARTIKL_POSL_DOBAVLJAC VALUES (84,011110,4);
INSERT INTO ARTIKL_POSL_DOBAVLJAC VALUES (85,022220,4);
INSERT INTO ARTIKL_POSL_DOBAVLJAC VALUES (86,0880,5);
INSERT INTO ARTIKL_POSL_DOBAVLJAC VALUES (87,0990,5);
INSERT INTO ARTIKL_POSL_DOBAVLJAC VALUES (88,01110,5);
INSERT INTO ARTIKL_POSL_DOBAVLJAC VALUES (89,02220,5);
