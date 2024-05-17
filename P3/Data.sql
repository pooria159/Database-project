INSERT INTO Person VALUES 
('99521280', '09177318980' , 'Ali' , 'Mohammadi' , 'Ali_Mohammadi@gmail.com' , '2002-01-01' , 'Male'),
('99521281', '09177318981' , 'Pooria' , 'Hosseini' , 'Pooria_Hosseini@gmail.com' , '2002-02-01' , 'Male'),
('99521282', '09177318982' , 'Abtin' , 'Ahmadi' , 'Abtin_Ahmadi@gmail.com' , '2002-03-01' , 'Male'),
('99521283', '09177318983' , 'Adel' , 'Moradi' , 'Adel_Moradi@gmail.com' , '2002-04-01' , 'Male'),
('99521284', '09177318984' , 'Afshin' , 'Heydari' , 'Afshin_Heydari@gmail.com' , '2002-05-01' , 'Male'),
('99521285', '09177318985' , 'Amir' , 'Karimi' , 'Amir_Karimi@gmail.com' , '2002-06-01' , 'Male'),
('99521286', '09177318986' , 'Arad' , 'Mousavi' , 'Arad_Mousavi@gmail.com' , '2002-07-01' , 'Male'),
('99521287', '09177318987' , 'Pooria' , 'Rahimi' , 'Pooria_Rahimi@gmail.com' , '2002-08-01' , 'Male'),
('99521288', '09177318988' , 'Marjan' , 'Ghasemi' , 'Marjan_Ghasemi@gmail.com' , '2002-08-01' , 'Female'),
('99521289', '09177318989' , 'Arya' , 'Jafari' , 'Arya_Jafari@gmail.com' , '2002-01-02' , 'Female'),
('99521290', '09177318990' , 'Hoda' , 'Ebrahimi' , 'Hoda_Ebrahimi@gmail.com' , '2002-02-01' , 'Female'),
('99521291', '09177318991' , 'Farnaz' , 'Akbari' , 'Farnaz_Akbari@gmail.com' , '2002-02-03' , 'Female'),
('99521292', '09177318992' , 'Hana' , 'Yousefi' , 'Hana_Yousefi@gmail.com' , '2002-02-01' , 'Female'),
('99521293', '09177318993' , 'Goli' , 'Rezaei' , 'Goli_Rezaei@gmail.com' , '2002-02-04' , 'Female'),
('99521294', '09177318994' , 'Fatemeh' , 'Salehi' , 'Fatemeh_Salehi@gmail.com' , '2002-02-02', 'Female')



INSERT INTO Passenger VALUES 
(0 , 0 , '99521280'),
(0 , 0 , '99521281'),
(0 , 0 , '99521282'),
(0 , 0 , '99521283'),
(0 , 0 , '99521284'),
(0 , 0 , '99521285'),
(0 , 0 , '99521286'),
(0 , 0 , '99521287'),
(0 , 0 , '99521288'),
(0 , 0 , '99521289'),
(0 , 0 , '99521290'),
(0 , 0 , '99521291'),
(0 , 0 , '99521292'),
(0 , 0 , '99521293'),
(0 , 0 , '99521294')



INSERT INTO FLIGHT_CREW VALUES
(1 , 'Diploma' , 'A220180' , TRUE , FALSE , 11213),
(2 , 'Bachelor' , 'A221180' , TRUE , FALSE , 11313),
(1 , 'Bachelor' , 'A222180' , TRUE , FALSE , 11413),
(2 , 'Bachelor' , 'A223180' , TRUE , FALSE , 11513),
(1 , 'Diploma' , 'A224180' , TRUE , FALSE , 11613),
(1 , 'Diploma' , 'A225180' , TRUE , FALSE , 11713),
(2 , 'Bachelor' , 'A226180' , TRUE , FALSE , 11813),
(1 , 'Bachelor' , 'A227180' , TRUE , FALSE , 11913),
(2 , 'Diploma' , 'A228180' , TRUE , FALSE , 12013),
(1 , 'Bachelor' , 'A229180' , TRUE , FALSE , 12113),
(2 , 'P.H.D' , 'A230000' , FALSE , TRUE , 12201),
(1 , 'Master' , 'A220001' , FALSE , TRUE , 12302),
(3 , 'Bachelor' , 'A220002' , FALSE , TRUE , 12403),
(1 , 'P.H.D' , 'A220003' , FALSE , TRUE , 12504),
(2 , 'Master' , 'A220004' , FALSE , TRUE , 12605)



INSERT INTO Ticket VALUES 
(20 , 800.000 , 'firstcalss' , 'AB0011' , 'KH26' , '99521280'),  
(27 , 500.000 , 'economyclass' , 'AB0012' , 'KH27' , '99521281'),
(32 , 600.000 , 'buisinessclass' , 'AB0013' , 'KH28' , '99521282'),
(31 , 450.000 , 'economyclass' , 'AB0014' , 'KH29' , '99521283'),
(48 , 850.000 , 'firstcalss' , 'AB0015' , 'KH30' , '99521284'),
(24 , 500.000 , 'economyclass' , 'AB0016' , 'KH31' , '99521285'),
(29 , 900.000 , 'firstcalss' , 'AB0017' , 'KH32' , '99521286'),
(27 , 400.000 , 'economyclass' , 'AB0018' , 'KH33' , '99521287'),
(29 , 750.000 , 'firstcalss' , 'AB0019' , 'KH34' , '99521288'),
(21 , 500.000 , 'economyclass' , 'AB0020' , 'KH35' , '99521289'),
(22 , 600.000 , 'buisinessclass' , 'AB0021' , 'KH36' , '99521290'),
(15 , 500.000 , 'economyclass' , 'AB0022' , 'KH37' , '99521291'),
(10 , 400.000 , 'economyclass' , 'AB0023' , 'KH38' , '99521292'),
(11 , 650.000 , 'buisinessclass' , 'AB0024' , 'KH39' , '99521293'),
(7 ,  950.000 , 'firstcalss' , 'AB0025' , 'KH39' , '99521294')



INSERT INTO Airport VALUES 
('IRAN' , 'Tehran' , 'Tehran' , 'Imam Khomeini' , 00121 ,  12153 , 'A220180'),
('IRAN' , 'Tehran' , 'Tehran' , 'Mehr abad' , 11121 ,  12154 , 'A221180'),
('IRAN' , 'Hormozgan' , 'Bandar Abbas' , 'Bandar Abbas International Airport' , 13121 ,  12155 , 'A222180'),
('IRAN' , 'Shiraz' , 'Shiraz' , 'Shahid Dastgheib' , 14121 ,  12156 , 'A223180'),
('IRAN' , 'Khorasan Razavi' , 'Mashhad' , 'Shahid Hasheminejad' , 15121 ,  12157 , 'A224180'),
('IRAN' , 'Khuzestan' , 'Ahwaz' , 'Shahid Soleimani' , 16121 ,  12158 , 'A225180'),
('France' , 'Paris' , 'Paris' , 'Paris-Charles-de-Gaulle' , 00550 ,  12158 , 'A226180'),
('Germany' , 'Berlin' , 'Berlin' , 'Flughafen Tegel' , 00780 ,  12159 , 'A227180'),
('Italy' , 'Roma' , 'Roma' , 'Ciampino' , 00451 ,  12160 , 'A228180')



INSERT INTO airline_company VALUES 
(720 , 'IRAN' , 'IranAir'),
(721 , 'UAE' , 'Emirates Airline'),
(722 , 'Qatar' , 'Qatar AirWays'),
(723 , 'China' , 'Air China'),
(724 , 'Japan' , 'Nippon AirWays'),
(725 , 'Germany' , 'Air Berlin Group'),
(726 , 'Italy' , 'Alitalia'),
(727 , 'Germany' , 'Lufthansa'),
(728 , 'Spain' , 'Vueling Airlines'),
(729 , 'Chile' , 'LAN Airllines')



INSERT INTO airplane VALUES 
(40 , 30 , 6390 , 'Nimblecry' , 720 , 103),
(36 , 35 , 6391 , 'Dragonforce' , 721 , 104),
(36 , 35 , 6392 , 'Agile Vulture' , 722 , 105),
(40 , 30 , 6393 , 'Skyforce' , 723 , 106),
(40 , 40 , 6394 , 'Primecharge' , 724 , 107),
(28 , 45 , 6395 , 'Bold Harrier' , 725 , 108),
(40 , 30 , 6396 , 'Cloudcore' , 726 , 109),
(40 , 30 , 6397 , 'Swiftroar' , 727 , 110),
(36 , 35 , 6398 , 'Bad Harrier' , 728 , 111),
(40 , 30 , 6399 , 'Blue Duke' , 729 , 112)



INSERT INTO gate VALUES 
(1 , 00121),
(2 , 11121),
(3 , 12121),
(4 , 13121),
(5 , 14121),
(6 , 15121),
(7 , 16121),
(8 , 17121),
(9 , 18121),
(10 , 19121)



INSERT INTO reports VALUES 
('2021-11-28', 1501),
('2021-11-29', 1502),
('2021-11-30', 1503),
('2022-01-01', 1504),
('2022-01-01', 1505),
('2022-01-02', 1506),
('2022-01-03', 1507),
('2022-01-01', 1508),
('2022-01-01', 1509),
('2022-02-05', 1600)



INSERT INTO flight VALUES 
('2021-10-11' , 8881 , 'Bandar Abbas' , 120 , 'Tehran' , '99521280' , 6390 , 00121),
('2021-10-12' , 8882 , 'Shiraz' , 90 , 'Bandar Abbas' , '99521281' , 6391 , 11121),
('2021-10-13' , 8883 , 'Tehran' , 45 , 'Shiraz' , '99521282' , 6392 , 12121),
('2021-12-10' , 8884 , 'Mashhad' , 95 , 'Tehran' , '99521283' , 6393 , 13121),
('2021-04-17' , 8885 , 'Tehran' , 60 , 'Mashhad' , '99521284' , 6394 , 14121),
('2021-06-05' , 8886 , 'Bandar Abbas' , 75 , 'Tehran' , '99521285' , 6395 , 15121),
('2021-10-18' , 8887 , 'Ahwaz' , 120 , 'Tehran' , '99521286' , 6396 , 16121),
('2021-10-13' , 8888 , 'Shiraz' , 135 , 'Tehran' , '99521287' , 6397 , 17121),
('2021-10-16' , 8889 , 'Tehran' , 100 , 'Bandar Abbas' , '99521288' , 6398 , 18121),
('2021-06-08' , 8890 , 'Ahwaz' , 115 , 'Tehran' , '99521289' , 6399 , 19121),
('2021-07-25' , 8891 , 'Mashhad' , 120 , 'Ahwaz' , '99521290' , 6400 , 20121)



INSERT INTO land_takeoff VALUES 
(00121 , 8881),
(11121 , 8882),
(12121 , 8883),
(13121 , 8884),
(14121 , 8885),
(15121 , 8886),
(16121 , 8887),
(17121 , 8888),
(18121 , 8889),
(19121 , 8890),
(20121 , 8891)
