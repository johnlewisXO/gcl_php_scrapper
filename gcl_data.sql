-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 12, 2023 at 07:25 PM
-- Server version: 8.0.31
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gcl_data`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `title` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `content` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`title`, `content`, `date`, `image`) VALUES
('Snart startar inflyttningen i Nordens högsta byggnad Karlatornet', 'GLC är ett av Västsveriges starkaste transportföretag och har ungefär 350 fordon och 400 personer i verksamheten GLC arbetar främst inom de mer kvalificerade delarna av transportsektorn thermo distribution anläggning renhållning tung specialtransporter samt flytt och magasineringstjänster Genom GLC får man också tillgång till andra tjänster som till exempel ett stort modernt och väl placerat kyl och fryslager Självklart är alla fordon godkända för transporter inom miljözoner i Sverige och utomlands Omsättning 1 miljard SEK', 'mån jun 12 2023 0907 CET', 'https://mb.cision.com/Public/2355/2021520/b3bcea05e7998d11_org.jpg'),
('Sveriges största privata laddstation för elektrifierade lastbilar invigd i Göteborg', 'Pressansvarig', 'mån apr 24 2023 0900 CET', 'https://mb.cision.com/Public/2355/2021520/b3bcea05e7998d11_org.jpg'),
('GLC expanderar och fortsätter sin satsning på grön omställning', 'Serneke har utsett västsvenska GLC Flytt AB att ansvara för all logistik och projektledning i samband med inflyttningen i Nordens högsta byggnad Karlatornet i Göteborg Inflyttningen startar i slutet av augusti och väntas vara helt genomförd sommaren 2024 Vi håller tidsplanen och är glada över att inflyttning snart kan ske Då detta är ett komplicerat uppdrag som kräver kompetens fingertoppskänsla och flexibilitet är vi glada att ha med oss GLC Flytt Att vi valt GLC Flytt som leverantör av projektledning och all logistik kring inflyttningen till Karlatornet känns tryggt då de är en', 'ons dec 21 2022 0500 CET', '/Content/img/news-logo.png'),
('Sveriges största privata laddstation för elektrifierade lastbilar byggs i Göteborg', 'Västsvenska GLC Göteborgs Lastbilcentral invigde på torsdagen den 20 april Sveriges kraftigaste och största laddstation för elektrifierade lastbilar Stationen har 15 laddplatser där samtliga har kraft för snabbladdning Det var Karin Pleijel MP kommunalråd för miljö klimat och stadsmiljöfrågor inklusive trafik för Göteborgs Stad som invigde I stället för en traditionell bandklippning kopplade Karin Pleijel och Martin Salenius VD på GLC symboliskt ihop två orangea laddkablarFler laddstationer för tunga fordon är positivt och viktigt för att Göteborgs näringsliv ska vara en del', 'sön aug 21 2022 0737 CET', 'https://mb.cision.com/Public/20611/contact/undefined/bf5f20c9bffca1ba_200x200ar.jpg'),
('GLC och Stena Recycling i hållbart samarbete', 'Västsvenska GLC Göteborgs Lastbilcentral tar nästa strategiska steg på sin tillväxtresa I dagarna blev det klart att man köper två ytterligare tomter av SernekeAngered 21 dec 2022 GLC samlade all sin verksamhet på ett ställe 2015 när man flyttade in i det som idag är norra Europas modernaste logistikcenter Redan nu börjar man växa ur sina lokaler och har därför investerat i två ytterligare tomter på 12 000 respektive 15 000 kvadratmeter För att ligga steget före och möta marknadens behov tar vi nu nästa strategiska steg på vår tillväxtresa Vi har stadigt ökat vår', 'ons jun 08 2022 0700 CET', 'https://mb.cision.com/Public/20611/3783421/be4e45af01e31477_200x200ar.jpg'),
('GLC SKF och SCANIA levererar hållbart', 'Västsvenska GLC Göteborgs Lastbilcentral startar nu bygget av Sveriges kraftigaste och största laddstation för elektrifierade lastbilar med invigning i december 2022 Stationen har 15 laddplatser där samtliga har kraft för snabbladdning Stationen kostar drygt 8 miljoner att etableraLaddstation GLC Vi är mycket glada över att kunna underlätta för våra delägare att välja mer hållbara transportlösningar Laddstationen är en milstolpe för oss och en pusselbit i det paradigmskifte som sker inom transportsektorn Vi ska reducera de fossila CO2utsläppen med 70 till 2026 jämfört med', 'tor maj 19 2022 1445 CET', 'https://mb.cision.com/Public/20611/3756237/a3c82be1fee9c223_200x200ar.jpg'),
('GLC har nu undertecknat TRB Klimatprotokoll Vår målbild Klimatneutrala redan 2035', 'Västsvenska GLC Göteborgs Lastbilcentral och Stena Recycling krokar arm och fortsätter att ta ansvar för miljönAngered 8 juni 2022 GLC har varit leverantörer till Stena Recycling i drygt 20 år Två lastbilar som drivs på Biogas är nu satta i drift Dels en liftdumper från Scania som drivs med komprimerad gas dels en lastväxlare från Volvo som drivs med LNG GLC har idag ett 40tal lastbilar i trafik på uppdrag av Stena Recycling Det känns fantastiskt roligt att göra detta tillsammans Stena Recycling är en viktig kund och här handlar det om att vi gemensamt skapar', 'tor aug 19 2021 1207 CET', 'https://mb.cision.com/Public/20611/3687899/b6c127a2e9fc937e_200x200ar.jpg'),
('Göteborgsföretag storsatsar på fossilfria transporter', 'Västsvenska GLC Göteborgs Lastbilcentral satsar vidare på att elektrifiera sin fordonsflotta Igår levererades ytterligare lastbilar som drivs helt på el Dessa båda lastbilar ska driftas för kunden SKFAngered 19 maj 2022 Lastbilarna kommer att trafikera de interna rutterna på SKFområdet i Göteborg Det blir många kilometer på ett år Genom investeringen i helelektriska lastbilar visar GLC i handling att man menar allvar med sin hållbarhetsresa Vi satsar löpande på att vara proaktiva för våra kunder Vi är glada över att vi har kunder som likt SKF vågar satsa i en tid av', 'mån jul 26 2021 0835 CET', 'https://mb.cision.com/Public/20611/3616147/b522def3741c6495_200x200ar.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `citations`
--

CREATE TABLE `citations` (
  `citation` varchar(2000) COLLATE utf8mb4_general_ci NOT NULL,
  `author` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `citations`
--

INSERT INTO `citations` (`citation`, `author`) VALUES
('Vi håller tidsplanen och är glada över att inflyttning snart kan ske Då detta är ett komplicerat uppdrag som kräver kompetens fingertoppskänsla och flexibilitet är vi glada att ha med oss GLC Flytt Att vi valt GLC Flytt som leverantör av projektledning och all logistik kring inflyttningen till Karlatornet känns tryggt då de är en seriös aktör vi känner väl Det är viktigt att de som flyttar till Karlatornet får ett så smidigt mottagande som möjligt', 'Martin Thelin projektchef för Karlatornet för Serneke'),
('Karlatornet är Göteborgs första skyskrapa vilket innebär en hel del utmaningar Även om inflyttningen sker i etapper så är det många som flyttar samtidigt Det betyder att logistik och projektledning behöver skötas minutiöst Vi är mycket stolta att GLC Flytt fått förtroendet att ingå partnerskap med Serneke för inflyttningarna i Nordens högsta byggnad', 'Sudo Sulejmanovic affärsområdeschef på GLC Flytt AB'),
('Fler laddstationer för tunga fordon är positivt och viktigt för att Göteborgs näringsliv ska vara en del av lösningen i att nå Göteborgs tuffa klimatmål ett klimatavtryck nära noll till 2030 Vi behöver en snabb och omfattande utbyggnad av laddinfrastruktur för omställningen till tunga elfordon säger Karin Pleijel MP', 'Karin Pleijel MP kommunalråd för miljö klimat och stadsmiljöfrågor inklusive trafik för Göteborgs Stad'),
('För att ligga steget före och möta marknadens behov tar vi nu nästa strategiska steg på vår tillväxtresa Vi har stadigt ökat vår omsättning och kundstock och ser samtidigt en ökad efterfrågan på klimatsmarta transporter från våra kunder', 'Martin Salenius VD GLC'),
('GLC är en seriös aktör med fokus på kvalitet och hållbarhet i sin leverans Vi på Serneke är glada att få vara en del i att skapa förutsättningar för GLC i deras tillväxtambitioner Att det dessutom skapar ytterligare utveckling i Gårdsten där vi sedan länge varit engagerade är lika glädjande', 'Ola Serneke VD Serneke Invest'),
('Vi är mycket glada över att kunna underlätta för våra delägare att välja mer hållbara transportlösningar Laddstationen är en milstolpe för oss och en pusselbit i det paradigmskifte som sker inom transportsektorn Vi ska reducera de fossila CO2utsläppen med 70 till 2026 jämfört med 2010 Det nationella målet för transportsektorn är 2030 Vi har även som målbild att vara klimatneutral 2035 Det nationella målet här är 2045', 'Martin Salenius VD GLC'),
('GLC är otroligt proffsiga att jobba med Laddningslösningen är mycket avancerad GLC har tänkt till Hårdvaran från finska Kempower är toppklass och i framkant Vi är mycket stolta och glada över att vara med i GLCs framtida utveckling Martin Götesson VD Kalema EMobility AB', 'Martin Götesson VD Kalema EMobility AB'),
('Det nya laddnavet på Göteborg Lastbilcentral är återigen ett exempel på elektrifieringen av lastbils och logistikverksamheten och en demonstration av vad som kan uppnås genom nordiskt samarbete Kempowers styrka är dynamisk effekthantering och en avancerad molnbaserad SaaSlösning speciellt designad för att optimera Total Cost of Ownership Med vår intelligenta effektfördelning balanseras effekten dynamiskt för att möta laddningsbehov både över natten och dagtid', 'Tomi Ristimäki VD Kempower'),
('Det känns fantastiskt roligt att göra detta tillsammans Stena Recycling är en viktig kund och här handlar det om att vi gemensamt skapar förutsättningar för att alla ska vara vinnare i samtliga led Båda bolagen satsar på en hållbar framtid och transporterna är en viktig puzzelbit Eftersom det är stora investeringar för åkaren känns det bra att Stena ser sina samarbeten långsiktigt', 'Sefedin Harbas AOchef på GLC'),
('GLC har samma inställning till hållbarhet som oss på Stena att driva utvecklingen framåt Med våra 95 filialer över hela Sverige och ca 1700 anställda har vi ett särskilt ansvar att vara ledande inom hållbarhet Vårt interna åkeri kör enbart på HVO och maskinerna på våra anläggningar drivs av också på HVO bra för miljön och viktigt vid upphandlingar Att GLC nu satsar för att ytterligare stärka vår affär är mycket bra', 'Andreas Strömbäck filialchef Göteborg på Stena Recycling'),
('En extra bonus är att våra kunder alltid berömmer GLCs förare för deras trevliga bemötande och flexibilitet I kundundersökning efter kundkundundersökning får GLC som underleverantör ett högt betyg GLC stärker vår leverans', 'Andreas Strömbäck filialchef Göteborg på Stena Recycling'),
('Detta ligger helt i linje med vår strategi som vi kallar Inteligent and Clean Growth Det innebär i praktiken att vi ska leverera hållbara och intelligenta lösningar för våra kunder men vi skall också leva som vi lär och då handlar det om att använda ny teknik digitalisera och elektrifiera samt minska vår klimatpåverkan inom vår egen verksamhet Idag är vi redan klimatneutrala inom vår tillverkning här i Göteborg och framåt har vi som mål att vara klimatneutrala längs hela vår värdekedja inklusive leverantörer och transporter Detta är ett stort steg i rätt riktning och vi är glada över att GLC som vi haft ett gott och nära samarbete med i drygt 25 år är med oss i denna strävan', 'Måns Isacsson Logistik och transportchef på SKF'),
('Vi satsar löpande på att vara proaktiva för våra kunder Vi är glada över att vi har kunder som likt SKF vågar satsa i en tid av omställning', 'Luigi Johannesson affärsområdeschef på GLC'),
('Det är fantastiskt att vi kan leverera en produkt med serieprestanda Fordonen tillverkas på serielinan i Södertälje och många av komponenterna är samma som i våra fossildrivna lastbilar och här är ju hela drivlinan elektrisk Fordonen har fina köregenskaper för föraren och ett lågt klimatavtryck', 'Olov Petrén hållbarhetsansvarig region väst på Scania'),
('Transportbranschen är mitt inne i en stor omställningsresa och det är viktigt att vi tillsammans hittar lösningar för att såväl klara som påskynda omställningen Samtidigt är transporterna att jämföra med samhällets blodomlopp så en god funktionalitet och kvalitet måste upprätthållas under omställningen Att delägarna inom TRB enats om ett gemensamt mål och en gemensam resa mot en snabbare omställning kommer medföra fler hållbara affärer samtidigt som vi kan erbjuda marknaden mer klimatsmarta transporter Tillsammans är vi starkare', 'Martin Salenius VD GLC'),
('TRBs delägarföretag har länge arbetat med miljöfrågor och har ambitioner att alltid ligga i framkant i hållbarhetsfrågorna TRB Klimatprotokoll är ytterligare ett steg för TRBgruppen att positionera sig på marknaden som hållbara och ansvarstagande transportföretag', 'Fredrik Landegren VD drivmedelsansvarig TRB Sverige AB'),
('Det är viktigt att TRB Klimatprotokoll går att genomföra på ett hållbart sätt Därför har vi delat upp det i tre delar Bilen Bränslet och Beteendet Allt för att kunna mäta och förbättra våra insatser för klimatet hela vägen mot att bli klimatneutrala 2035', 'Petra Brinkhoff Hållbarhetsansvarig TRB Sverige AB'),
('Det är fantastiskt roligt att tillsammans med ICA starta med eldrivna transporter Vi kommer nu att fortsätta vårt fossilfria spår med fler fordon för framtiden Utöver eldrivna fordon så satsar vi stort på fordon drivna med fossilfri biogas och är precis i begrepp att bygga klart vår nya tankstation för fossilfri biogas tillsammans med Gasum kommenterar Luigi Johannesson affärsområdeschef för Thermo Distribution på GLC', 'Luigi Johannesson GLC affärsområdeschef Thermo Distribution'),
('Vi är mycket stolta och glada över att GLC valt oss som samarbetspartner på sin elektrifieringsresa Vi vill hjälpa våra kunder minimera koldioxidutsläpp buller och luftföroreningar Vår Volvo FL Electric passar perfekt för stadsdistribution där det är många start och stopp', 'Henrik Wickman Regionchef Väst på Volvo Truck Center'),
('Vi har som mål att våra vägtransporter i storstadsregioner ska vara helt fossilfria år 2025 Att jobba med eldrivna fordon är en viktig del i att nå våra hållbarhetsmål GLC är en trygg och professionell leverantör och vi ser fram emot samarbetet', 'Marcus Åkerberg avtalsansvarig ICA Sverige');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `src` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `alt` varchar(500) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`src`, `alt`) VALUES
('https://mb.cision.com/Public/20611/3783421/be4e45af01e31477_200x200ar.jpg', ''),
('https://mb.cision.com/Public/20611/3756237/a3c82be1fee9c223_200x200ar.jpg', ''),
('https://mb.cision.com/Public/20611/3687899/b6c127a2e9fc937e_200x200ar.jpg', ''),
('https://mb.cision.com/Public/20611/3616147/b522def3741c6495_200x200ar.jpg', ''),
('https://mb.cision.com/Public/20611/3616147/a8d47a7b9bf5bde7_200x200ar.jpg', ''),
('https://mb.cision.com/Public/20611/3616147/8cd82036a1a8dafd_200x200ar.jpg', ''),
('https://mb.cision.com/Public/20611/3616147/972edba4cf88f849_200x200ar.jpg', ''),
('https://mb.cision.com/Public/20611/3581406/a810147c51c69583_200x200ar.jpg', ''),
('https://mb.cision.com/Public/20611/3581406/8dae604f26475dec_200x200ar.jpg', ''),
('https://mb.cision.com/Public/20611/3570846/8d56b5daf6a08e75_200x200ar.jpg', ''),
('https://mb.cision.com/Public/20611/3570846/987b1f1b4594fa21_200x200ar.jpg', ''),
('https://mb.cision.com/Public/20611/3570846/8b6c4cd8e5e161f7_200x200ar.jpg', ''),
('https://mb.cision.com/Public/20611/3570846/acbcf05621b8f3f0_200x200ar.jpg', ''),
('https://mb.cision.com/Public/20611/3570846/b50f293557299160_200x200ar.jpg', ''),
('https://mb.cision.com/Public/20611/3399006/bbc6eeacd45721f1_200x200ar.jpg', ''),
('https://mb.cision.com/Public/20611/3399006/aac87e581c7cbbd1_200x200ar.jpg', ''),
('https://mb.cision.com/Public/20611/3399006/9242e63c605ac880_200x200ar.png', ''),
('https://mb.cision.com/Public/20611/3399006/a3cf10fd4f8269c4_200x200ar.jpg', ''),
('https://mb.cision.com/Public/20611/3384210/988a51134ed24c3b_200x200ar.jpg', ''),
('https://mb.cision.com/Public/20611/3384210/9d09b573d842f845_200x200ar.jpg', ''),
('https://mb.cision.com/Public/20611/3384210/88e5fc588e2c2270_200x200ar.jpg', ''),
('https://mb.cision.com/Public/20611/3384210/a213c8e1753c6270_200x200ar.jpg', '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
