-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 22, 2023 at 01:54 PM
-- Server version: 8.0.29
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gameplanner`
--

-- --------------------------------------------------------

--
-- Table structure for table `games`
--

CREATE TABLE `games` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `expansions` text,
  `skills` text,
  `url` varchar(255) DEFAULT NULL,
  `youtube` text,
  `min_players` int NOT NULL,
  `max_players` int NOT NULL,
  `play_minutes` int NOT NULL,
  `explain_minutes` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `games`
--

INSERT INTO `games` (`id`, `name`, `image`, `description`, `expansions`, `skills`, `url`, `youtube`, `min_players`, `max_players`, `play_minutes`, `explain_minutes`) VALUES
(1, 'Counterfeiters', 'counterfeiters.jpg', '<p>De spelers kruipen in de rol van valsemunters die valse bankbiljetten printen en deze ruilen voor het echte spul. De Godfather kan hen helpen de politie te ontlopen, maar deze bescherming heeft wel een prijs…</p>\n<p>Het spel eindigt als de politie haar onderzoek naar de valsgeldindustrie voltooit; winnaar is de speler met het meeste ‘echte’ (niet valse) geld!</p>', 'Action Improvements', 'plannen', 'https://boardgamegeek.com/boardgame/257380/counterfeiters', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/unzMecWBczM\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 2, 4, 40, 10),
(2, '7 Wonders', '7_wonders.jpg', '<p>7 Wonders is een kort kaartspel waarin je een stad bouwt met een wereldwonder erin. In 3 tijdperken met ieder 6 beurten bouw je gebouwen of delen van je wereldwonder. De beste combinaties van gebouwen leveren de meeste winstpunten op.</p>', 'Leaders;Cities', 'plannen', 'https://boardgamegeek.com/boardgame/68448/7-wonders', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/z_Wfdn5Es8U\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 3, 8, 40, 15),
(3, 'Camel Up', 'camel_up.png', '<p>De stapelgekke kamelenrace! Vlot race- en gokspel voor het hele gezin. Gok op 5 kamelen, die over een zandparcours rennen en elkaar meedragen. Er kunnen liefst 8 spelers meedoen!</p>', 'The Referee;Grand Prix of the Sahara; Supercub', 'schatten;werken met het onbekende', 'https://www.999games.nl/camel-up.html', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/L4w1N0wOKDs\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 2, 10, 60, 15),
(4, 'Roborally', 'roborally.jpg', '<p>In Robo Rally nemen de spelers de controle over een robot in een gevaarlijke fabriekshal. Vanwege het grote aantal dubbelzijdig bedrukte kaarten is er een heel grote variëteit aan verschillende speelvelden. Het speelveld in Robo Rally zit vol met bewegende, van richting veranderende transportbanden, metaal smeltende lasers, bodemloze putten, persers, en verscheidene andere obstakels. Het doel van Robot Rally is, buiten overleven, het als eerste alle checkpoints bereiken in de juiste volgorde. De uitdaging in Robo Rally is echter om je robot te bewegen door middel van willekeurig uitgedeelde programmeerkaarten.</p>', NULL, 'planning;programmeren', 'https://boardgamegeek.com/boardgame/18/roborally', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/sVJ6A3OsZig\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 2, 8, 90, 30),
(5, 'Codenames: Pictures', 'codenames_pictures.jpg', '<p>Wat zijn die vreemde plaatjes die op tafel liggen? Dat zijn codes van de locaties waar spionnen zich bevinden. Twee rivaliserende hoofden van de geheime dienst weten welke spion op een locatie aanwezig is. Ze geven gecodeerde boodschappen die de geheime agenten vertellen waar ze heen moeten voor hun geheime ontmoetingen. Geheime agenten moeten slim en scherp zijn. Een foute analyse van de code kan betekenen dat ze per ongeluk in contact komen met een vijandelijke spion of zelfs een huurmoordernaar! Beide teams moeten zo snel mogelijk contact maken met al hun spionenn. Er kan slechts één winnaar zijn.</p>', NULL, 'luisteren;communiceren;creativiteit', 'https://boardgamegeek.com/boardgame/198773/codenames-pictures', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/gP5j9n7WJ5k\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 4, 10, 15, 5),
(6, 'Dale of Merchants', 'dale_of_merchants.png', '<p>Dale of Merchants Een spannend kaartspel waarbij zowel slimheid als sluwheid bepaalt wie mag toetreden tot het buitengewone gilde. Iedere speler probeert de beste handelaar te worden van het handelaarsgilde. Door middel van deckbuilding probeer je goederen te verhandelen en een handelskraam te bouwen. Dale of Merchants dwingt de spelers tot het maken van moeilijke keuzes omdat iedere kaart op meerdere manieren gebruikt kan worden. Ga je voor de fantastische actie of voor nog meer coole kaarten ? Als je droomt van overwinning zul je in ieder geval je kaarten net zo snel weer moeten uitstallen als dat je ze koopt. In een beurt heeft de speler een van onderstaande actie mogelijkheden: marktactie ? kaart kopen van de markt techniekactie ? gebruik de speciale eigenschap van een kaart kraamactie ? leg een kaart in je kraam voorraadactie ? leg één of meerdere kaarten af op de aflegstapel.</p>', NULL, 'vooruitdenken', 'https://boardgamegeek.com/boardgame/176165/dale-merchants', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/CeyQUUL1xHY\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 2, 4, 30, 5),
(7, 'Dixit: Odyssey', 'dixit.jpg', '<p>Het sprookjesachtige spel Dixit bevat prachtige kaarten die voor interpretatie vatbaar zijn. Bij dit gezellige bordspel is het belangrijk om je medespelers goed in te schatten en je verbeelding de vrije loop te laten gaan. Het spel heeft weinig spelregels, waardoor het heel snel te leren is en geschikt is voor kinderen vanaf 8 jaar.</p>\r\n\r\n<p>Alle spelers hebben altijd zes kaarten in hun hand, waarop mysterieuze tekeningen te zien zijn. Om de beurt is een speler de verteller die een kaart uit zijn hand kiest en deze omschrijft. Dit kan door middel van een woord, een zin, of het maken van een gebaar of geluid. Alles is toegestaan. Probeer je tegenstanders goed in te schatten en zorg dat je hint niet té makkelijk of té moeilijk is. De andere spelers kiezen vervolgens een kaart uit hun handkaarten die ze bij de omschrijving vinden passen. Hierna worden alle kaarten geschud en open op tafel gelegd, waarna het stemproces plaatsvindt. Welke kaart is nu van de verteller? Probeer de kaart van de verteller te ontdekken, laat je niet misleiden door de kaarten van de andere spelers, maar zorg dat zij wel op jouw kaart stemmen. Op deze manier kan jij de winnaar van Dixit worden!</p>', NULL, 'overbrengen;luisteren;interpreteren', 'https://boardgamegeek.com/boardgame/92828/dixit-odyssey', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/rRUPQbfSKvU\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 3, 12, 40, 5),
(8, 'Concept', 'concept.jpg', '<p>oncept is een spel voor het hele gezin of voor een gezellig avondje met vrienden. Samenwerken is de boodschap. Een 2-koppig team trekt een Concept kaart en weet hierdoor het te raden concept (woord of zin). Door pionnen op het spelbord te plaatsen geven zij hints over het te raden concept. Het team geeft aan of wat geraden wordt juist of fout is en kan door middel van meerdere pionnen op het spelbord te plaatsen de anderen helpen het concept te raden. Je speelt niet tegen elkaar maar als het ware tegen het spel zelf!</p>', NULL, 'overbrengen;luisteren;interpreteren', 'https://boardgamegeek.com/boardgame/147151/concept', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/MLjVC0ZxBus\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 4, 12, 40, 10),
(9, '10 minuten kraak', '10min_kraak.jpg', '<p>In de Tovenaarstoren proberen jij en je dievenvrienden zoveel mogelijk buit te bemachtigen! De Tovenaar heeft veel magische voorwerpen in zijn verzameling waarvoor je rijkelijk beloond zult worden, vooral als het je lukt om de meeste van een bepaald soort te stelen. Maar wees op je hoede, want sommige voorwerpen zijn vervloekt en die zijn weer een stuk lastiger door te verkopen!</p>', NULL, 'planning;vooruitdenken', 'https://boardgamegeek.com/boardgame/194789/10-minute-heist-wizards-tower', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/7j95yagOFEE\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 2, 5, 10, 5),
(10, 'Ghost Fightin\' Treasure Hunters', 'ghost_fightin_treasure_hunters.jpg', '<p>Spelers werken als één team en proberen met alle 8 de juwelen te ontsnappen uit het huis voordat er spoken opduiken in de 6e verdoemde kamer.<br/>Je team en jij moeten met veel tactiek door de kamers en gangen lopen en juwelen pakken en wegbrengen. Als er een spook in de kamer is, moet je team daar mee vechten. Soms moet je zelfs met spoken en griezels vechten terwijl je een juweel in je rugzak hebt!</p>', NULL, 'samenwerken;communicatie', 'https://boardgamegeek.com/boardgame/146312/ghost-fightin-treasure-hunters', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/ZNqm62NtCnU\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 2, 4, 30, 5),
(11, 'Downforce', 'downforce.jpg', '<p>Downforce is een kaart gestuurd bied-, race- en gokspel voor 2-6 spelers op basis van Top Race, het bekroonde ontwerp van de legendarische Wolfgang Kramer. Spelers bieden eerst op de zes auto\'s die aan de race deelnemen, daarna spelen ze kaarten uit hun hand om ze over het circuit te versnellen. </p>', 'Danger Circuit', 'plannen;inzicht', 'https://boardgamegeek.com/boardgame/215311/downforce', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/CpihysTOamo\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 2, 6, 45, 5),
(12, 'City of Horror', 'city_of_horror.jpg', '<p>City of Horror is een survival-horror bordspel. Een invasie van schuifelende zombies terroriseert de stad. Het doel is om de aanval te overleven...</p>\r\n<p>Elke speler controleert een aantal personages met verschillende vaardigheden. Je kunt je karakters verplaatsen naar verschillende locaties, om deze vervolgens te barricaderen en te doorzoeken voor items en wapens.</p>\r\n<p>De mechanismen van City of Horror zijn hetzelfde als in Mall of Horror (ook ontworpen door Nicolas Normandon), maar City of Horror heeft andere materialen en gameplay.</p>', NULL, 'overleg;overtuigen;plannen;stemmen', 'https://boardgamegeek.com/boardgame/120217/city-horror', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/zu5v23afSgE\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 3, 6, 90, 20),
(13, 'Fantasy Realms', 'fantasy_realms.jpg', '<p>A combo-licious card game.</p>\r\n\r\n<p>Fantasy Realms takes seconds to learn: draw a card, discard a card. Though in this case you can draw from the deck or the discard area!</p>\r\n\r\n<p>Make the best hand you can by making the best combos. Game ends when there are 10 cards in the discard area. Aim for the highest score.</p>', NULL, 'werken met weinig resources; rekenen;verzamelen', 'https://boardgamegeek.com/boardgame/223040/fantasy-realms', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/WKLjQHtluss\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 3, 8, 20, 5),
(14, 'The Estates', 'the_estates.jpg', '<p>The City Council recently approved the zoning map for a new urban development — The Estates — featuring high-end infrastructure and a modern atmosphere for its citizens. Soon after, the banks awarded millions of dollars in loans to six real estate investment firms to help develop this new area. The zoning map for The Estates calls for two rows of four buildings each, located between the River and Main Street. The meadows on the other side of the River are to remain a recreational area for the City.</p>', NULL, 'planning', 'https://www.capstone-games.com/the-estates-1', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/mVFhPa24CP4\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 2, 5, 45, 15),
(15, 'Lemming Maffia', 'lemming_maffia.jpg', '<p>Alle lemmingen proberen zo snel mogelijk in het water te springen. Maar het zou de lemmingmaffia niet zijn als daar niet op gewed kon worden. En ondertussen worden betonblokken ingezet om concurrenten af te stoppen of zelfs helemaal uit te schakelen.</p>', NULL, 'inzicht;overzichtbehouden', 'https://www.999games.nl/lemming-maffia.html', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/iYBaqXzcuRE\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 3, 6, 25, 5),
(16, 'Micropolis', 'micropolis.png', '<p>In het spel Micropolis stuur je jouw mieren in de mierenhoop voor fruit, krijgers, een koningin en nog meer mieren.</p>\r\n\r\n<p>De spelers starten het spel Micropolis met een aantal mieren op een centrale locatie. Doorheen het spel trekken ze tegels met tunnels die rond de mieren komen te liggen. Wanneer ze aan beurt zijn, kunnen de spelers een tegel kiezen.</p>', NULL, 'plannen;verzamelen', 'https://boardgamegeek.com/boardgame/239840/micropolis', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/tlwN3X3OXVA\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 2, 6, 35, 5),
(17, 'Mysterium', 'mysterium.png', '<p>Mysterium is een coöperatief bordspel waarbij een mysterie moet worden opgelost door samen te werken. Iedereen wint of verliest dus samen. Alle spelers delen hetzelfde doel: het ontdekken van de waarheid achter de dood van de geest die rondwaart in het landgoed, om hem op die manier de eeuwige rust te gunnen!</p>', 'Hidden Signs;Secrets & Lies;', 'overbrengen;luisteren;interpreteren', 'https://boardgamegeek.com/boardgame/181304/mysterium', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/mhCv0CZW2UM\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 3, 7, 45, 15),
(18, 'Spyfall', 'spyfall.jpg', '<p>Spyfall is een party game waarbij iedere speler een kaart krijgt met dezelfde locatie er op, behalve één speler, deze krijgt een kaart met het woord Spy (spion). Het is de taak van de spion om erachter te komen op welke locatie we zijn, terwijl de andere spelers er achter proberen te komen wie de spion is. Spelers kunnen elkaar vragen stellen zoals \"waarom heb je zo\'n rare kleding aan?\", de spion zal goed moeten luisteren naar de antwoorden om erachter te komen waar we zijn en ook om zelf een goed antwoord te kunnen geven wanneer hem iets gevraagd wordt.</p>', NULL, 'communiceren;luisteren', 'https://www.cryptozoic.com/spyfall', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/RAP8yVSKhps\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 3, 12, 10, 5),
(19, 'Keep Talking and Nobody Explodes', 'keep_talking_and_nobody_explodes.jpg', '<p>In Keep Talking and Nobody Explodes zit één speler vast in een kamer met een tikkende tijdbom die onschadelijk moet worden gemaakt. De andere spelers zijn de \"experts\" die instructies moeten geven door informatie uit de handleiding voor het onschadelijk maken van de bom* te ontcijferen. Maar er schuilt een addertje onder het gras: de experts kunnen de bom niet zien, dus iedereen moet heel snel overleggen!</p>', NULL, 'luisteren;samenwerken;cummunicatie', 'https://keeptalkinggame.com', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/lDgTqx-jz8Q\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 3, 5, 10, 5),
(20, 'Not Alone', 'notalone.png', '<p>Not Alone is een asymmetrisch kaartspel waarin één speler (het monster) het opneemt tegen de rest.</p>\r\n\r\n<p>Alle spelers, uitgezonderd het monster, verkennen Artemia door middel van plaatskaarten. Door plaatskaarten en overlevingskaarten te spelen, proberen ze het monster te vermijden, te verwarren of af te leiden tot er hulp komt.</p>\r\n\r\n<p>Het monster zal de spelers achterna zitten door jachtkaarten te spelen en door de mysterieuze krachten van Artemia te gebruiken.</p>', 'Exploration', 'luisteren;samenwerken;inschatten', 'https://boardgamegeek.com/boardgame/194879/not-alone', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/TJzUjoZRbzw\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 3, 7, 45, 10),
(21, 'The Climbers', 'climbers.jpg', '<p>Tactisch driedimensionaal spel. Probeer als eerste het hoogste punt te bereiken. De 35 verschillende, gekleurde blokken worden willekeurig neergezet, waardoor elk spel anders is. Maar pas op, je mag uitsluitend op blokken van je eigen kleur en neutrale blokken klimmen.</p>', NULL, 'logica;inzicht', 'https://www.capstone-games.com/the-climbers', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/EjL6_zOXXIs\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 2, 5, 50, 10),
(22, 'Gizmos', 'gizmos.jpg', '<p>In Gizmos verzamelen slimste geesten van onze generatie zich op de Great Science Fair. Iedereen heeft hard aan hun creaties gewerkt, maar slechts één kampioen wordt gekroond. Deelnemers moeten on the fly denken om hun machines snel en efficiënt te bouwen. Wiens project zal het beste zijn?</p>', NULL, 'plannen;opbouwen;combineren', 'https://www.cmon.com/product/gizmos/gizmos', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/J9gbMpM39TI\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 2, 4, 45, 15),
(23, 'The Dragon & Flagon', 'dragon_flagon.png', '<p>The Dragon & Flagon is a tavern world-renowned for its most magical drink, The Dragon. Legend has it that one sip of The Dragon can give a hero wondrous abilities beyond their wildest dreams — but with a tavern full of thirsty adventurers and only one flagon left, things are bound to go wrong. Prepare your magic and grab your weapon because there\'s only one true objective in this brawl — and it\'s not just a sip of The Dragon. Only one can win and emerge with the reputation as the greatest fighter ever seen within the walls of The Dragon & Flagon!</p>', NULL, 'vooruitdenken;timemanagement', 'https://boardgamegeek.com/boardgame/193840/dragon-flagon', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/teGFB4DiKzc\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 4, 8, 60, 15),
(24, 'Pandemic', 'pandemic.png', '<p>In dit coöperatief bordspel zijn de spelers leden van een eliteteam dat ten strijde trekt tegen vier bijzonder dodelijke ziektes. Het team reist over de hele wereld om de vloedgolf van infecties in te dammen en om kennis en hulpbronnen op te doen om medicijnen te ontwikkelen. Lukt het jou om de mensheid te redden?</p>', 'Extreem Gevaar;In het Lab', 'samenwerking;overzichthouden;cummunicatie', 'https://nl.wikipedia.org/wiki/Pandemie_(spel)', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/ojkScPkdgsk\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 2, 4, 60, 15),
(25, 'Everyone is John', 'john.png', '<p>Everyone Is John is one of the quickest, simplest RPG\'s out there, created by Michael B. Sullivan The main concept is that every player but one plays a voice in \"John\'s\" head. All of these voices are trying to get John to do something that they like. The funniest thing about this game is your voice can make him want to do ANYTHING. (I mean ANYTHING) The remaining player plays as John. It is advised that this player is the usual GM/ST or at least the best at telling a story. The game has recently been expanded and released as a book by Gamer Nation Studios, with several \"adventure seeds\" to begin your story.</p>', NULL, 'creativiteit;communicatie;vindingrijkheid', 'https://1d4chan.org/wiki/Everyone_Is_John', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/NKqlEIZeO_Y\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 3, 6, 60, 5);

-- --------------------------------------------------------

--
-- Table structure for table `plannedgames`
--

CREATE TABLE `plannedgames` (
  `id` int NOT NULL,
  `gameid` int NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `plannedgames`
--

INSERT INTO `plannedgames` (`id`, `gameid`, `time`) VALUES
(33, 7, '2022-11-16 13:24:00'),
(34, 11, '2022-11-10 11:19:00'),
(35, 9, '2023-09-09 18:14:00'),
(36, 25, '2023-09-07 15:18:00'),
(37, 12, '2023-08-29 15:00:00'),
(38, 8, '2023-09-05 17:04:00');

-- --------------------------------------------------------

--
-- Table structure for table `plannedusers`
--

CREATE TABLE `plannedusers` (
  `plannedgameid` int NOT NULL,
  `userid` int NOT NULL,
  `is_host` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `plannedusers`
--

INSERT INTO `plannedusers` (`plannedgameid`, `userid`, `is_host`) VALUES
(33, 5, 0),
(33, 4, 0),
(33, 3, 1),
(34, 3, 1),
(34, 4, 0),
(35, 3, 0),
(35, 3, 0),
(36, 5, 0),
(36, 4, 1),
(37, 5, 0),
(37, 4, 1),
(38, 3, 1),
(38, 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`) VALUES
(3, 'TestUser1'),
(4, 'TestUser2'),
(5, 'TestUser3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plannedgames`
--
ALTER TABLE `plannedgames`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gameid` (`gameid`);

--
-- Indexes for table `plannedusers`
--
ALTER TABLE `plannedusers`
  ADD KEY `plannedgameid` (`plannedgameid`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `games`
--
ALTER TABLE `games`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `plannedgames`
--
ALTER TABLE `plannedgames`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `plannedgames`
--
ALTER TABLE `plannedgames`
  ADD CONSTRAINT `gameid` FOREIGN KEY (`gameid`) REFERENCES `games` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `plannedusers`
--
ALTER TABLE `plannedusers`
  ADD CONSTRAINT `plannedgameid` FOREIGN KEY (`plannedgameid`) REFERENCES `plannedgames` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `userid` FOREIGN KEY (`userid`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
