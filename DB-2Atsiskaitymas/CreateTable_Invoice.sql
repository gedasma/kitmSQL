CREATE TABLE Invoice (
    invoiceId INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    creationDate DATETIME NOT NULL,
    invoiceNo VARCHAR(255) NOT NULL,
    invoiceSum DECIMAL(15,2) NOT NULL,
    receptientClientId INT NOT NULL,
    FOREIGN KEY (receptientClientId) REFERENCES Client(clientId)
);

INSERT INTO Invoice (invoiceId, creationDate, invoiceNo, invoiceSum, receptientClientId) VALUES
    (0,"2023-01-8","HQA51PQU9IY",478,24),
    (0,"2024-12-26","PQS93NPX5OR",491,49),
    (0,"2022-02-18","QHK48EEH2LR",826,19),
    (0,"2022-07-4","VFI15FIN1RP",489,20),
    (0,"2023-12-11","QSG44IDY5NW",579,17),
    (0,"2026-01-4","EGU12YEV0WX",887,9),
    (0,"2023-12-10","ERU27WKV1GT",884,32),
    (0,"2022-07-5","CVN49SFA7IG",658,30),
    (0,"2024-11-5","HMK47SBJ5YO",924,13),
    (0,"2023-02-12","QEB10MBD1PX",157,34),
    (0,"2023-07-24","PTT30ICP6HC",157,6),
    (0,"2022-06-1","OYR81EIB2GB",186,44),
    (0,"2021-01-20","KFH79DSE0MU",602,27),
    (0,"2021-11-16","GOC15ELH6WY",188,1),
    (0,"2022-09-6","JRM45NLQ5FU",504,44),
    (0,"2024-04-10","LTM31CHG7PV",624,7),
    (0,"2023-08-19","TMX58BEY8LY",443,49),
    (0,"2021-11-3","WWJ37JEW6MB",703,29),
    (0,"2022-07-11","FFH62SQH0ZD",866,45),
    (0,"2022-09-1","DXL66XFK6EY",209,2),
    (0,"2024-04-27","UHC36NML6RQ",606,11),
    (0,"2021-07-23","KIE46GVD1TK",427,46),
    (0,"2023-05-4","KDZ37VFF5HN",424,6),
    (0,"2023-05-30","QOU47JJT6VA",271,41),
    (0,"2022-02-17","QTM23LUL5PH",281,24),
    (0,"2025-01-25","CKY93ICM4SE",476,51),
    (0,"2021-11-16","QPM56KAA0NJ",290,9),
    (0,"2021-02-9","JOP41XCK3GS",961,38),
    (0,"2021-12-26","KKT77IGP7LE",737,8),
    (0,"2024-03-14","UMX17WMQ1VC",966,39),
    (0,"2025-04-22","VSB65YWK4BI",713,47),
    (0,"2021-11-7","TCH19XMV6DA",307,42),
    (0,"2020-10-17","JLR71EXP8OK",726,19),
    (0,"2025-02-8","NNC49UVB7TS",117,29),
    (0,"2024-08-21","ILG73IEV5ZZ",14,15),
    (0,"2022-10-31","CCV98GCE1NE",16,2),
    (0,"2021-06-16","XFG14KJH5NO",117,7),
    (0,"2020-10-25","EVQ78BDY6EF",97,28),
    (0,"2023-08-29","VWF56FNS2EY",789,42),
    (0,"2025-02-21","TFC22PYE0TY",477,25),
    (0,"2022-07-28","JRE13HDO8WL",984,12),
    (0,"2022-12-17","MEQ08DAH4DR",262,10),
    (0,"2024-07-27","XNJ93BUN3JP",58,23),
    (0,"2022-10-8","XBY18KGI3DW",505,32),
    (0,"2023-01-21","GKH81IMP3SS",109,15),
    (0,"2022-03-19","RHG44TPF4PI",687,28),
    (0,"2024-05-17","MJO80ULD5EM",436,39),
    (0,"2025-06-11","DRN54XEU1KB",604,5),
    (0,"2022-04-26","EQW86MBN3UO",241,15),
    (0,"2024-12-7","NVF51YWG4RL",907,1),
    (0,"2021-04-10","YFR26UUL5MQ",990,17),
    (0,"2024-06-18","WWJ37RLT8YD",651,27),
    (0,"2025-03-10","MMU30NSB7HE",201,16),
    (0,"2024-06-5","RYW68OLX4UI",962,12),
    (0,"2020-12-23","QHF59VQJ4TJ",244,35),
    (0,"2025-11-3","ZRM86BHK0UP",386,17),
    (0,"2024-04-8","TWW68PBK0HY",487,37),
    (0,"2024-07-3","YLU87DNS0MJ",320,16),
    (0,"2022-12-8","ZNG65KOK8SQ",833,23),
    (0,"2023-04-15","BGO67OLX6PK",453,35),
    (0,"2023-12-13","HEK95VSL6TD",744,9),
    (0,"2023-07-5","USD49JZU7GF",532,11),
    (0,"2022-05-15","IND40YTF3VF",221,40),
    (0,"2021-12-10","XFF18PGO6VM",983,3),
    (0,"2021-07-24","RWV11EQF2QG",753,31),
    (0,"2025-12-11","TQN83QQO2XL",109,38),
    (0,"2022-11-24","KFK32XCX8WE",401,34),
    (0,"2021-09-13","LXN21LKL4ZU",453,13),
    (0,"2021-06-12","KWX65VAE6SW",737,19),
    (0,"2023-08-23","GLP26VDI3ZG",165,7),
    (0,"2024-01-21","PUY64WXS0QQ",82,5),
    (0,"2022-05-28","JTX68HSQ7BV",703,14),
    (0,"2020-11-19","RGX56SUK8BL",183,5),
    (0,"2024-02-18","UTG11NZU9HH",549,41),
    (0,"2026-04-20","LLR07OPJ6OT",582,42),
    (0,"2024-09-6","KYG17FIM5VO",641,24),
    (0,"2023-12-15","JDF98QTV2FU",618,7),
    (0,"2024-10-8","MKZ99PWO5SH",648,29),
    (0,"2022-03-30","DRG40SBD1YY",963,34),
    (0,"2021-01-3","EBT65LQP2YG",74,22),
    (0,"2025-05-17","RJJ36MCA8XE",346,28),
    (0,"2020-12-18","CMW85OCJ4FZ",412,30),
    (0,"2025-06-8","LIF28EQO2RK",537,14),
    (0,"2026-03-27","NCU87QIE8OC",5,16),
    (0,"2024-08-19","OZD54RRX3UN",704,35),
    (0,"2022-07-23","UZE62CYN1SN",930,15),
    (0,"2022-05-3","QEH42RPZ1LM",181,28),
    (0,"2023-02-16","GXU05HNK1ML",65,12),
    (0,"2021-02-8","IIX56JSV5VM",963,14),
    (0,"2024-11-16","KHU91PDU5OO",893,3);
