﻿INSERT INTO Curators (CuratorID, FirstName, LastName, Email, Phone, Address) VALUES
	(1, 'Ana', 'Popescu', 'ana.popescu@muzeu.com', '+40 721 123 456', 'Str. Muzeului, nr. 1, București'),
	(2, 'Mihai', 'Ionescu', 'mihai.ionescu@muzeu.com', '+40 722 234 567', 'Str. Artei, nr. 2, București'),
	(3, 'Elena', 'Vasilescu', 'elena.vasilescu@muzeu.com', '+40 733 345 678', 'Str. Culturii, nr. 3, București'),
	(4, 'Andrei', 'Dumitrescu', 'andrei.dumitrescu@muzeu.com', '+40 744 456 789', 'Str. Istoriei, nr. 4, București'),
	(5, 'Cristina', 'Gheorghiu', 'cristina.gheorghiu@muzeu.com', '+40 755 567 890', 'Str. Civilizației, nr. 5, București'),
	(6, 'Radu', 'Marinescu', 'radu.marinescu@muzeu.com', '+40 766 678 901', 'Str. Patrimoniului, nr. 6, București'),
	(7, 'Ioana', 'Stanescu', 'ioana.stanescu@muzeu.com', '+40 777 789 012', 'Str. Tradițiilor, nr. 7, București'),
	(8, 'Gabriel', 'Popa', 'gabriel.popa@muzeu.com', '+40 788 890 123', 'Str. Civilizației, nr. 8, București'),
	(9, 'Raluca', 'Tudor', 'raluca.tudor@muzeu.com', '+40 799 901 234', 'Str. Exponatelor, nr. 9, București'),
	(10, 'Alexandru', 'Badea', 'alexandru.badea@muzeu.com', '+40 710 012 345', 'Str. Artiștilor, nr. 10, București');

INSERT INTO PriceCategories (PriceID, CategoryName, TicketPrice)
VALUES
    (10, 'Adult', 25.00),
    (20, 'Student', 18.00),
    (30, 'Senior', 20.00),
    (40, 'Child', 12.00),
    (50, 'VIP', 50.00),
    (60, 'Special Event', 30.00),
    (70, 'Family Pack', 60.00),
	(80, 'Free', 0.00)

-- Inserați 10 înregistrări în tabelul Genres
INSERT INTO Genres (GenreID, GenreName)
VALUES
    (5, 'Impresionism'),
    (10, 'Renascentism'),
    (15, 'Expresionism Abstract'),
    (20, 'Surrealism'),
    (25, 'Fotografie'),
    (30, 'Cubism'),
    (35, 'Pictură Asiatică'),
    (40, 'Futurism'),
    (45, 'Arta Modernă'),
    (50, 'Documentar');

-- Inserați 10 înregistrări în tabelul Artists, inclusiv biografia artistului
INSERT INTO Artists (ArtistID, ArtistName, BirthDate, DeathDate, Nationality, Biography)
VALUES
	(1, 'Claude Monet', '1840-11-14', '1926-12-05', 'Francez', 'Claude Monet a fost un pictor impresionist francez, cunoscut pentru lucrările sale cu peisaje și pentru fondarea mișcării impresioniste.'),
	(2, 'Michelangelo', '1475-03-06', '1564-02-18', 'Italian', 'Michelangelo Buonarroti a fost un sculptor, pictor și arhitect italian din perioada Renașterii, cunoscut pentru creațiile sale remarcabile.'),
	(3, 'Vincent van Gogh', '1853-03-30', '1890-07-29', 'Olandez', 'Vincent van Gogh a fost un pictor postimpresionist olandez, cunoscut pentru utilizarea culorilor vibrante și a stilului său expresionist.'),
	(4, 'Leonardo da Vinci', '1452-04-15', '1519-05-02', 'Italian', 'Leonardo da Vinci a fost un geniu polivalent din perioada Renașterii, cu contribuții semnificative în domenii precum pictura, sculptura, anatomia și ingineria.'),
	(5, 'Jackson Pollock', '1912-01-28', '1956-08-11', 'American', 'Jackson Pollock a fost un artist american, exponent al expresionismului abstract, cunoscut pentru tehnica sa distinctivă de picurare a vopselei pe pânză.'),
	(6, 'Salvador Dali', '1904-05-11', '1989-01-23', 'Spaniol', 'Salvador Dali a fost un pictor suprarealist spaniol, cunoscut pentru lucrările sale bizare și imaginile onirice.'),
	(7, 'Ansel Adams', '1902-02-20', '1984-04-22', 'American', 'Ansel Adams a fost un fotograf american cunoscut pentru munca sa remarcabilă în fotografia peisajelor naturale, în special în Parcul Național Yosemite.'),
	(8, 'Pablo Picasso', '1881-10-25', '1973-04-08', 'Spaniol', 'Pablo Picasso a fost un pictor și sculptor spaniol, co-fondator al mișcării cubiste și unul dintre cei mai influenți artiști ai secolului XX.'),
	(9, 'Hokusai', '1760-10-31', '1849-05-10', 'Japonez', 'Katsushika Hokusai a fost un artist și gravor japonez, cunoscut pentru seria sa de xilogravuri "36 de vederi ale Muntelui Fuji".'),
	(10, 'Giacomo Balla', '1871-07-18', '1958-03-01', 'Italian', 'Giacomo Balla a fost un pictor italian asociat cu mișcarea futuristă, cunoscut pentru lucrările sale care capturează mișcarea și dinamismul.');

-- Inserați 10 înregistrări în tabelul Events
INSERT INTO Events (EventID, EventName, Description, StartDate, EndDate, CuratorID)
VALUES
    (1, 'Serata Culturală', 'O seară dedicată artei și culturii.', '2023-02-10 18:00:00', '2023-02-10 22:00:00', 10),
    (2, 'Conferința Despre Sculptură', 'Prezentare despre evoluția sculpturii în istorie.', '2023-04-05 14:30:00', '2023-04-05 17:00:00', 9),
    (3, 'Noaptea Muzeelor', 'Eveniment special cu acces gratuit în noaptea muzeelor.', '2023-06-15 20:00:00', '2023-06-16 02:00:00', 6),
    (4, 'Atelier de Pictură', 'Participați la un atelier interactiv de pictură.', '2023-08-20 11:00:00', '2023-08-20 14:00:00', 7),
    (5, 'Concert de Muzică Clasică', 'Recital de muzică clasică în sala principală.', '2023-10-12 19:30:00', '2023-10-12 21:30:00', 6),
    (6, 'Vizionare de Film Documentar', 'Proiecție de filme documentare despre artă.', '2023-12-05 16:00:00', '2023-12-05 18:30:00', 6),
    (7, 'Curs de Fotografie', 'Învățați tehnicile de bază ale fotografiei de la profesioniști.', '2024-02-25 13:00:00', '2024-02-25 16:00:00', 4),
    (8, 'Spectacol de Dans Modern', 'Prezentare de dans contemporan în curtea muzeului.', '2024-04-18 17:30:00', '2024-04-18 19:00:00', 3),
    (9, 'Lansare de Carte', 'Eveniment de lansare a unei cărți de artă contemporană.', '2024-06-10 15:00:00', '2024-06-10 17:00:00', 6),
    (10, 'Ziua Portilor Deschise', 'Vizită gratuită pentru publicul larg în culisele muzeului.', '2024-08-05 10:00:00', '2024-08-05 16:00:00', 1);


-- Inserați 10 înregistrări în tabelul Visitors
INSERT INTO Visitors (VisitorID, FirstName, LastName, Email, Phone) VALUES
    (1, 'Ana', 'Popescu', 'ana.popescu@mail.com', '+40 721 123 456'),
    (2, 'Mihai', 'Ionescu', 'mihai.ionescu@mail.com', '+40 722 234 567'),
    (3, 'Elena', 'Vasilescu', 'elena.vasilescu@mail.com', '+40 733 345 678'),
    (4, 'Andrei', 'Dumitrescu', 'andrei.dumitrescu@mail.com', '+40 744 456 789'),
    (5, 'Cristina', 'Gheorghiu', 'cristina.gheorghiu@mail.com', '+40 755 567 890'),
    (6, 'Radu', 'Marinescu', 'radu.marinescu@mail.com', '+40 766 678 901'),
    (7, 'Ioana', 'Stanescu', 'ioana.stanescu@mail.com', '+40 777 789 012'),
    (8, 'Gabriel', 'Popa', 'gabriel.popa@mail.com', '+40 788 890 123'),
    (9, 'Raluca', 'Tudor', 'raluca.tudor@mail.com', '+40 799 901 234'),
    (10, 'Alexandru', 'Badea', 'alexandru.badea@mail.com', '+40 710 012 345'),
	(11, 'Maria', 'Popa', 'maria.popa@mail.com', '+40 711 123 456'),
    (12, 'George', 'Ionescu', 'george.ionescu@mail.com', '+40 722 234 567'),
    (13, 'Ana-Maria', 'Vasilescu', 'ana-maria.vasilescu@mail.com', '+40 733 345 678'),
    (14, 'Cătălin', 'Dumitrescu', 'catalin.dumitrescu@mail.com', '+40 744 456 789'),
    (15, 'Laura', 'Gheorghiu', 'laura.gheorghiu@mail.com', '+40 755 567 890'),
    (16, 'Marian', 'Marinescu', 'marian.marinescu@mail.com', '+40 766 678 901'),
    (17, 'Alina', 'Stanescu', 'alina.stanescu@mail.com', '+40 777 789 012'),
    (18, 'Cristian', 'Popa', 'cristian.popa@mail.com', '+40 788 890 123'),
    (19, 'Simona', 'Tudor', 'simona.tudor@mail.com', '+40 799 901 234'),
    (20, 'Doru', 'Badea', 'doru.badea@mail.com', '+40 710 012 345'),
	(21, 'Andreea', 'Constantin', 'andreea.constantin@mail.com', '+40 711 123 456'),
	(22, 'Victor', 'Stoica', 'victor.stoica@mail.com', '+40 722 234 567'),
	(23, 'Teodora', 'Radu', 'teodora.radu@mail.com', '+40 733 345 678'),
	(24, 'Valentin', 'Munteanu', 'valentin.munteanu@mail.com', '+40 744 456 789'),
	(25, 'Diana', 'Iordache', 'diana.iordache@mail.com', '+40 755 567 890'),
	(26, 'Bogdan', 'Popescu', 'bogdan.popescu@mail.com', '+40 766 678 901'),
	(27, 'Elena', 'Dinu', 'elena.dinu@mail.com', '+40 777 789 012'),
	(28, 'George', 'Dragomir', 'george.dragomir@mail.com', '+40 788 890 123'),
	(29, 'Ana-Maria', 'Balan', 'ana-maria.balan@mail.com', '+40 799 901 234'),
	(30, 'Cristian', 'Ionescu', 'cristian.ionescu@mail.com', '+40 710 012 345');

-- Inserați 10 înregistrări în tabelul Exhibits
INSERT INTO Exhibits (ExhibitID, ExhibitName, Description, StartDate, EndDate, CuratorID)
VALUES
    (1, 'Capodopere Impresioniste', 'O colecție de picturi impresioniste faimoase.', '2023-01-01', '2023-02-28', 1),
    (2, 'Sculpturi Antice', 'Sculpturi din diverse civilizații antice.', '2023-03-01', '2023-04-30', 2),
    (3, 'Expoziție de Artă Modernă', 'Explorarea mișcărilor de artă contemporană.', '2023-05-15', '2023-06-30', 3),
    (4, 'Splendori Renascentiste', 'Capodopere din perioada Renascentistă.', '2023-07-10', '2023-08-31', 1),
    (5, 'Expresionism Abstract', 'Lucrări de artă care ilustrează mișcarea expresionismului abstract.', '2023-09-15', '2023-10-31', 2),
    (6, 'Vise Suprarealiste', 'Călătorie în lumea suprarealismului.', '2023-11-10', '2023-12-31', 3),
    (7, 'Fotografie de-a Lungul Timpului', 'Evoluția fotografiei ca formă de artă.', '2024-01-15', '2024-02-28', 1),
    (8, 'Perspective Cubiste', 'Explorarea mișcării cubiste.', '2024-03-01', '2024-04-30', 2),
    (9, 'Pictură cu Pensulă Asiatică', 'Pictură tradițională cu pensula din diverse culturi asiatice.', '2024-05-15', '2024-06-30', 3),
    (10, 'Viziuni Futuriste', 'Lucrări inspirate de mișcarea futuristă.', '2024-07-10', '2024-08-31', 9),
	(11, 'Arta Minimalistă', 'Explorarea esteticii minimaliste în artă.', '2024-09-15', '2024-10-31', 4),
    (12, 'Sculpturi Moderne', 'Opere de sculptură moderne și contemporane.', '2024-11-10', '2024-12-31', 5),
    (13, 'Culori Vibrante', 'Expoziție de picturi cu culori intense și vibrante.', '2025-01-15', '2025-02-28', 6),
    (14, 'Artă Digitală', 'Explorarea formelor de artă create digital.', '2025-03-01', '2025-04-30', 7),
    (15, 'Melodii Vizuale', 'Interacțiunea dintre artă vizuală și muzică.', '2025-05-15', '2025-06-30', 8),
    (16, 'Pictura Nopții', 'Lucrări de artă inspirate de peisaje nocturne.', '2025-07-10', '2025-08-31', 9),
    (17, 'Surrealism Contemporan', 'Opere de artă care continuă tradiția suprarealismului.', '2025-09-15', '2025-10-31', 10),
    (18, 'Revoluția Tehnologică', 'Reflectarea schimbărilor tehnologice în artă.', '2025-11-10', '2025-12-31', 1),
    (19, 'Peisaje URBEX', 'Fotografii explorând locuri abandonate și urbex.', '2026-01-15', '2026-02-28', 1),
    (20, 'Artă Feministă', 'Lucrări de artă care explorează teme feministe.', '2026-03-01', '2026-04-30', 1);

-- Inserați 10 înregistrări în tabelul Artworks
INSERT INTO Artworks (ArtworkID, Title, Description, CreationYear, ArtistID, ExhibitID, GenreID)
VALUES
    (1, 'Nufărul', 'O serie de picturi în ulei care ilustrează grădina de apă a lui Monet.', 1914, 8, 1, 5),
    (2, 'David', 'Capodopera sculpturii renascentiste care ilustrează eroul biblic.', 1504, 4, 2, 5),
    (3, 'Noapte Stelețe', 'Pictura iconică a cerului înstelat a lui Van Gogh.', 1889, 3, 3, 10),
    (4, 'Mona Lisa', 'Faimoasa pictură a lui Leonardo.', 1503, 4, 4, 35),
    (5, 'Ritmul Toamnei', 'O lucrare majoră a expresionismului abstract de Pollock.', 1950, 5, 5, 40),
    (6, 'Persistența Memoriei', 'Ceasurile topite ale lui Dali.', 1931, 6, 6, 35),
    (7, 'Răsăritul Lunii, Hernandez, New Mexico', 'Fotografia iconică a lui Adams.', 1941, 7, 7, 15),
    (8, 'Guernica', 'Muralul puternic anti-război al lui Picasso.', 1937, 8, 8, 25),
    (9, 'Marea Undă din Kanagawa', 'Gravura în lemn a lui Hokusai.', 1831, 9, 9, 10),
    (10, 'Viteză și Sunet Abstract', 'Pictură futuristă de Balla.', 1913, 10, 10, 30),
	(11, 'Reflecții de Toamnă', 'Un peisaj seren capturând frumusețea toamnei.', 2010, 8, 11, 5),
	(12, 'Frumusețe Eterică', 'Sculptură abstractă reprezentând esența frumuseții.', 2018, 2, 12, 40),
	(13, 'Armonie în Haos', 'Pictură expresivă ce ilustrează armonia găsită în haos.', 2015, 3, 13, 10),
	(14, 'Privirea Monalisei', 'Reinterpretare contemporană a iconicei Mona Lisa.', 2020, 4, 14, 30),
	(15, 'Dansul Culorilor', 'Lucrare abstractă vibrantă celebrând dansul culorilor.', 2017, 5, 15, 5),		
	(16, 'Ceasuri Topite', 'Sculptură suprarealistă inspirată de Păstrarea Memoriei a lui Salvador Dali.', 2012, 6, 16, 10),
	(17, 'Serenitate Lunară', 'Fotografie capturând frumusețea serenă a unei nopți cu lună.', 2019, 7, 17, 15),
	(18, 'Perspective Cubiste', 'Pictură abstractă explorând perspectivele cubiste.', 2014, 8, 18, 10),
	(19, 'Călătorie către Est', 'Pictură tradițională cu pensula ilustrând o călătorie artistică către Est.', 2016, 9, 19, 10),
	(20, 'Viziune Futuristă', 'Pictură futuristă vizionând viitorul cu culori și forme dinamice.', 2021, 10, 20, 15),
	(21, 'Eleganță Sculptată', 'Sculptură grațioasă încarnând eleganța atemporală.', 2013, 1, 1, 50),
	(22, 'Rapsodie în Albastru', 'Lucrare inspirată de muzica lui George Gershwin.', 2015, 2, 2, 10),
	(23, 'Serenada Stelară', 'Explorare abstractă a cosmosului și a armoniei stelare.', 2024, 3, 3, 10),
	(24, 'Misterul Zâmbetului', 'Interpretare modernă a enigmaticului zâmbet al Monalisei.', 2026, 4, 4, 50),
	(25, 'Explozie de Vise', 'Pictură expresionistă abstractă evocând visele colorate.', 2023, 5, 5, 15),
	(26, 'Transcendența Timpului', 'Sculptură surreală reflectând transcenderea timpului.', 2025, 6, 6, 5),
	(27, 'Peisaj Nocturn', 'Fotografie capturată în liniștea unei nopți de vară.', 2024, 7, 7, 35),
	(28, 'Caleidoscop de Culori', 'Pictură vibrantă explorând un univers de culori.', 2026, 8, 8, 30),
	(29, 'Ritualuri Orientale', 'Pictură detaliată ilustrând ritualuri tradiționale orientale.', 2023, 9, 9, 40),
	(30, 'Energie Dinamică', 'Pictură futuristă pulsând de energie și dinamism.', 2025, 10, 10, 45),
	(31, 'Contemplarea Eleganței', 'Sculptură expresând grația în contemplarea artei.', 2024, 1, 11, 50),
	(32, 'Albastrul Adâncimilor', 'Lucrare inspirată de profunzimile oceanului și albastrul său.', 2026, 2, 12, 30),
	(33, 'Sufletul Oceanului', 'Pictură abstractă ilustrând forța și liniștea oceanului.', 2023, 1, 1, 10),
	(34, 'Revelații Solare', 'Sculptură radiantă inspirată de lumina soarelui.', 2025, 2, 2, 10);
-- Inserați 10 înregistrări în tabelul Tickets
INSERT INTO ExhibitTickets (TicketID, VisitorID, ExhibitID, PriceID, PurchaseDate)
VALUES
    (1, 1, 1, 10, '2023-01-15 10:30:00'),
	(2, 1, 2, 20, '2023-03-10 14:45:00'),
	(3, 3, 3, 30, '2023-05-20 11:00:00'),
	(4, 4, 4, 40, '2023-07-05 09:15:00'),
	(5, 5, 5, 50, '2023-09-25 16:00:00'),
	(6, 6, 6, 20, '2023-11-15 13:30:00'),
	(7, 7, 7, 30, '2024-01-05 12:00:00'),
	(8, 8, 8, 40, '2024-03-20 17:45:00'),
	(9, 9, 9, 50, '2024-05-30 10:00:00'),
	(10, 10, 1, 60, '2024-07-15 14:15:00'),
	(11, 11, 2, 10, '2024-09-10 09:30:00'),
	(12, 12, 3, 20, '2024-11-05 15:15:00'),
	(13, 13, 4, 30, '2025-01-20 12:30:00'),
	(14, 14, 5, 40, '2025-03-15 14:45:00'),
	(15, 15, 6, 50, '2025-05-25 11:00:00'),
	(16, 16, 7, 20, '2025-07-10 10:30:00'),
	(17, 17, 8, 30, '2025-09-05 16:00:00'),
	(18, 18, 9, 40, '2025-11-20 13:15:00'),
	(19, 19, 1, 50, '2026-01-30 11:45:00'),
	(20, 20, 2, 60, '2026-03-15 14:00:00'),
	(21, 21, 3, 10, '2026-05-10 12:30:00'),
	(22, 22, 4, 20, '2026-07-25 15:45:00'),
	(23, 23, 5, 30, '2026-09-20 10:00:00'),
	(24, 24, 6, 40, '2026-11-05 14:15:00'),
	(25, 25, 7, 50, '2027-01-15 11:30:00'),
	(26, 26, 8, 20, '2027-03-10 09:45:00'),
	(27, 27, 7, 30, '2027-05-20 16:00:00'),
	(28, 28, 8, 40, '2027-07-05 13:15:00'),
	(29, 29, 9, 50, '2027-09-25 11:30:00'),
	(30, 30, 10, 60, '2027-11-15 14:45:00'),
	(31, 11, 11, 10, '2023-02-15 10:30:00'),
    (32, 12, 12, 20, '2023-04-10 14:45:00'),
    (33, 13, 13, 30, '2023-06-20 11:00:00'),
    (34, 14, 14, 40, '2023-08-05 09:15:00'),
    (35, 15, 15, 50, '2023-10-25 16:00:00'),
    (36, 16, 16, 20, '2023-12-15 13:30:00'),
    (37, 17, 17, 30, '2024-02-05 12:00:00'),
    (38, 18, 18, 40, '2024-04-20 17:45:00'),
    (39, 19, 19, 50, '2024-06-30 10:00:00'),
    (40, 20, 20, 60, '2024-08-15 14:15:00'),
    (41, 21, 11, 10, '2024-10-10 09:30:00'),
    (42, 22, 12, 20, '2024-12-05 15:15:00'),
    (43, 23, 13, 30, '2025-02-20 12:30:00'),
    (44, 24, 14, 40, '2025-04-15 14:45:00'),
    (45, 25, 15, 50, '2025-06-25 11:00:00'),
    (46, 26, 16, 20, '2025-08-10 10:30:00'),
    (47, 27, 17, 30, '2025-10-05 16:00:00'),
    (48, 28, 18, 40, '2025-12-20 13:15:00'),
    (49, 29, 19, 50, '2026-02-01 11:45:00'),
    (50, 30, 20, 60, '2026-03-15 14:00:00'),
    (51, 11, 1, 10, '2026-05-10 12:30:00'),
    (52, 12, 2, 20, '2026-07-25 15:45:00'),
    (53, 13, 3, 30, '2026-09-20 10:00:00'),
    (54, 14, 4, 40, '2026-11-05 14:15:00'),
    (55, 15, 5, 50, '2027-01-15 11:30:00'),
    (56, 16, 6, 20, '2027-03-10 09:45:00'),
    (57, 17, 7, 30, '2027-05-20 16:00:00'),
    (58, 18, 8, 40, '2027-07-05 13:15:00'),
    (59, 19, 9, 50, '2027-09-25 11:30:00'),
    (60, 20, 20, 60, '2027-11-15 14:45:00');

INSERT INTO EventTickets (TicketID, VisitorID, EventID, PriceID, PurchaseDate)
VALUES
	(31, 30, 1, 10, '2023-12-15 09:30:00'),
	(32, 22, 2, 20, '2023-07-10 13:45:00'),
	(33, 13, 3, 30, '2023-06-20 10:00:00'),
	(34, 14, 4, 40, '2023-08-05 08:15:00'),
	(35, 25, 5, 50, '2023-10-25 15:00:00'),
	(36, 16, 6, 20, '2023-12-15 12:30:00'),
	(37, 17, 7, 30, '2024-12-05 11:00:00'),
	(38, 30, 8, 40, '2024-04-20 16:45:00'),
	(39, 23, 9, 50, '2024-06-30 09:30:00'),
	(40, 10, 10, 60, '2024-08-15 13:45:00'),
	(41, 1, 2, 10, '2024-12-10 08:30:00'),
	(42, 4, 2, 20, '2024-12-05 14:15:00'),
	(43, 3, 3, 30, '2025-02-20 11:30:00'),
	(44, 14, 4, 40, '2025-04-15 13:45:00'),
	(45, 15, 5, 50, '2025-06-25 10:00:00'),
	(46, 16, 6, 20, '2025-08-10 09:30:00'),
	(47, 27, 7, 30, '2025-10-05 15:00:00'),
	(48, 28, 8, 40, '2025-12-20 16:45:00'),
	(49, 29, 9, 50, '2026-02-28 09:30:00'),
	(50, 30, 10, 80, '2026-04-15 14:45:00'),
	(51, 11, 1, 10, '2026-06-10 08:30:00'),
	(52, 22, 2, 20, '2026-08-25 14:15:00'),
	(53, 23, 3, 30, '2026-10-20 11:30:00'),
	(54, 14, 4, 40, '2026-12-05 13:45:00'),
	(55, 5, 5, 50, '2027-02-15 10:00:00'),
	(56, 6, 6, 20, '2027-04-10 09:30:00'),
	(57, 7, 7, 30, '2027-06-20 15:00:00'),
	(58, 8, 8, 40, '2027-08-05 16:45:00'),
	(59, 9, 9, 50, '2027-10-25 13:30:00'),
	(60, 3, 10, 50, '2027-12-15 12:00:00'),
	(61, 3, 1, 10, '2023-12-15 09:30:00'),
	(62, 2, 2, 20, '2023-07-10 13:45:00'),
	(63, 13, 3, 30, '2023-06-20 10:00:00'),
	(64, 24, 4, 40, '2023-08-05 08:15:00'),
	(65, 25, 5, 50, '2023-10-25 15:00:00'),
	(66, 16, 6, 20, '2023-12-15 12:30:00'),
	(67, 17, 7, 30, '2024-12-05 11:00:00'),
	(68, 30, 8, 40, '2023-04-20 16:45:00'),
	(69, 23, 9, 50, '2024-06-30 09:30:00'),
	(70, 10, 10, 60, '2024-08-15 13:45:00'),
	(71, 1, 2, 10, '2024-12-10 08:30:00'),
	(72, 4, 2, 20, '2024-12-05 14:15:00'),
	(73, 3, 3, 30, '2025-02-20 11:30:00'),
	(74, 14, 4, 40, '2025-04-15 13:45:00'),
	(75, 15, 5, 50, '2025-06-25 10:00:00'),
	(76, 16, 6, 20, '2025-08-10 09:30:00'),
	(77, 27, 7, 30, '2025-10-05 15:00:00'),
	(78, 18, 8, 40, '2025-12-20 16:45:00'),
	(79, 19, 9, 50, '2026-02-28 09:30:00'),
	(80, 20, 10, 80, '2026-04-15 14:45:00'),
	(81, 21, 1, 10, '2026-06-10 08:30:00'),
	(82, 12, 2, 20, '2026-08-25 14:15:00'),
	(83, 13, 3, 30, '2026-10-20 11:30:00'),
	(84, 4, 4, 40, '2026-12-05 13:45:00'),
	(85, 15, 5, 50, '2027-02-15 10:00:00'),
	(86, 16, 6, 20, '2027-04-10 09:30:00'),
	(87, 17, 7, 30, '2027-06-20 15:00:00'),
	(88, 18, 8, 40, '2027-08-05 16:45:00'),
	(89, 19, 9, 50, '2027-10-25 13:30:00'),
	(90, 13, 10, 50, '2027-12-15 12:00:00');