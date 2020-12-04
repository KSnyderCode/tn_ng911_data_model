/* qgis schema */ 

create schema forms; 


/* qgis tables predir */ 

create table forms.predir_tbl (
        id serial primary key,
        predir char(24),
        description char(2)
        );

insert into forms.predir_tbl (predir, description) values ('N', 'N');
insert into forms.predir_tbl (predir, description) values ('S', 'S');
insert into forms.predir_tbl (predir, description) values ('E', 'E');
insert into forms.predir_tbl (predir, description) values ('W', 'W');
insert into forms.predir_tbl (predir, description) values ('NE', 'NE');
insert into forms.predir_tbl (predir, description) values ('NW', 'NW');
insert into forms.predir_tbl (predir, description) values ('SE', 'SE');
insert into forms.predir_tbl (predir, description) values ('SW', 'SW');


/* qgis tables seg_side */ 

create table forms.segside_tbl (
        id serial primary key,
        seg_side char(1),
	description char(12)
        );

insert into forms.segside_tbl (seg_side, description) values ('L', 'LEFT');
insert into forms.segside_tbl (seg_side, description) values ('R', 'RIGHT');

/* qgis tables structure type */ 

create table forms.strucdomain_tbl ( 
	id serial primary key,
	strucdomain smallint, 
	description char(50)
); 

insert into forms.strucdomain_tbl (strucdomain, description) values (100, 'Familial'); 
insert into forms.strucdomain_tbl (strucdomain, description) values (200, 'Religious'); 
insert into forms.strucdomain_tbl (strucdomain, description) values (300, 'Education'); 
insert into forms.strucdomain_tbl (strucdomain, description) values (400, 'Medical'); 
insert into forms.strucdomain_tbl (strucdomain, description) values (500, 'Agricultural'); 
insert into forms.strucdomain_tbl (strucdomain, description) values (600, 'Government'); 
insert into forms.strucdomain_tbl (strucdomain, description) values (700, 'Utility'); 
insert into forms.strucdomain_tbl (strucdomain, description) values (800, 'Industrial'); 
insert into forms.strucdomain_tbl (strucdomain, description) values (900, 'Public Safety'); 
insert into forms.strucdomain_tbl (strucdomain, description) values (1000, 'Transportation'); 
insert into forms.strucdomain_tbl (strucdomain, description) values (1200, 'Assets'); 
insert into forms.strucdomain_tbl (strucdomain, description) values (1300, 'Commercial'); 
insert into forms.strucdomain_tbl (strucdomain, description) values (1400, 'Entertainment'); 
insert into forms.strucdomain_tbl (strucdomain, description) values (1500, 'Recreational'); 
insert into forms.strucdomain_tbl (strucdomain, description) values (1600, 'Historical'); 
insert into forms.strucdomain_tbl (strucdomain, description) values (9000, 'Miscellaneous'); 

create table forms.structype_tbl ( 
	id serial primary key,
	structype smallint, 
	strucfk smallint, 
        description char(50)
        ); 

insert into forms.structype_tbl (structype, strucfk, description) values (1, 100,  'House'); 
insert into forms.structype_tbl (structype, strucfk, description) values (2, 100, 'Duplex'); 
insert into forms.structype_tbl (structype, strucfk, description) values (3, 100, 'Mobile Home'); 
insert into forms.structype_tbl (structype, strucfk, description) values (4, 100, 'Apartment'); 
insert into forms.structype_tbl (structype, strucfk, description) values (5, 100, 'Secondary Structure'); 
insert into forms.structype_tbl (structype, strucfk, description) values (6, 100, 'Underground House'); 
insert into forms.structype_tbl (structype, strucfk, description) values (7, 100, 'Condominium'); 
insert into forms.structype_tbl (structype, strucfk, description) values (8, 100, 'Townhome'); 
insert into forms.structype_tbl (structype, strucfk, description) values (9, 100, 'Triplex'); 
insert into forms.structype_tbl (structype, strucfk, description) values (10, 100, 'Trailer Park'); 
insert into forms.structype_tbl (structype, strucfk, description) values (11, 100, 'RV/Camper'); 
insert into forms.structype_tbl (structype, strucfk, description) values (12, 100, 'Cabin'); 
insert into forms.structype_tbl (structype, strucfk, description) values (13, 100, 'Day Care'); 
insert into forms.structype_tbl (structype, strucfk, description) values (14, 100, 'Day Care'); 
insert into forms.structype_tbl (structype, strucfk, description) values (15, 100, 'Senior Citizen Center'); 
insert into forms.structype_tbl (structype, strucfk, description) values (16, 100, 'Bus'); 
insert into forms.structype_tbl (structype, strucfk, description) values (17, 100, 'Quadplex'); 
insert into forms.structype_tbl (structype, strucfk, description) values (18, 100, 'Communal Area');
insert into forms.structype_tbl (structype, strucfk, description) values (200, 200, 'Religious'); 
insert into forms.structype_tbl (structype, strucfk, description) values (201, 200, 'Place of Worship'); 
insert into forms.structype_tbl (structype, strucfk, description) values (300, 300, 'Education'); 
insert into forms.structype_tbl (structype, strucfk, description) values (301, 300, 'School'); 
insert into forms.structype_tbl (structype, strucfk, description) values (302, 300, 'University/College'); 
insert into forms.structype_tbl (structype, strucfk, description) values (303, 300, 'Library'); 
insert into forms.structype_tbl (structype, strucfk, description) values (304, 300, 'Dormitory'); 
insert into forms.structype_tbl (structype, strucfk, description) values (400, 400, 'Medical'); 
insert into forms.structype_tbl (structype, strucfk, description) values (401, 400, 'Hospital'); 
insert into forms.structype_tbl (structype, strucfk, description) values (402, 400, 'Clinic'); 
insert into forms.structype_tbl (structype, strucfk, description) values (403, 400, 'Pharmacy'); 
insert into forms.structype_tbl (structype, strucfk, description) values (404, 400, 'Dental'); 
insert into forms.structype_tbl (structype, strucfk, description) values (405, 400, 'Vision'); 
insert into forms.structype_tbl (structype, strucfk, description) values (406, 400, 'Nursing Home'); 
insert into forms.structype_tbl (structype, strucfk, description) values (407, 400, 'Assisted Living Facility'); 
insert into forms.structype_tbl (structype, strucfk, description) values (408, 400, 'Rehabilitation Center'); 
insert into forms.structype_tbl (structype, strucfk, description) values (409, 400, 'Morgue'); 
insert into forms.structype_tbl (structype, strucfk, description) values (500, 500, 'Agricultural'); 
insert into forms.structype_tbl (structype, strucfk, description) values (501, 500, 'Farm'); 
insert into forms.structype_tbl (structype, strucfk, description) values (502, 500, 'Barn'); 
insert into forms.structype_tbl (structype, strucfk, description) values (503, 500, 'Veterinary'); 
insert into forms.structype_tbl (structype, strucfk, description) values (504, 500, 'Animal Shelter'); 
insert into forms.structype_tbl (structype, strucfk, description) values (505, 500, 'Fish Hatchery'); 
insert into forms.structype_tbl (structype, strucfk, description) values (506, 500, 'Greenhouse/Nursery'); 
insert into forms.structype_tbl (structype, strucfk, description) values (507, 500, 'Chicken House'); 
insert into forms.structype_tbl (structype, strucfk, description) values (600, 600, 'Government'); 
insert into forms.structype_tbl (structype, strucfk, description) values (601, 600, 'Capitol'); 
insert into forms.structype_tbl (structype, strucfk, description) values (602, 600, 'City Hall'); 
insert into forms.structype_tbl (structype, strucfk, description) values (603, 600, 'Court House'); 
insert into forms.structype_tbl (structype, strucfk, description) values (604, 600, 'Post Office'); 
insert into forms.structype_tbl (structype, strucfk, description) values (605, 600, 'DoD/Military'); 
insert into forms.structype_tbl (structype, strucfk, description) values (700, 700, 'Utility'); 
insert into forms.structype_tbl (structype, strucfk, description) values (701, 700, 'Tower'); 
insert into forms.structype_tbl (structype, strucfk, description) values (702, 700, 'Cell Tower'); 
insert into forms.structype_tbl (structype, strucfk, description) values (703, 700, 'Radio Tower'); 
insert into forms.structype_tbl (structype, strucfk, description) values (704, 700, 'TVA Siren'); 
insert into forms.structype_tbl (structype, strucfk, description) values (705, 700, 'Water Tank'); 
insert into forms.structype_tbl (structype, strucfk, description) values (706, 700, 'Oil Tank'); 
insert into forms.structype_tbl (structype, strucfk, description) values (707, 700, 'Oil Well'); 
insert into forms.structype_tbl (structype, strucfk, description) values (708, 700, 'Natural Gas Tank'); 
insert into forms.structype_tbl (structype, strucfk, description) values (709, 700, 'Natural Gas Well'); 
insert into forms.structype_tbl (structype, strucfk, description) values (710, 700, 'Natural Gas Pipeline'); 
insert into forms.structype_tbl (structype, strucfk, description) values (711, 700, 'Power Substation'); 
insert into forms.structype_tbl (structype, strucfk, description) values (712, 700, 'Pump Station'); 
insert into forms.structype_tbl (structype, strucfk, description) values (800, 800, 'Industrial'); 
insert into forms.structype_tbl (structype, strucfk, description) values (801, 800, 'Warehouse'); 
insert into forms.structype_tbl (structype, strucfk, description) values (802, 800, 'Recycle Facility'); 
insert into forms.structype_tbl (structype, strucfk, description) values (803, 800, 'Bottling Plant'); 
insert into forms.structype_tbl (structype, strucfk, description) values (804, 800, 'Treatment Plant'); 
insert into forms.structype_tbl (structype, strucfk, description) values (805, 800, 'Landfill'); 
insert into forms.structype_tbl (structype, strucfk, description) values (806, 800, 'Mine'); 
insert into forms.structype_tbl (structype, strucfk, description) values (807, 800, 'Rock Quarry'); 
insert into forms.structype_tbl (structype, strucfk, description) values (900, 900, 'Public Safety'); 
insert into forms.structype_tbl (structype, strucfk, description) values (901, 900, 'Prison'); 
insert into forms.structype_tbl (structype, strucfk, description) values (902, 900, 'Detention Center'); 
insert into forms.structype_tbl (structype, strucfk, description) values (903, 900, 'Police'); 
insert into forms.structype_tbl (structype, strucfk, description) values (904, 900, 'Sheriff'); 
insert into forms.structype_tbl (structype, strucfk, description) values (905, 900, 'Fire'); 
insert into forms.structype_tbl (structype, strucfk, description) values (906, 900, 'Rescue Squad'); 
insert into forms.structype_tbl (structype, strucfk, description) values (907, 900, 'EMS'); 
insert into forms.structype_tbl (structype, strucfk, description) values (908, 900, 'Shelter'); 
insert into forms.structype_tbl (structype, strucfk, description) values (909, 900, 'Fire Hydrant'); 
insert into forms.structype_tbl (structype, strucfk, description) values (910, 900, 'PELA/LZ/Helicopter Pad'); 
insert into forms.structype_tbl (structype, strucfk, description) values (911, 900, 'PSAP'); 
insert into forms.structype_tbl (structype, strucfk, description) values (1000, 1000, 'Transportation'); 
insert into forms.structype_tbl (structype, strucfk, description) values (1001, 1000, 'Airport'); 
insert into forms.structype_tbl (structype, strucfk, description) values (1002, 1000, 'Airport Hanger'); 
insert into forms.structype_tbl (structype, strucfk, description) values (1003, 1000, 'Airport Terminal'); 
insert into forms.structype_tbl (structype, strucfk, description) values (1004, 1000, 'Bus Station'); 
insert into forms.structype_tbl (structype, strucfk, description) values (1005, 1000, 'Gas Station'); 
insert into forms.structype_tbl (structype, strucfk, description) values (1006, 1000, 'Bridge'); 
insert into forms.structype_tbl (structype, strucfk, description) values (1007, 1000, 'Rest Area'); 
insert into forms.structype_tbl (structype, strucfk, description) values (1008, 1000, 'Railroad'); 
insert into forms.structype_tbl (structype, strucfk, description) values (1009, 1000, 'Roundhouse'); 
insert into forms.structype_tbl (structype, strucfk, description) values (1010, 1000, 'Train Station'); 
insert into forms.structype_tbl (structype, strucfk, description) values (1011, 1000, 'Railroad Crossing'); 
insert into forms.structype_tbl (structype, strucfk, description) values (1012, 1000, 'Railroad Equipment'); 
insert into forms.structype_tbl (structype, strucfk, description) values (1013, 1000, 'Railroad Mile Marker'); 
insert into forms.structype_tbl (structype, strucfk, description) values (1014, 1000, 'River Marker'); 
insert into forms.structype_tbl (structype, strucfk, description) values (1015, 1000, 'Mile Marker'); 
insert into forms.structype_tbl (structype, strucfk, description) values (1200, 1200, 'Asset'); 
insert into forms.structype_tbl (structype, strucfk, description) values (1201, 1200, 'Gate'); 
insert into forms.structype_tbl (structype, strucfk, description) values (1202, 1200, 'Call Box/Phone Cabinet'); 
insert into forms.structype_tbl (structype, strucfk, description) values (1203, 1200, 'Billboard'); 
insert into forms.structype_tbl (structype, strucfk, description) values (1300, 1300, 'Commercial'); 
insert into forms.structype_tbl (structype, strucfk, description) values (1301, 1300, 'Shopping Area'); 
insert into forms.structype_tbl (structype, strucfk, description) values (1302, 1300, 'Store'); 
insert into forms.structype_tbl (structype, strucfk, description) values (1303, 1300, 'Office'); 
insert into forms.structype_tbl (structype, strucfk, description) values (1304, 1300, 'Parking Garage'); 
insert into forms.structype_tbl (structype, strucfk, description) values (1305, 1300, 'Bank'); 
insert into forms.structype_tbl (structype, strucfk, description) values (1306, 1300, 'Massage Parlor'); 
insert into forms.structype_tbl (structype, strucfk, description) values (1307, 1300, 'Hotel/Motel'); 
insert into forms.structype_tbl (structype, strucfk, description) values (1308, 1300, 'Laundry Mat'); 
insert into forms.structype_tbl (structype, strucfk, description) values (1309, 1300, 'Storage Facility'); 
insert into forms.structype_tbl (structype, strucfk, description) values (1400, 1400, 'Entertainment'); 
insert into forms.structype_tbl (structype, strucfk, description) values (1401, 1400, 'Restaurant'); 
insert into forms.structype_tbl (structype, strucfk, description) values (1402, 1400, 'Cafe'); 
insert into forms.structype_tbl (structype, strucfk, description) values (1403, 1400, 'Bar'); 
insert into forms.structype_tbl (structype, strucfk, description) values (1404, 1400, 'Club'); 
insert into forms.structype_tbl (structype, strucfk, description) values (1405, 1400, 'Theater'); 
insert into forms.structype_tbl (structype, strucfk, description) values (1406, 1400, 'Convention Center'); 
insert into forms.structype_tbl (structype, strucfk, description) values (1407, 1400, 'Stadium'); 
insert into forms.structype_tbl (structype, strucfk, description) values (1408, 1400, 'Arena'); 
insert into forms.structype_tbl (structype, strucfk, description) values (1409, 1400, 'Sports Complex'); 
insert into forms.structype_tbl (structype, strucfk, description) values (1500, 1500, 'Recreational'); 
insert into forms.structype_tbl (structype, strucfk, description) values (1501, 1500, 'Park'); 
insert into forms.structype_tbl (structype, strucfk, description) values (1502, 1500, 'Campground'); 
insert into forms.structype_tbl (structype, strucfk, description) values (1503, 1500, 'Lodge'); 
insert into forms.structype_tbl (structype, strucfk, description) values (1504, 1500, 'Golf Course'); 
insert into forms.structype_tbl (structype, strucfk, description) values (1505, 1500, 'Boat Dock'); 
insert into forms.structype_tbl (structype, strucfk, description) values (1506, 1500, 'Watercraft'); 
insert into forms.structype_tbl (structype, strucfk, description) values (1600, 1600, 'Historical'); 
insert into forms.structype_tbl (structype, strucfk, description) values (1601, 1600, 'Museum'); 
insert into forms.structype_tbl (structype, strucfk, description) values (1602, 1600, 'Cemetery'); 
insert into forms.structype_tbl (structype, strucfk, description) values (9000, 9000, 'Temporary'); 
insert into forms.structype_tbl (structype, strucfk, description) values (9001, 9000, 'Vacant'); 
insert into forms.structype_tbl (structype, strucfk, description) values (9002, 9000, 'Unknown'); 

/* C1 Street Suffix Abbreviations */

create table forms.type_tbl ( 
	id serial primary key,
        description char(24),
	type char(5) 
        ); 

insert into forms.type_tbl (description, type) values ('ALLEY', 'ALY'); 
insert into forms.type_tbl (description, type) values ('ANEX', 'ANX'); 
insert into forms.type_tbl (description, type) values ('ARCADE', 'ARC'); 
insert into forms.type_tbl (description, type) values ('AVENUE', 'AVE'); 
insert into forms.type_tbl (description, type) values ('BAYOU', 'BYU'); 
insert into forms.type_tbl (description, type) values ('BEACH', 'BCH'); 
insert into forms.type_tbl (description, type) values ('BEND', 'BND'); 
insert into forms.type_tbl (description, type) values ('BLUFF', 'BLF'); 
insert into forms.type_tbl (description, type) values ('BLUFFS', 'BLFS'); 
insert into forms.type_tbl (description, type) values ('BOTTOM', 'BTM'); 
insert into forms.type_tbl (description, type) values ('BOULEVARD', 'BLVD'); 
insert into forms.type_tbl (description, type) values ('BRANCH', 'BR'); 
insert into forms.type_tbl (description, type) values ('BRIDGE', 'BRG'); 
insert into forms.type_tbl (description, type) values ('BROOK', 'BRK'); 
insert into forms.type_tbl (description, type) values ('BROOKS', 'BRKS'); 
insert into forms.type_tbl (description, type) values ('BURG', 'BG'); 
insert into forms.type_tbl (description, type) values ('BURGS', 'BGS'); 
insert into forms.type_tbl (description, type) values ('BYPASS', 'BYP'); 
insert into forms.type_tbl (description, type) values ('CAMP', 'CP'); 
insert into forms.type_tbl (description, type) values ('CANYON', 'CYN'); 
insert into forms.type_tbl (description, type) values ('CAPE', 'CPE'); 
insert into forms.type_tbl (description, type) values ('CAUSEWAY', 'CSWY'); 
insert into forms.type_tbl (description, type) values ('CENTER', 'CTR'); 
insert into forms.type_tbl (description, type) values ('CENTERS', 'CTRS'); 
insert into forms.type_tbl (description, type) values ('CIRCLE', 'CIR'); 
insert into forms.type_tbl (description, type) values ('CIRCLES', 'CIRS'); 
insert into forms.type_tbl (description, type) values ('CLIFF', 'CLF'); 
insert into forms.type_tbl (description, type) values ('CLIFFS', 'CLFS'); 
insert into forms.type_tbl (description, type) values ('CLUB', 'CLB'); 
insert into forms.type_tbl (description, type) values ('COMMON', 'CMN'); 
insert into forms.type_tbl (description, type) values ('COMMONS', 'CMNS'); 
insert into forms.type_tbl (description, type) values ('CORNER', 'COR'); 
insert into forms.type_tbl (description, type) values ('CORNERS', 'CORS'); 
insert into forms.type_tbl (description, type) values ('COURSE', 'CRSE'); 
insert into forms.type_tbl (description, type) values ('COURT', 'CT'); 
insert into forms.type_tbl (description, type) values ('COURTS', 'CTS'); 
insert into forms.type_tbl (description, type) values ('COVE', 'CV'); 
insert into forms.type_tbl (description, type) values ('COVES', 'CVS'); 
insert into forms.type_tbl (description, type) values ('CREEK', 'CRK'); 
insert into forms.type_tbl (description, type) values ('CRESCENT', 'CRES'); 
insert into forms.type_tbl (description, type) values ('CREST', 'CRST'); 
insert into forms.type_tbl (description, type) values ('CROSSING', 'XING'); 
insert into forms.type_tbl (description, type) values ('CROSSROAD', 'XRD'); 
insert into forms.type_tbl (description, type) values ('CROSSROADS', 'XRDS'); 
insert into forms.type_tbl (description, type) values ('CURVE', 'CURV'); 
insert into forms.type_tbl (description, type) values ('DALE', 'DL'); 
insert into forms.type_tbl (description, type) values ('DAM', 'DM'); 
insert into forms.type_tbl (description, type) values ('DIVIDE', 'DV'); 
insert into forms.type_tbl (description, type) values ('DRIVE', 'DR'); 
insert into forms.type_tbl (description, type) values ('DRIVES', 'DRS'); 
insert into forms.type_tbl (description, type) values ('ESTATE', 'EST'); 
insert into forms.type_tbl (description, type) values ('ESTATES', 'ESTS'); 
insert into forms.type_tbl (description, type) values ('EXPRESSWAY', 'EXPY'); 
insert into forms.type_tbl (description, type) values ('EXTENSION', 'EXT'); 
insert into forms.type_tbl (description, type) values ('EXTENSIONS', 'EXTS'); 
insert into forms.type_tbl (description, type) values ('FALL', 'FALL'); 
insert into forms.type_tbl (description, type) values ('FALLS', 'FLS'); 
insert into forms.type_tbl (description, type) values ('FERRY', 'FRY');  
insert into forms.type_tbl (description, type) values ('FIELD', 'FLD'); 
insert into forms.type_tbl (description, type) values ('FIELDS', 'FLDS'); 
insert into forms.type_tbl (description, type) values ('FLAT', 'FLT');
insert into forms.type_tbl (description, type) values ('FLATS', 'FLTS');
insert into forms.type_tbl (description, type) values ('FORD', 'FRD');
insert into forms.type_tbl (description, type) values ('FORDS', 'FRDS');
insert into forms.type_tbl (description, type) values ('FOREST', 'FRST');
insert into forms.type_tbl (description, type) values ('FORGE', 'FRG');
insert into forms.type_tbl (description, type) values ('FORGES', 'FRGS');
insert into forms.type_tbl (description, type) values ('FORK', 'FRK');
insert into forms.type_tbl (description, type) values ('FORKS', 'FRKS');
insert into forms.type_tbl (description, type) values ('FORT', 'FT');
insert into forms.type_tbl (description, type) values ('FREEWAY', 'FWY');
insert into forms.type_tbl (description, type) values ('GARDEN', 'GDN');
insert into forms.type_tbl (description, type) values ('GARDENS', 'GDNS');
insert into forms.type_tbl (description, type) values ('GATEWAY', 'GTWY');
insert into forms.type_tbl (description, type) values ('GLEN', 'GLN');
insert into forms.type_tbl (description, type) values ('GLENS', 'GLNS');
insert into forms.type_tbl (description, type) values ('GREEN', 'GRN');
insert into forms.type_tbl (description, type) values ('GREENS', 'GRNS');
insert into forms.type_tbl (description, type) values ('GROVE', 'GRV');
insert into forms.type_tbl (description, type) values ('GROVES', 'GRVS');
insert into forms.type_tbl (description, type) values ('HARBOR', 'HBR');
insert into forms.type_tbl (description, type) values ('HARBORS', 'HBRS');
insert into forms.type_tbl (description, type) values ('HAVEN', 'HVN');
insert into forms.type_tbl (description, type) values ('HEIGHTS', 'HTS');
insert into forms.type_tbl (description, type) values ('HIGHWAY', 'HWY');
insert into forms.type_tbl (description, type) values ('HILL', 'HL');
insert into forms.type_tbl (description, type) values ('HILLS', 'HLS');
insert into forms.type_tbl (description, type) values ('HOLLOW', 'HOLW');
insert into forms.type_tbl (description, type) values ('INLET', 'INLT');
insert into forms.type_tbl (description, type) values ('ISLAND', 'IS');
insert into forms.type_tbl (description, type) values ('ISLANDS', 'ISS');
insert into forms.type_tbl (description, type) values ('ISLE', 'ISLE');
insert into forms.type_tbl (description, type) values ('JUNCTION', 'JCT');
insert into forms.type_tbl (description, type) values ('JUNCTIONS', 'JCTS');
insert into forms.type_tbl (description, type) values ('KEY', 'KY');
insert into forms.type_tbl (description, type) values ('KEYS', 'KYS');
insert into forms.type_tbl (description, type) values ('KNOLL', 'KNL');
insert into forms.type_tbl (description, type) values ('KNOLLS', 'KNLS');
insert into forms.type_tbl (description, type) values ('LAKE', 'LK');
insert into forms.type_tbl (description, type) values ('LAKES', 'LKS');
insert into forms.type_tbl (description, type) values ('LAND', 'LAND');
insert into forms.type_tbl (description, type) values ('LANDING', 'LNDG');
insert into forms.type_tbl (description, type) values ('LANE', 'LN');
insert into forms.type_tbl (description, type) values ('LIGHT', 'LGT');
insert into forms.type_tbl (description, type) values ('LIGHTS', 'LGTS');
insert into forms.type_tbl (description, type) values ('LOAF', 'LF');
insert into forms.type_tbl (description, type) values ('LOCK', 'LCK');
insert into forms.type_tbl (description, type) values ('LOCKS', 'LCKS');
insert into forms.type_tbl (description, type) values ('LODGE', 'LDG');
insert into forms.type_tbl (description, type) values ('LOOP', 'LOOP');
insert into forms.type_tbl (description, type) values ('MALL', 'MALL');
insert into forms.type_tbl (description, type) values ('MANOR', 'MNR');
insert into forms.type_tbl (description, type) values ('MANORS', 'MNRS');
insert into forms.type_tbl (description, type) values ('MEADOW', 'MDW');
insert into forms.type_tbl (description, type) values ('MEADOWS', 'MDWS');
insert into forms.type_tbl (description, type) values ('MEWS', 'MEWS');
insert into forms.type_tbl (description, type) values ('MILL', 'ML');
insert into forms.type_tbl (description, type) values ('MILLS', 'MLS');
insert into forms.type_tbl (description, type) values ('MISSION', 'MSN');
insert into forms.type_tbl (description, type) values ('MOTORWAY', 'MTWY');
insert into forms.type_tbl (description, type) values ('MOUNT', 'MT');
insert into forms.type_tbl (description, type) values ('MOUNTAIN', 'MTN');
insert into forms.type_tbl (description, type) values ('MOUNTAINS', 'MTNS');
insert into forms.type_tbl (description, type) values ('NECK','NCK');
insert into forms.type_tbl (description, type) values ('ORCHARD', 'ORCH');
insert into forms.type_tbl (description, type) values ('OVAL', 'OVAL');
insert into forms.type_tbl (description, type) values ('OVERPASS', 'OPAS');
insert into forms.type_tbl (description, type) values ('PARK', 'PARK');
insert into forms.type_tbl (description, type) values ('PARKS', 'PARK');
insert into forms.type_tbl (description, type) values ('PARKWAY', 'PKWY');
insert into forms.type_tbl (description, type) values ('PARKWAYS', 'PKWY');
insert into forms.type_tbl (description, type) values ('PASS', 'PASS');
insert into forms.type_tbl (description, type) values ('PASSAGE', 'PSGE');
insert into forms.type_tbl (description, type) values ('PATH', 'PATH');
insert into forms.type_tbl (description, type) values ('PIKE', 'PIKE');
insert into forms.type_tbl (description, type) values ('PINE', 'PNE');
insert into forms.type_tbl (description, type) values ('PINES', 'PNES');
insert into forms.type_tbl (description, type) values ('PLACE', 'PL');
insert into forms.type_tbl (description, type) values ('PLAIN', 'PLN');
insert into forms.type_tbl (description, type) values ('PLAINS', 'PLNS');
insert into forms.type_tbl (description, type) values ('PLAZA', 'PLZ');
insert into forms.type_tbl (description, type) values ('POINT', 'PT');
insert into forms.type_tbl (description, type) values ('POINTS', 'PTS');
insert into forms.type_tbl (description, type) values ('PORT', 'PRT');
insert into forms.type_tbl (description, type) values ('PORTS', 'PRTS');
insert into forms.type_tbl (description, type) values ('PRAIRIE', 'PR');
insert into forms.type_tbl (description, type) values ('RADIAL', 'RADL');
insert into forms.type_tbl (description, type) values ('RAMP', 'RAMP');
insert into forms.type_tbl (description, type) values ('RANCH', 'RNCH');
insert into forms.type_tbl (description, type) values ('RAPID', 'RPD');
insert into forms.type_tbl (description, type) values ('RAPIDS', 'RPDS');
insert into forms.type_tbl (description, type) values ('REST', 'RST');
insert into forms.type_tbl (description, type) values ('RIDGE', 'RDG');
insert into forms.type_tbl (description, type) values ('RIDGES', 'RDGS');
insert into forms.type_tbl (description, type) values ('RIVER', 'RIV');
insert into forms.type_tbl (description, type) values ('ROAD', 'RD');
insert into forms.type_tbl (description, type) values ('ROADS', 'RDS');
insert into forms.type_tbl (description, type) values ('ROUTE', 'RTE');
insert into forms.type_tbl (description, type) values ('ROW', 'ROW');
insert into forms.type_tbl (description, type) values ('RUE', 'RUE');
insert into forms.type_tbl (description, type) values ('RUN', 'RUN');
insert into forms.type_tbl (description, type) values ('SHOAL', 'SHL');
insert into forms.type_tbl (description, type) values ('SHOALS', 'SHLS');
insert into forms.type_tbl (description, type) values ('SHORE', 'SHR');
insert into forms.type_tbl (description, type) values ('SHORES', 'SHRS');
insert into forms.type_tbl (description, type) values ('SKYWAY', 'SKWY');
insert into forms.type_tbl (description, type) values ('SPRING', 'SPG');
insert into forms.type_tbl (description, type) values ('SPRINGS', 'SPGS');
insert into forms.type_tbl (description, type) values ('SPUR', 'SPUR');
insert into forms.type_tbl (description, type) values ('SPURS', 'SPUR');
insert into forms.type_tbl (description, type) values ('SQUARE', 'SQ');
insert into forms.type_tbl (description, type) values ('SQUARES', 'SQS');
insert into forms.type_tbl (description, type) values ('STATION', 'STA');
insert into forms.type_tbl (description, type) values ('STRAVENUE', 'STRA');
insert into forms.type_tbl (description, type) values ('STREAM', 'STRM');
insert into forms.type_tbl (description, type) values ('STREET', 'ST');
insert into forms.type_tbl (description, type) values ('STREETS', 'STS');
insert into forms.type_tbl (description, type) values ('SUMMIT', 'SMT');
insert into forms.type_tbl (description, type) values ('TERRACE', 'TER');
insert into forms.type_tbl (description, type) values ('THROUGHWAY', 'TRWY');
insert into forms.type_tbl (description, type) values ('TRACE', 'TRCE');
insert into forms.type_tbl (description, type) values ('TRACK', 'TRAK');
insert into forms.type_tbl (description, type) values ('TRAFFICWAY', 'TRFY');
insert into forms.type_tbl (description, type) values ('TRAIL', 'TRL');
insert into forms.type_tbl (description, type) values ('TRAILER', 'TRLR');
insert into forms.type_tbl (description, type) values ('TUNNEL', 'TUNL');
insert into forms.type_tbl (description, type) values ('TURNPIKE', 'TPKE');
insert into forms.type_tbl (description, type) values ('UNDERPASS', 'UPAS');
insert into forms.type_tbl (description, type) values ('UNION', 'UN');
insert into forms.type_tbl (description, type) values ('UNIONS', 'UNS');
insert into forms.type_tbl (description, type) values ('VALLEY', 'VLY');
insert into forms.type_tbl (description, type) values ('VALLEYS', 'VLYS');
insert into forms.type_tbl (description, type) values ('VIADUCT', 'VIA');
insert into forms.type_tbl (description, type) values ('VIEW', 'VW');
insert into forms.type_tbl (description, type) values ('VIEWS', 'VWS');
insert into forms.type_tbl (description, type) values ('VILLAGE', 'VLG');
insert into forms.type_tbl (description, type) values ('VILLAGES', 'VLGS');
insert into forms.type_tbl (description, type) values ('VILLE', 'VL');
insert into forms.type_tbl (description, type) values ('VISTA', 'VIS');
insert into forms.type_tbl (description, type) values ('WALK', 'WALK');
insert into forms.type_tbl (description, type) values ('WALK', 'WALK');
insert into forms.type_tbl (description, type) values ('WALL', 'WALL');
insert into forms.type_tbl (description, type) values ('WAY', 'WAY');
insert into forms.type_tbl (description, type) values ('WAYS', 'WAYS');
insert into forms.type_tbl (description, type) values ('WELL', 'WL');
insert into forms.type_tbl (description, type) values ('WELLS', 'WLS');

/* qgis table unit */ 

create table forms.unit_type_tbl ( 
	id serial primary key,
        description char(24),
	unit_type char(4) 
        ); 

insert into forms.unit_type_tbl (description, unit_type) values ('APARTMENT', 'APT'); 
insert into forms.unit_type_tbl (description, unit_type) values ('BASEMENT', 'BSMT'); 
insert into forms.unit_type_tbl (description, unit_type) values ('BUILDING', 'BLDG'); 
insert into forms.unit_type_tbl (description, unit_type) values ('DEPARTMENT', 'DEPT'); 
insert into forms.unit_type_tbl (description, unit_type) values ('FLOOR', 'FL'); 
insert into forms.unit_type_tbl (description, unit_type) values ('FRONT', 'FRNT'); 
insert into forms.unit_type_tbl (description, unit_type) values ('HANGAR', 'HNGR'); 
insert into forms.unit_type_tbl (description, unit_type) values ('LOBBY', 'LBBY'); 
insert into forms.unit_type_tbl (description, unit_type) values ('LOT',	'LOT'); 
insert into forms.unit_type_tbl (description, unit_type) values ('LOWER', 'LOWR'); 
insert into forms.unit_type_tbl (description, unit_type) values ('OFFICE', 'OFC'); 
insert into forms.unit_type_tbl (description, unit_type) values ('PENTHOUSE', 'PH'); 
insert into forms.unit_type_tbl (description, unit_type) values ('PIER', 'PIER'); 
insert into forms.unit_type_tbl (description, unit_type) values ('REAR', 'REAR'); 
insert into forms.unit_type_tbl (description, unit_type) values ('ROOM', 'RM'); 
insert into forms.unit_type_tbl (description, unit_type) values ('SIDE', 'SIDE'); 
insert into forms.unit_type_tbl (description, unit_type) values ('SLIP', 'SLIP'); 
insert into forms.unit_type_tbl (description, unit_type) values ('SPACE', 'SPC'); 
insert into forms.unit_type_tbl (description, unit_type) values ('STOP', 'STOP'); 
insert into forms.unit_type_tbl (description, unit_type) values ('SUITE', 'STE'); 
insert into forms.unit_type_tbl (description, unit_type) values ('TRAILER', 'TRLR'); 
insert into forms.unit_type_tbl (description, unit_type) values ('UNIT', 'UNIT'); 
insert into forms.unit_type_tbl (description, unit_type) values ('UPPER', 'UPPR'); 
insert into forms.unit_type_tbl (description, unit_type) values ('GARAGE', 'GAR'); 
insert into forms.unit_type_tbl (description, unit_type) values ('OTHER', 'OTH'); 

/* Create Source  Table */
create table forms.source_tbl ( 
	id serial primary key, 
	source integer,
	description char(24)
        ); 

insert into forms.source_tbl (source, description) values (1, 'Parcel Centroid'); 
insert into forms.source_tbl (source, description) values (2, 'Driveway Entrance'); 
insert into forms.source_tbl (source, description) values (3, 'Structure Centroid'); 
insert into forms.source_tbl (source, description) values (4, 'Main entrace'); 
insert into forms.source_tbl (source, description) values (5, 'Frontage Centroid'); 
insert into forms.source_tbl (source, description) values (0, 'Undefined'); 

/* Create Lifecycle Status Table */

create table forms.lifecyclestatus_tbl ( 
	id serial primary key, 
	status integer,
	description char(24)
        ); 

insert into forms.lifecyclestatus_tbl (status, description) values (730, 'ACTIVE'); 
insert into forms.lifecyclestatus_tbl (status, description) values (734, 'PROPOSED'); 
insert into forms.lifecyclestatus_tbl (status, description) values (736, 'POTENTIAL'); 
insert into forms.lifecyclestatus_tbl (status, description) values (799, 'RETIRED'); 

/* Create a addr_type */

create table forms.addrtype_tbl ( 
	id serial primary key, 
	type char(2),
	description char(24)
        ); 

insert into forms.addrtype_tbl (type, description) values ('P', 'Potential'); 
insert into forms.addrtype_tbl (type, description) values ('A', 'Actual'); 

/* Nametype */ 

create table forms.nametype_tbl ( 
	id serial primary key, 
	type integer,
	description char(50)
        ); 

insert into forms.nametype_tbl (type, description) values (1, 'Signed Name'); 
insert into forms.nametype_tbl (type, description) values (2, 'Long Haul Name - State Wide'); 
insert into forms.nametype_tbl (type, description) values (3, 'Long Haul Name - County Wide'); 
insert into forms.nametype_tbl (type, description) values (4, 'Long Haul Name - City Wide'); 
insert into forms.nametype_tbl (type, description) values (5, 'Postal Name'); 
insert into forms.nametype_tbl (type, description) values (6, 'MSAG Name'); 
insert into forms.nametype_tbl (type, description) values (7, 'Inventory Name'); 

/* CFCC Table */

create table forms.cfcc_tbl ( 
	id serial primary key, 
	cfcc char(3),
	description char(150)
        ); 

insert into forms.cfcc_tbl (cfcc, description) values ('A10', 'Road, major and minor categories unknown');
insert into forms.cfcc_tbl (cfcc, description) values ('A11', 'Primary road with limited access or interstate highway, unseparated');
insert into forms.cfcc_tbl (cfcc, description) values ('A12', 'Primary road with limited access or interstate highway, unseparated, in tunnel');
insert into forms.cfcc_tbl (cfcc, description) values ('A13', 'Primary road with limited access or interstate highway, unseparated, underpassing');
insert into forms.cfcc_tbl (cfcc, description) values ('A14', 'Primary road with limited access or interstate highway, unseparated, with rail line in center');
insert into forms.cfcc_tbl (cfcc, description) values ('A15', 'Primary road with limited access or interstate highway, separated');
insert into forms.cfcc_tbl (cfcc, description) values ('A16', 'Primary road with limited access or interstate highway, separated, in tunnel');
insert into forms.cfcc_tbl (cfcc, description) values ('A17', 'Primary road with limited access or interstate highway, separated, underpassing');
insert into forms.cfcc_tbl (cfcc, description) values ('A18', 'Primary road with limited access or interstate highway, separated, with rail line in center');
insert into forms.cfcc_tbl (cfcc, description) values ('A19', 'Primary road with limited access or interstate highway, bridge');
insert into forms.cfcc_tbl (cfcc, description) values ('A21', 'Primary road without limited access, U.S. and State highways, unseparated');
insert into forms.cfcc_tbl (cfcc, description) values ('A22', 'Primary road without limited access, U.S. and State highways, unseparated, in tunnel');
insert into forms.cfcc_tbl (cfcc, description) values ('A23', 'Primary road without limited access, U.S. and State highways, unseparated, underpassing');
insert into forms.cfcc_tbl (cfcc, description) values ('A24', 'Primary road without limited access, U.S. and State highways, unseparated, with rail line in center');
insert into forms.cfcc_tbl (cfcc, description) values ('A25', 'Primary road without limited access, U.S. and State highways, separated');
insert into forms.cfcc_tbl (cfcc, description) values ('A26', 'Primary road without limited access, U.S. and State highways, separated, in tunnel');
insert into forms.cfcc_tbl (cfcc, description) values ('A27', 'Primary road without limited access, U.S. and State highways, separated, underpassing');
insert into forms.cfcc_tbl (cfcc, description) values ('A28', 'Primary road without limited access, U.S. and State highways, separated, with rail line in center');
insert into forms.cfcc_tbl (cfcc, description) values ('A29', 'Primary road without limited access, US highways, bridge');
insert into forms.cfcc_tbl (cfcc, description) values ('A31', 'Secondary and connecting road, State and county highways, unseparated');
insert into forms.cfcc_tbl (cfcc, description) values ('A32', 'Secondary and connecting road, State and county highways, unseparated, in tunnel');
insert into forms.cfcc_tbl (cfcc, description) values ('A33', 'Secondary and connecting road, State and county highways, unseparated, underpassing');
insert into forms.cfcc_tbl (cfcc, description) values ('A34', 'Secondary and connecting road, State and county highways, unseparated, with rail lin in center');
insert into forms.cfcc_tbl (cfcc, description) values ('A35', 'Secondary and connecting road, State and county highways, separated');
insert into forms.cfcc_tbl (cfcc, description) values ('A36', 'Secondary and connecting road, State and county highways, separated, in tunnel');
insert into forms.cfcc_tbl (cfcc, description) values ('A37', 'Secondary and connecting road, State and county highways, separated, underpassing');
insert into forms.cfcc_tbl (cfcc, description) values ('A38', 'Secondary and connecting road, State and county highway, separated, with rail line in center');
insert into forms.cfcc_tbl (cfcc, description) values ('A39', 'Secondary and connecting road, state and county highways, bridge');
insert into forms.cfcc_tbl (cfcc, description) values ('A41', 'Local, neighborhood, and rural road, city street, unseparated');
insert into forms.cfcc_tbl (cfcc, description) values ('A42', 'Local, neighborhood, and rural road, city street, unseparated, in tunnel');
insert into forms.cfcc_tbl (cfcc, description) values ('A43', 'Local, neighborhood, and rural road, city street, unseparated, underpassing');
insert into forms.cfcc_tbl (cfcc, description) values ('A44', 'Local, neighborhood, and rural road, city street, unseparated, with rail line in center');
insert into forms.cfcc_tbl (cfcc, description) values ('A45', 'Local, neighborhood, and rural road, city street, separated');
insert into forms.cfcc_tbl (cfcc, description) values ('A46', 'Local, neighborhood, and rural road, city street, separated, in tunnel');
insert into forms.cfcc_tbl (cfcc, description) values ('A47', 'Local, neighborhood, and rural road, city street, separated, underpassing');
insert into forms.cfcc_tbl (cfcc, description) values ('A48', 'Local, neighborhood, and rural road, city street, separated, with rail line in center');
insert into forms.cfcc_tbl (cfcc, description) values ('A49', 'Local, neighborhood, and rural road, city street, bridge');
insert into forms.cfcc_tbl (cfcc, description) values ('A50', 'Vehicular trail, road passable only by four-wheel drive (4WD) vehicle, major category');
insert into forms.cfcc_tbl (cfcc, description) values ('A51', 'Vehicular trail, road passable only by 4WD vehicle, unseparated');
insert into forms.cfcc_tbl (cfcc, description) values ('A52', 'Vehicular trail, road passable only by 4WD vehicle, unseparated, in tunnel');
insert into forms.cfcc_tbl (cfcc, description) values ('A53', 'Vehicular trail, road passable only by 4WD vehicle, unseparated, underpassing');
insert into forms.cfcc_tbl (cfcc, description) values ('A60', 'Special road feature, major category used when the minor category could not be determined');
insert into forms.cfcc_tbl (cfcc, description) values ('A61', 'Cul-de-sac, the closed end of a road that forms a loop or turn around');
insert into forms.cfcc_tbl (cfcc, description) values ('A62', 'Traffic circle, the portion of a road or intersection of roads that form a roundabout');
insert into forms.cfcc_tbl (cfcc, description) values ('A63', 'Access ramp, the portion of a road that forms a cloverleaf or limited access interchange');
insert into forms.cfcc_tbl (cfcc, description) values ('A64', 'Service drive, road that provides access to businesses, facilities, and rest areas along limited-access highway');
insert into forms.cfcc_tbl (cfcc, description) values ('A65', 'Ferry crossing, the representation of a route over water that connects roads on opposite shores');
insert into forms.cfcc_tbl (cfcc, description) values ('A66', 'Gated barrier to travel');
insert into forms.cfcc_tbl (cfcc, description) values ('A67', 'Toll booth barrier to travel');
insert into forms.cfcc_tbl (cfcc, description) values ('A70', 'Other thoroughfare, major category used when the minor category could not be determined');
insert into forms.cfcc_tbl (cfcc, description) values ('A71', 'Walkway, nearly level road for pedestrians, usually unnamed');
insert into forms.cfcc_tbl (cfcc, description) values ('A72', 'Stairway, stepped road for pedestrians, usually unnamed');
insert into forms.cfcc_tbl (cfcc, description) values ('A73', 'Alley, road for service vehicles, usually unnamed, located at the rear of buildings and property');
insert into forms.cfcc_tbl (cfcc, description) values ('A74', 'Driveway or service road, usually privately owned and unnamed, used as access to residences, etc., or as access to logging areas, etc.');


