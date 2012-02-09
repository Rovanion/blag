-- phpMyAdmin SQL Dump
-- version 3.3.7
-- http://www.phpmyadmin.net
--
-- Värd: localhost
-- Skapad: 08 februari 2012 kl 10:36
-- Serverversion: 5.0.51
-- PHP-version: 5.2.4-2ubuntu5.19

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Databas: `matste_bloggen`
--

-- --------------------------------------------------------

--
-- Struktur för tabell `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `number` int(11) NOT NULL auto_increment,
  `dateTime` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `title` text character set utf8 collate utf8_swedish_ci NOT NULL,
  `post` text character set utf8 collate utf8_swedish_ci NOT NULL,
  PRIMARY KEY  (`number`),
  KEY `index` (`number`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Data i tabell `posts`
--

INSERT INTO `posts` (`number`, `dateTime`, `title`, `post`) VALUES
(1, '2010-11-16 14:14:08', 'Hello World', 'Once upon a time in a land far far amay a blog was created. These are the publications that were made channeled trough time and space into the age of our own.\r\n<br><br>\r\nAnd all your base are belong to us! '),
(7, '2010-10-24 17:40:08', ' Företaget som dog', 'En vecka full utav händelser. Allting ifrån nya versioner av designer till vad som ser ut som slutet av mitt företagarskap, åt minstone för tillfället.<br><br>Det har varit en intressant vecka, att påstå annat vore en lögn. Därimot borde jag skriva här oftare än en gång per vecka, jag glömmer så snabbt vad jag har gjort. Hur än det är med det så arbetade jag för sju dagar sedan med Xara Xtreme på två nya revisioner utav tangentbordet, den ena vilken jag visade för Roland i fredags. Arbetet bör ha tagit mig cirkus två timmar.<br><br>Jag har sedan fått uppleva att Xara Xtreme är jättefint för det enkla den klarar av men fylld med buggar. Att exportera en .xar-fil till en vanlig vettig SVG visade sig bli ett mindre företag. Men det viktiga är att jag fick det gjort så att den går att öppna i valfritt program. Allting ifrån din bildvisare - förutom standarden i Windows - till din favoritwebbläsare - förutom Internet Explorer. Jag förnimmer ett visst mönster, men det är ovesäntligt.<br><br>Under vardagen som följde är det enda egentliga arbetet jag gjort på projektet arbetet på just denna sida du läser detta på just nu. Det kan kanske tyckas att denna sidan ligger utanför ramen av projektarbetet. Dock vill jag poängtera att den här sidan är dokumenteringen över allt vad jag gör, en komplett beskrivning från början till slut presenterad i ett stilrent läsbart format. Och för dokumentationens skull kan jag berätta att jag har lyckats förstöra en hel del saker under veckan för att sedan reparera dom, det mesta i alla fall.<br><br>Den dagen som bör noteras är dock fredagen då jag kvart över nio på morgonen mötte en man vid namn Roland Lindkvist från innovation Västerbotten i skolans konferensrum. Vad som följde var en komplett sågning av min affärsidÃ©, om man nu kan kalla den det. Han förklarade att vad jag försökte göra var i princip omöjligt inom ramarna för vad ett Ungdomsföretag är och att jag trogilare finner lyckan om jag anfaller problemet från ett annat håll. Det finns helt enkelt inte tid inom livscykeln av ett Ungdomsföretag för att få plats med allting som jag planerat.<br><br>Vad jag vill göra är att skapa mitt tangentbord, det spelar egentligen ingen större roll under vilka förhållanden det sker. Så jag avveklar nu officielt mitt företag som aldrig ens existerade. Nu får vi se vad som händer i framtiden.<br>'),
(2, '2010-10-18 10:37:45', 'Text och skiss', 'Så nu har det gått två veckor sedan jag "startade" mitt företag. Företaget har ännu inget namn och jag har därför inte kunnat registrera mig och det på www.ungföretagsamhet.se .<div><br></div><div>Under de första två veckorna har jag först spenderat ungefär två timmar på att finna ett passande program för att skissa upp tangentbordet. Det slutade med att jag bestämde mig för en SVG-editor vid namn Xara Xtreme. Det är ett väldigt snabbt program men med begränsade funktioner. Men anledningen till att jag valde det över t.ex. Inkscape är att det är otroligt snabbt i situationer som att rita om bilden när man panorerar eller zoomar.</div><div><br></div><div>Efter det har jag ritat upp min första iteration av tangentbordet, en första skiss som tog mig ungefär fyra timmar att rita.</div><div><br></div><div>Nu har jag på morgonen läst en vetenskaplig avhandlingar angående ergonomi, tangentbord och arbetsrelaterade muskel och skelettskador:&nbsp;<a href="http://ptjournal.apta.org/content/81/4/1038.full">http://ptjournal.apta.org/content/81/4/1038.full</a>&nbsp;. Den har gett mig ett par svårgenomförliga idÃ©er, någonting att se över vid senare tillfälle. Läsningen tog mig just under en timme.</div><div><br></div><div>På min programmeringskurs i PHP har jag designat och programmerat denna hemsida, som just nu innehåller vad som kan liknas vid en blogg. Progressivt kommer den att utveklas till en fullskalig företagshemsida där denna blog endast är en subsektion och inte förstasidan.</div><div><br></div><div>Utöver detta har jag gjort ett besök på banken för att öppna ett företagskonto. Tyvärr hade jag avstämt någon mötestid på förhand och delen av Swedbank där man gör detta över disk var inte öppen vid mitt besök.</div><meta http-equiv="content-type" content="text/html; charset=utf-8">'),
(8, '2010-11-08 10:42:51', 'Två veckors arbete', 'Två veckor har passerat, två veckor där en projektplan tagit form och genomgått en mängd revisioner.\r\n<br><br>\r\nOm du flyttar din blick lätt till höger så kommer du att se två nya länkar i menyn, ja, nu är det faktiskt en meny med någon slags funktion. Den ena länken leder till tidsplanen och den andra leder till projektplanen. Båda dessa sidor är utformade så att de innehåller de Google-dokument som är min projekt- och tidsplan. Så om jag vid senare tillfälle väljer att revidera min tids- eller projektplan så kommer detta att synas direkt på dessa sidor.\r\n<br><br>\r\nDessa dokument som är mina planer för projektarbetet började jag skriva på för ungefär två veckor sedan, dom har båda genomgått ungefär tre revideringar i sin nuvarande form och tog tillsammans upp cirka fyra timmar att skriva.\r\n<br><br>\r\nEn del förbättringar samt en del saker som inte fungerat men var en god tanke har gjorts på denna hemsida. Förutom dom nya sidorna bör man nu vid det tillfälle du läsare detta kunna välja sida såväl som antal inlägg att visa per sida.\r\n<br><br>\r\nFör ungefär sex dagar sedan pratade jag med min far som är anställd på Tieto i Ursviken och två dagar senare kom han hem med två par tangentbord som jag sedan satte skruvmejsel och kniv i. Det visade sig att tangentbord är konstruerade lite annorlunda än vad jag hade tänkt mig och måste vara ganksa billiga att massproducera.\r\n<br><br>\r\nNi förstår, ett tangentbord består utav fem olika slags komponenter. Tangenttopparna i hårdplast vilka är vad dina fingrar fysiskt rör vid. Plastramen även den i hårdplast som utgör skyddet för resten av tangentbordet och är vad som håller ihop det. En gummimatta, eller i vissa fall faktiskt mekaniska fjädrar, som utgör motståndet i tangentbordet. Tre lager utav tunn plast där den mittersta är utan några kretsar och separerar de två andra plastlagren som är vad tangenterna trycker på. När dessa kretsar på plastskiktena sluts så skickar en microprocessor, om man nu kan kalla ett så enkelt chip en mikroprocessor, på ett separat kretskort signalen via en USB-kabel till en dator.\r\n<br><br>\r\nSå nu vet jag hur ett tangentbord ser ut, nu behöver jag bara leta rätt någonstans där jag kan beställa alla komponenter och göra hårdplastskalet samt de tre plastlagren.'),
(14, '2010-11-14 21:14:11', 'Huston, we have contact', 'Det sade man troligtvis aldrig under Appollouppdragen, men det används ända ofta vid tillfällen så som detta och jag ser inte varför jag inte kan göra det då jag nu först har berättat att det är ett falskt citat.<br><br>Jag har alltså ringt upp inte mindre än fyra företag under veckans gång. Först så ringde jag upp LEAB där jag efter att ha blivit omkopplat fick berättat att det var <a target="" title="membranswitchar" href="http://en.wikipedia.org/wiki/Membrane_switch">membranswitchar</a> som var det korrekta namnet på typen av kretsar jag sökte. Sedan fick jag även beskedet att dom inte tillverkar membranswitchar, utan köper in dom från ett annat företag vid namn Acelloprint. <br><br>Någonting som irriterade mig under samtalet var att jag av någon anledning blev nervös, eller var redan det inför samtalet. Vad jag inte förstår är varför jag nödvändigtvis skulle bli det. Jag har annars inga problem över huvud taget att tala inför människor och har på daglig basis fört epost-konversationer med människor som har varit anställda på stora internationella företag. <br><br>Någon annan gång får jag berätta om hur totalt awesome open-source är.<br><br>Hur som haver ringer jag upp Acelloprint. Eftersom att jag inte alls vet hur ett sådant här samtal ska gå till eller ens vad det riktigt är jag frågar efter utan snarare famlar mig fram i ett mörker blev inte samtalet någon direkt succé. Hur än det gick fick jag reda på att en membranswitch ifrån Acelloprint börjar ifrån 3000kr. Därimot fick jag inte alls några svar på hur man går till väga när man beställer ett sådant.<br><br>Eftersom att jag vid det här laget känner att jag inte har någon aning om hur jag ska gå till väga för att faktiskt beställa ett kretsort och att jag knappast kan ringa upp samma företag igen bestämmer jag mig för att söka reda på ett nytt företag.<br><br>Och min Google-fu svek mig inte, jag fann direkt Stockholmsföretaget Membrane Switch. Jag ringer upp personen som står under titeln försäljningsansvarig och får tala med en man som är mycket lättare att tala med än de tidigare. Han berättar att från dem kan man för 15000kr få utveckla ett verktyg för att producera membrankretsar. En hel del pengar. Men han ville att jag skulle sända honom ett epost vid tillfälle, troligtvis gör jag det inför att jag börjar rita på min krets.<br><br>Dessa samtal tillsammans med förberedelser borde ha tagit mig cirka två timmar, mycket tid gick åt för att kolla upp vad det faktiskt var för någonting jag ville köpa.<br><br>Jag har från min moder som även hon arbetar för Tieto fått ett tredje begagnat tangentbord. Den här gången var det ett DELL-tangentbord som ansluts till datorn med hjälp av USB; detta är perfekt då jag nu kan ta reda på hur jag ska utforma kretskortet. Dom två tidigare har haft PS/2-kontakter, men mitt tangentbord ska anslutas via den så kallat Universala Seriella Bussen.<br><br>Jag öppnade upp och kollade i tangentbordet och precis som de förra två är "kretskortet" ett membran.<br><br>Utöver det så har jag nu under Söndagen spenderat tre timmar på ytterligare fyra revisioner utav min skiss. Det finns fortfarande en del problem med dem, jag får söka lite feedback hos mina vänner tror jag.<br><br>Inför nästa vecka skulle jag behöva ha en överläggning med min handledare, för att se vars jag går härifrån.<br>'),
(16, '2010-11-21 20:55:03', 'Förloppsmätning', 'Den stora nyheten denna veckan finner ni till höger, den nya länken Tid.<br><br>Den länken leder dig till den sidan som redovisar samtlig tid spenderad på detta prjekt. Sedan har denna sida, liksom tidssidan, utrustats med en förloppsmätare. Dessa får sin data ifrån en ny databas  där jag varje gång jag utför någonting som direkt har med projektarbetet att göra fyller i vad jag gjorde och vilken tid det tog. Sedan läggs det till en fin tidsstämpel.<br><br>Detta gör att jag vid slutet på projekarbetet kommer att ha en väldigt komplett bild av vars tiden har gått åt. Den tiden jag har spenderat nu på redovisningen tas ikapp då en mindre mängd arbete måste göras vid slutet av projektarbetet.<br><br>Jag har även fyllt i all tidigare spenderad och gett dem något så när stämmande tidsstämplar.<br><br>Utöver det så har jag läst <a target="" title="" href="http://www.overclock.net/keyboards/491752-mechanical-keyboard-guide.html">denna</a> guide från en användare på overclock.net om mekaniska tangentbord. Detta har bland annat fått mig att inse att jag behöver göra mer efterforskningar innan jag kan ge mig in på att producera tangentbordet. Kanske är inte en membrankrets det optimala i alla lägen.<br><br>Under veckan som passerade har jag varit alldelens för upptagen med bland annat nationella prov i Svenska för att ha ordentligt med tid att spendera på projektarbetet. Förhoppningsvis blir nästa vecka lugnare.<br>'),
(17, '2010-11-29 17:55:22', 'Efterforskningar', 'Denna vecka har varit lugn. Tiden har förflutit och information har långsamt rullat in.<br><br>Jag är nu klar över vilka delar tangentbordet ska bestå av. Det kommer att vara en membrankrets, gummimatta, saxswitchar, ett antal specialgjorda toppar, ett lager av metall eller plast som håller fast saxarna, den krets med microprocessor som reagerar på membrankretsen och sänder signaler till dator och slutligen ett plastskal runt allting detta.<br><br>Jag har efter epostkorrespondens med företaget Membrane Switch fått specifikationer för hur samt i vilket format ritningar skall skapas för membrankretsen. Vad som ligger mellan att jag ritar kretsarna idag är att jag ännu inte tagit reda på specifika mått för tangenterna. Efter det kan jag genom att undersöka de tangentbord jag äger ta reda på vilka slutna kretsar som leder till att vilken tangentkod sänds till datorn.<br><br>Sedan öppnade jag under veckan upp en laptop av modellen Dell Latitude C600 för att ta mig en närmare titt på saxswitchar som brukligt används i bärbara datorer då de är mycket mindre i höjdledd än andra tangenter samt att fortfarande är relativt billiga. "Fjädern" i saxswitchar är precis som på ett vanligt tangentbord en gummimatta.<br><br>Men det behövs ännu en vecka av efterforskningar, alltså en utöver den enligt tidsplanen planerade. Dock så behöver den inte nödvändigtvis läggas just nästa vecka. Att fokusera på en del i taget kan visa sig vara en fungerande plan.<br>'),
(18, '2010-12-06 09:23:46', 'Hur går kretsen?', 'Det är frågan jag hoppas att jag ska kunna besvara i slutet av nästa vecka.<div><br></div><div>Men denna vecka har jag kommit en lång bit på vägen. Totalt har jag spenderat femton timmar denna vecka med att lista ut hur en mikrokontroller som sitter i ett tangentbord fungerar. Mitt mål är att ta reda på vilka kontakter slutna till varandra som resulterar i att vilken tangentkod blir sänd till datorn.</div><div><br></div><div>Jag läste som sagt dokumentationen för&nbsp;<a href="http://www.alldatasheet.com/datasheet-pdf/pdf/66115/INTEL/83C51KB.html" title="" target="">Intel 83C81KB</a>&nbsp;men där kunde jag inte finna någonting specifikt angående när kretsen används för tangentbord. Det är ingen specifik krets gjord för tangentbord men jag har stött på den i tre av dom fyra tangentbord jag undersökt. Så vad jag nu under veckan i stor del har gjort är att följa de kretsar på de två membranen som jag tagit ur ett äldre <a href="http://www.microsoft.com/hardware/mouseandkeyboard/productdetails.aspx?pid=043" title="" target="">Natural Microsoft Ergonomic Keyboard</a>. När jag är färdig med detta kan jag se vilka tassar på kretsen som resulterar i vilket tecken på datorn.</div><div><br></div><div>Från Membrane Switch har jag fått meddelandet att jag själv inte behöver rita ut kretsarna på membrankretsarna jag ska ha i mitt tangentbord, jag behöver endast markera ut vars jag vill ha vilka tangenter och vars utgången ska vara. Men det blir senare.</div>'),
(19, '2010-12-29 17:03:29', 'Men va det snöar', 'Snön ligger vit på taken, endast tomten är naken.<div><br></div><div>Det verkar som att jag har negligerat bloggen under en tid, det borde åtminstone finnas en till post här från december månad. Så här kommer en!</div><div><br></div><div>Tro inte att jag har gett upp, som ni kan se på tidsredovisningen har jag fortsatt att arbeta och nu tagit fram allt material jag behöver för att utföra ritningen. Kortfattat har jag följt kretsarna på ett existerande tangentbord enligt dessa två bilder: <a href="http://i296.photobucket.com/albums/mm167/Rovanion/Undremembran2.jpg" title="" target="">Undre membran</a>, <a href="http://i296.photobucket.com/albums/mm167/Rovanion/Undremembran2.jpg" title="" target="">Ã–vre membran</a>.</div><div><br></div><div>Efter det fyllde jag ut en tabell med vilka ben på mikrokontrollern som resulterade i vilke tangenter enligt QWERTY-layouten och <a href="https://spreadsheets.google.com/ccc?key=0ArggIiMxgpugdFJub2Mta2VIQ0pQSWl1SGdnNVRnR0E&amp;hl=sv" title="" target="">här är resultatet</a>. Det måste vara det absolut tristaste jag någonsin har gjort. Någonting i min hjärna knäppte till och gjorde det hela till en utdragen tortyr. Men det är klart nu och alla tomtar i tomtebo är glada!</div>'),
(20, '2011-01-20 16:18:31', 'Att finna tangenter', 'Att det skulle vara så svårt att få tag på tangenter hade jag aldrig föreställt mig.<div><br></div><div>Jag har under den första av årets skolveckor så smått arbetat vidare på projektarbetet. Ingen större verksamhet, det mesta har gått ut på att finna återförsäljare av diverse delar. Vad jag för tillfället letar efter är själva tangenterna. Altså toppen, saxen och gummihättan som står för fjädringen. Dessa ska gå och få tag på separat men ännu har jag inte funnit någon återförsäljare.</div><div><br></div><div>Sökandet börjar med att jag frågar på forum med inriktning mot tangentbord eller hårdvarumoddning. Sedan får jag förslag på företag som skulle kunna tillhandahålla vad jag söker vadpå jag sänder då antingen epost ringer upp dessa. Jag får då negativa svar från dem och i bästa fall ett föreslag om ett annat företag som kan tänkas tillhandahålla vad jag söker.</div><div><br></div><div>Dessa är de företag som jag hittils gått igenom:</div><div><ul><li>Infocare<br></li><li>Anovo<br></li><li>Convena<br></li><li>Spectronic<br></li><li>EET<br></li></ul><div><br></div></div><div>Ingen av dom kunde sälja separata tangentbordsdelar utan sålde endast hela tangentbord. Jag har även kollat på <a href="http://www.alibaba.com/" title="" target="">Alibaba</a> men inte funnit någonting.</div></div>'),
(21, '2011-01-31 11:05:01', 'Två ritningar, två veckor', 'Under de senaste två veckorna har jag till synes framställt vad det på tidsplanen står att jag skall framställa, ritningar.<br><br>För två veckor sedan kom det sig att jag letade rätt på ett passande CAD-program vid namn QCad. Jag bekantade mig med detta och fann att det var i mångt och mycket likt AutoCAD 2000i som jag tidigare när jag läste CAD A.<br><br>Sedan blev jag sjuk. Fy, det finns få saker som suger så ofantligt mycket som att vara sjuk. Jag insjuknade fredagen och gled sedan in och ut ur detta tillstånd enda fram till torsdagen då jag kravlade mig tillbaka för en dag av skola.<br><br>Men detta har inte helt förhindrat att jag har fått arbeta på mitt projektarbete. Nej tvärt imot så har jag fått så mycket som elva timmar arbetat på projektet. Och resultatet? Jo två stycken ritningar för höger och vänster del av tangentbordet.<br><br>Vad som ska göras innan dessa sänds iväg till ett företag är att korschecka dessa med tabellerna så att allting stämmer.<br><br>Så där har vi två veckors arbete under sjukdom. Men jag kan inte klaga på resultatet för projektarbetet.<br>'),
(22, '2011-02-22 22:19:10', 'Misskomunikation', 'Med ordet misskomunikation så kan man någorlunda korrekt summera de två senaste veckorna.<div><br></div><div>I arbetet mot företaget Membrane Switch har jag justerat mitt arbete utefter dom kraven som ställts. Men någonstans måste det ha skett missförstånd då det hela efter flertalet epost resulterade i en förfrågan om uppringning.</div><div><br></div><div>Givetvis så skall jag göra detta snarast möjligt, annart vore dumt. Det har dock tagit flera dagar innan jag fått svar på mina epost vilket till en mycket stor del är orsaken till den långsamma utveklingen av projektarbetet.</div><div><br></div><div>Men vi ska hoppas på en mer lättflytande komunikation i framtiden.</div>'),
(23, '2011-03-22 11:21:02', 'Offertinväntan', 'Nu rör det sig äntligen igen.<div><br></div><div>Under tiden som har passerat har planerna delvis förändrats. Insikten har infinnit sig att det är i princip är omöjligt att få tag på separata tangenter till tangentbordet. Istället så kommer jag att använda både microprocessor och stora delar av andra tangentbord för att kunna konstruera tangentbordet.</div><div><br></div><div>Men hos avdelningen membrankrets så ljuder positiva toner. Jag kom just av telefonen med VDn för Membrane Switch och har nu fått förklarat ritningarna för honom. Nu när vi befinner oss på samma sida så ska han ta fram en offert på hur mycket det kommer att kosta att beställa tio stycken exemplar av båda de ritningar som jag sände honom.</div><div><br></div><div>Ja, det är möjligt att jag aldrig nämnt det; Tangentbordet kommer att vara tvådelat. Detta för att kunna minska stressen på handleder. De två delarna kommer att sitta ihop i toppen av varandra och vinkeln mellan de båda kommer att vara inställbar.</div><div><br></div><div>Och nu inväntar vi ivrigt en offert.</div>');

-- --------------------------------------------------------

--
-- Struktur för tabell `tid`
--

CREATE TABLE IF NOT EXISTS `tid` (
  `timestamp` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `timmar` int(11) NOT NULL,
  `kommentar` text character set utf8 collate utf8_swedish_ci NOT NULL,
  `index` int(11) NOT NULL auto_increment,
  PRIMARY KEY  (`index`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=57 ;

--
-- Data i tabell `tid`
--

INSERT INTO `tid` (`timestamp`, `timmar`, `kommentar`, `index`) VALUES
('2010-10-16 12:14:05', 1, 'Arbete runt starten av bloggen', 1),
('2010-10-18 18:31:14', 4, 'Ritade den första iterationen av tangentbordet<br>', 9),
('2010-10-17 18:29:59', 2, 'Sökte den kända världen efter ett passande program för att skissa i<br>', 8),
('2010-10-18 18:32:12', 1, 'Läste en vetenskaplig artikel<br>', 10),
('2010-10-20 18:35:33', 2, 'Arbetatade ut två nya revisioner av skissen<br>', 11),
('2010-10-22 18:38:38', 1, 'Stilen för hemsidan arbetades på', 12),
('2010-10-22 09:40:21', 2, 'Möte med Roland Lindkvist', 13),
('2010-11-02 18:50:21', 5, 'Projektplan samt Tidsplan skrivs och rediveras vardera två gånger', 14),
('2010-11-06 18:50:58', 1, 'Projektplan och Tidsplans-delen av hemsidan byggs', 15),
('2010-11-08 19:06:36', 3, 'Tog isär två stycken tangentbord och undersökte dem', 18),
('2010-11-14 19:11:07', 2, 'Ringde upp fyra företag och kollade emellan samtalen upp information om vad det var för någonting jag var ute efter', 19),
('2010-11-14 19:11:36', 3, 'Ritade fyra revisioner av skissen', 20),
('2010-11-17 19:27:50', 6, 'Programmerade, designade redovisningen för total mängd tid spenderad samt fyllde databasen med existerande data<br>', 21),
('2010-11-20 21:08:55', 2, 'Läste <a href="http://www.overclock.net/keyboards/491752-mechanical-keyboard-guide.html" title="" target="">denna</a> guide om mekaniska tangentbord.', 22),
('2010-11-21 00:08:05', 1, 'Tog isär ett tredje tangentbord och undersökte det, detta med ett USB-interface', 23),
('2010-11-24 22:33:36', 1, 'Skrev ett epost frågandes om vars företaget TypeMatrix köper deras komponenter ifrån samt en del annat', 26),
('2010-11-28 15:20:38', 1, 'Ã–ppnade upp en laptop för att undersöka dess tangentbord<br>', 27),
('2010-12-02 17:23:49', 1, 'Ã–ppnade upp ett tangentbord och fann en vanligt använd mikroprocessor, kontaktade en leverantör angående priset för 10st enheter skäppade till Europa<br>', 28),
('2010-12-02 21:23:35', 1, 'Läste dokumentationen för <a href="http://www.alldatasheet.com/datasheet-pdf/pdf/66115/INTEL/83C51KB.html" title="" target="">Intel 83C81KB</a>', 29),
('2010-12-02 21:26:15', 5, 'Började arbetet med att dokumentera vilka tangenter som leder till vilka kretsar i ett tangentbord med 83C81KB-processorn', 30),
('2010-12-04 17:01:32', 4, 'Fortsatte arbeta på att följa och rita ut kretsarna från ett tangentbord.', 31),
('2010-12-05 12:08:55', 2, 'Vidare kretsföljning', 32),
('2010-12-06 08:45:14', 2, 'Ã–vre kretsen färdigställd, halva undre kretsen klar', 33),
('2010-12-07 09:26:26', 3, 'Kretsarna är nu komplett utritade', 34),
('2010-12-16 09:30:35', 1, 'Efter epostkorrespondans med två återförsäljare i Hongkong fann jag att dom kostar&nbsp;&nbsp;$6.5USD styck och frakten är&nbsp;$20 med DHL från HK till Europa', 35),
('2010-12-16 22:23:36', 2, 'Började fylla i arket med vilka kretsar som leder till vilka tangenter', 36),
('2010-12-21 14:19:12', 3, 'Färdigställde schemat över kretsen', 37),
('2011-01-07 19:09:32', 2, 'Jagat runt internet efter saxsswitchar samt toppar, löst till försäljning', 38),
('2011-01-14 14:28:23', 1, 'Kontaktade fler företag om tangenter', 39),
('2011-01-17 17:32:59', 1, 'Letade rätt på ett fint CAD-program, QCad', 40),
('2011-01-18 17:47:41', 1, '<span class="Apple-style-span" style="border-collapse: collapse; font-family: arial, sans-serif; font-size: 13px; ">Ringde bland annat 08-54658739</span><br>', 41),
('2011-01-22 22:08:09', 1, 'Bekantade mig med QCad', 42),
('2011-01-25 18:44:28', 3, 'Arbetade med vänstra delen av kretsritningen', 43),
('2011-01-25 20:46:46', 1, 'Fortsatte arbeta på den vänstra delen', 44),
('2011-01-26 22:14:54', 2, 'Fortsatte arbeta med den vänstra delen', 45),
('2011-01-28 18:45:50', 4, 'Ritade den högra delen av kretsen', 46),
('2011-02-09 22:25:13', 2, 'Checkade ritningar och tabeller inför att sända iväg dom', 47),
('2011-02-11 11:09:30', 1, 'Gick igenom det sista och sände iväg ritningarna<br>', 48),
('2011-02-16 18:39:44', 1, 'Ã„ndrade ritningarna efter önskningar från tillverkaren<br>', 49),
('2011-03-19 17:11:48', 1, 'Talade och sända ett nytt epost till Membrane Switch<br>', 50),
('2011-04-30 15:37:34', 3, 'Skrev på projektrapporten<br>', 51),
('2011-05-01 19:35:48', 4, 'Skrev projektrapport<br>', 52),
('2011-05-01 19:36:36', 6, 'Skrev projektrapport<br>', 53),
('2011-05-07 05:54:50', 1, 'En åttonde version av tangentbordsdesignen skapades', 54),
('2011-05-07 08:52:42', 9, 'Skrev projektrapport<br>', 55),
('2011-05-08 00:52:27', 8, 'Skrev färdigt projektrapporten<br>', 56);

-- --------------------------------------------------------

--
-- Struktur för tabell `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `username` varchar(30) NOT NULL default '',
  `password` varchar(32) NOT NULL,
  PRIMARY KEY  (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Data i tabell `users`
--

INSERT INTO `users` (`username`, `password`) VALUES
('Rovanion', 'ee1b690d4fe777a2ad9ed5a876151e73');
