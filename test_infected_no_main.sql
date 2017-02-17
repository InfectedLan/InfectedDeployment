-- phpMyAdmin SQL Dump
-- version 4.2.12deb2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 20, 2015 at 11:54 PM
-- Server version: 5.6.25-0ubuntu0.15.04.1
-- PHP Version: 5.6.4-4ubuntu6.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `test_infected_no_main`
--

-- --------------------------------------------------------

--
-- Table structure for table `agenda`
--

CREATE TABLE IF NOT EXISTS `agenda` (
`id` int(11) NOT NULL,
  `eventId` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `startTime` datetime NOT NULL,
  `published` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
`id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `title` varchar(32) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `title`, `content`) VALUES
(1, 'information', 'Informasjon', '<article class="contentBox">\r\n	<h3>Når?</h3>\r\n	<p>Arrangementet gjennomføres første helg av høstferien og vinterferien. Dørene åpner 18:00, men det lønner seg å komme i god tid før dette om du ønsker å komme raskt i gang. Det tar tid å komme inn, og du må beregne litt ventetid.</p>\r\n</article>\r\n<article class="contentLeftBox">\r\n	<h3>For hvem?</h3>\r\n	<p>Vi ønsker all data- og gaming-interessert ungdom velkommen til Infected uavhengig hvor du kommer fra. Kommer du helt fra Nordland er du like velkommen som en fra Asker. Det er fortsatt ingen fastsatt aldersgrense på Infected, men alle under 14 år må ha med skriftlig bekreftelse fra foreldre. Skjema finnes her! Ettersom dette er et 48-timers arrangement, anbefaler vi at de under 14 år vurderer hvorvidt dette er noe for dem.</p>\r\n</article>\r\n<article class="contentRightBox">\r\n	<h3>Billettsalg</h3>\r\n	<p>Billettsalget starter ca. tre uker før arrangementstart, og dette gjøres gjennom vår billettløsning knyttet opp mot PayPal. Du bestiller plass gjennom siden tickets.infected.no ved å logge deg inn med brukernavn og passord. Så fort seat-mappet er klart kan du velge hvilke plass(er) du ønsker å sitte på.</p>\r\n</article>\r\n<article class="contentBox">\r\n	<h3>Billetten</h3>\r\n	<p>Alle på Infected må ha bruker på tickets.infected.no, med riktig informasjon om deg. Du må også ha en billett knyttet mot din bruker. Hvis en kamerat har kjøpt billett for deg må han overføre den til din bruker. Dette er noe vi har gjort veldig enkelt for dere på siden. Så det er ikke noe problem om du kjøper billett for andre. Ingen kommer inn på Infected uten bruker med billett.</p>\r\n</article>\r\n<article class="contentBox">\r\n	<h3>Viktig å huske</h3>\r\n	<p>Husk å ta med legitimasjon, uten det kommer du ikke inn. Du står selv ansvarlig for din oppførsel under LAN-et, og kan få advarsler om utestengelse fra arrangementet før en eventuell utvisning ved brudd på Infected sine regler og rettningslinjer. Vi oppfordrer alle deltakere til å ha jevnlig kontakt med hjemmet underveis, og ta med seg mobiltelefon e.l. Det vil alltid være personer over 18 år tilstede i Infected sitt crew som hjelper deg ved behov.</p>\r\n</article>\r\n<article class="contentBox">\r\n	<h3>Plassen</h3>\r\n	<p>Hver plass er minimum 70x70cm. Det er lov til å ta med hylle, men den kan ikke gå utenom plassen. Du kan også ta med egen stol, men da bare en vanlig kontorstol ikke noe stor stressless, tenk på sidemannen ;)</p>\r\n</article>\r\n<article class="contentBox">\r\n	<h3>Foreldre</h3>\r\n	<p>Vi råder alle foreldre til å lese mer om Infected på denne linken. Det vil være opptil flere myndige i Infected sitt crew til stede under hele arrangementet, samt minimum én ansatt i Asker kommune. Har du behov for å komme i kontakt med kontaktpersoner for LAN-et bruk kontaktinformasjonen her. Vi minner om at alle deltakere under 14 år må ha med skriftlig bekreftelse fra foreldre for å komme inn.</p>\r\n</article>'),
(2, 'rules-and-security', 'Regler og sikkerhet', '<article class="contentLeftBox">\r\n	<p>For å gjøre LAN-et best mulig for alle har vi laget ett sett regler som må følges. Dette omtaler alt fra hva du har lov til å medbringe inn på LAN-et, til hva du skal passe på under selve arrangementet. Ved brudd på reglementet har vi rett til å utestenge vedkommende umiddelbart.</p><br>\r\n	<p><strong>Billettprisen inkl. Medlemsskap i Radar Event avd. Infected LAN. Ved medlemskap får man blant annet rabatt på de fleste andre arrangementer på Radar.</strong></p><br>\r\n</article>\r\n<article class="contentRightBox">\r\n	<p>Radar er et rusfritt område, dette inkluderer snus og røyk. Det er ikke lov å røyke eller snuse under Infected, derfor foregår all røyking og snusing utenfor Infecteds område på eget ansvar.<p>\r\n</article>\r\n<article class="contentBox">\r\n	<ul>\r\n		<li>Vi forbeholder oss retten til å ta bilder under arrangementet. Hvis du ikke ønsker å bli tatt bilde av, ta kontakt med Info-desken.\r\n		</li>\r\n	</ul>\r\n</article>\r\n<article class="contentBox">\r\n	<ul>\r\n		<li>Infected forbeholder seg retten til å loggføre og overvåke all nettverkstrafikk som benytter seg av vårt nettverk, vår leverandører, og / eller våre partneres nettverksløsninger, infrastruktur eller internettlinjer. Loggene holdes lagret av Infected sitt tech crew inntil Infected som organisasjon avgjør at loggene ikke lenger har noen form for lagringsverdi for oss. Vi forbeholder oss også retten til å analysere nettverkstrafikk dersom vi finner dette nødvendig.</li>\r\n	</ul>\r\n</article>\r\n<article class="contentBox">\r\n	<ul>\r\n		<li>Ikke rør dører/avstengte områder i bygget. Dette kan medføre i at alarmer går og vedkommende vil bli holdt økonomisk ansvarlig.</li><br>\r\n		<li>Tyveri, hærverk og andre brudd på regler, blir slått hardt ned på. Politianmeldelse og erstatningskrav kan bli brukt i slike tilfeller.</li>\r\n		<li>Følg Norske lover og regler.</li>\r\n	</ul>\r\n</article>\r\n<article class="contentBox">\r\n	<ul>\r\n		<li>Infected LAN tar avstand fra kopiering av ulovlig programvare, ulovlig pornografisk materiale og annet som bryter norsk lov. Aktiviteter som dette kan medføre utvisning fra arrangementet.</li><br>\r\n		<li>Ved inngangen skal du vise bånd <em>uoppfordret,</em> hver gang du kommer inn (inkludert crew).</li>\r\n	</ul>\r\n</article>\r\n<article class="contentBox">\r\n	<ul>\r\n		<li>Ikke legg fra deg penger, lommebok, mobiltelefon og andre verdifulle ting åpenlyst på plassen din.</li><br>\r\n		<li>Det er ikke tillatt med elektroniske artikler som hvitevarer og andre strømkonsumerende eller brannfarlige artikler (kjøleskap og andre ting du finner nødvendig å ta med) på bordradene eller andre steder i lokalet.</li>\r\n	</ul>\r\n</article>\r\n<article class="contentBox">\r\n	<ul>\r\n		<li>Alle deltagere er ansvarlige for sitt eget utstyr under arrangementet. Arrangør kan ikke stilles til ansvar om det oppstår skader på – eller tyveri av ditt datautstyr eller andre personlige eiendeler.</li><br>\r\n		<li>Det er ikke lov til å ta med seg høytalere.</li><br>\r\n		<li>Sov kun på anviste steder.</li>\r\n	</ul>\r\n</article>\r\n<article class="contentBox">\r\n	<ul>\r\n		<li>Det er ikke tillatt med elektroniske artikler som hvitevarer og andre strømkonsumerende eller brannfarlige artikler (kjøleskap og andre ting du finner nødvendig å ta med) på bordradene eller andre steder i lokalet.</li><br>\r\n		<li>Ved inngangen skal du vise bånd <em>uoppfordret,</em> hver gang du kommer inn (inkludert crew).</li>\r\n	</ul>\r\n</article>\r\n<article class="contentBox">\r\n	<ul>\r\n		<li>Vis hensyn til de andre deltagerne og vis normal folkeskikk.</li><br>\r\n		<li>Rydd opp søppla etter deg.</li><br>\r\n		<li>Det er ikke mulig å få refundert billetten.</li><br>\r\n		<li>Personer som blir bortvist, får ikke refundert inngangspengene.</li>\r\n	</ul>\r\n</article>\r\n<article class="contentBox">\r\n	<ul>\r\n		<li>Virus – Personer som lager eller prøver og viderføre virus med vilje, vil bli bortvist fra arrangementet. Hvis noen har virus, og ikke vet det før vi eller andre deltagere finner det ut, vil personen sperres fra nettverket inntil viruset er fjernet.</li><br>\r\n	</ul>\r\n</article>\r\n<article class="contentBox">\r\n	<ul>\r\n		<li>Hvis du har tenkt å ta med PCen din hjem før LANet er ferdig, si i fra til Security.</li><br>\r\n		<li>Den som påfører eventuelle ødeleggelser på bygg/anlegg osv, vil måtte erstatte eventuelle skader.</li>\r\n	</ul>\r\n</article>\r\n<article class="contentBox">\r\n	<ul>\r\n		<li>Brudd på regler kan føre til advarsler, utkastelse, politianmeldelse, alt etter alvorlighetsgrad.</li><br>\r\n		<li>Du er selv ansvarlig for å lese reglene før du kommer på Infected.</li><br>\r\n		<li>Vi forbeholder oss retten til å endre/fjerne/legge til regler.</li>\r\n	</ul>\r\n</article>	\r\n<article class="contentBox">\r\n	<ul>\r\n		<li>Ved oppsett av pirat-servere vil eieren av maskinen den står på holdes ansvarlig dersom noe skulle skje.</li>\r\n	</ul>\r\n</article>\r\n<article class="contentBox">\r\n	<p>Hvis du ikke ønsker å bli medlem ta kontakt med <a href="mailto:fredrik@warbo.org">fredrik@warbo.org</a></p>\r\n</article>'),
(3, 'parents-and-guardians', 'For foreldre og foresatte', '<article class="contentBox">\r\n	<p><strong>Infected er et data-party som foregår kontinuerlig over to døgn. Er du en forelder eller foresatt kan denne artikkelen være nyttig for deg</strong></p><br>\r\n	<p>Infected LAN er et ungdomsarrangement i regi av Asker kommune og Radar ungdomsskafé. Arrangementet passer for alle data og eller spillinteresserte ungdom som ønsker å samle seg for en sosial og hyggelig sammenkomst. Vi ønsker å fokusere på at dette er et av de flotte og miljøbyggende aktivitetene som arrangeres i kommunen.</p>\r\n</article>\r\n<a href="files/Foreldreskjema.doc"><img class="contentLeftImageBox" src="images/pages/foreldreskjema.png"></a>\r\n<article class="contentRightBox">\r\n	<h3>Hvordan foregår det?</h3>\r\n	<p>Arrangementet varer over tre dager – normalt fra fredag kveld til søndag morgen, første helgen i høstferien og vinterferien. Infected er for ungdom – og utføres av ungdom. Det vil si at det er primært ungdommen selv som står for arrangementet, med planlegging, gjennomføring og opprydding. På denne måten blir arrangementet en arena der unge mennesker kan bygge opp relasjoner og drive positivt arbeid.</p>\r\n</article>\r\n<article class="contentBox">\r\n	<h3>Aldersgrense, spesielle behov</h3>\r\n	<p>Er barnet ditt under 14 år, må du ha med en fullmakt. Den finner du <a href="files/Foreldreskjema.doc">her</a>! Har barnet ditt spesielle behov vi bør vite om? Ta kontakt med <a href="mailto:kontakt@infected.no">kontakt@infected.no</a>, så hjelper vi til.</p>\r\n</article>\r\n<article class="contentBox">\r\n	<h3>Oppmøte</h3>\r\n	<p>Når LAN (local area network)-et starter klokken 18 sjekker alle deltakerne inn, får på adgangsbånd og finner plassen sin. Her plasserer de pc-en og sitter store deler av tiden. Ellers er Radar Ungdomskafe åpen, og områdene i kafeen åpen for sosiale aktiviteter. Det er egne sovesaler, og deltakerne blir oppfordret til å sove flere ganger underveis. Ellers foregår det spillkonkurranser lokalt, og andre «events» og konkurranser på scenen.</p>\r\n</article>\r\n<article class="contentLeftBox">\r\n	<h3>Sikkerhet</h3>\r\n	<p>Bør vi bekymre oss? Nei. Det er over 100 medlemmer av Infected-crewene (Security, info, core, kafeteria, tech, events, game og backstage) som hele tiden overvåker områdene. Sikkerhet er noe Infected setter veldig høyt. Både i forkant og underveis. Security sørger for sikkerhet også med tanke på kriseberedskap og førstehjelp. Skulle du bli bekymret, ta kontakt med info-crewet underveis.</p>\r\n	<p>Brannvesen og politi er rutinemessig inne og patruljerer på arrangementet.</p>\r\n</article>\r\n<article class="contentRightBox">\r\n	<h3>Kontakt underveis</h3>\r\n	<p>Kan vi få kontakt med barnet underveis?: Vi oppfordrer alle til å ha med seg mobil på arrangementet. Skulle det komme situasjoner hvor du må må ha tak i vedkommende og ikke får kontakt, kan du kontakte info-crew. Vi vil opprette en vakttelefon nærmere LAN-start.</p>\r\n</article>'),
(4, 'packing-list', 'Pakkeliste', '<article class="contentLeftBox">\r\n<p>Aldri vært på LAN før?<br>\r\nEller er du bare litt usikker på hva som er lurest og ha med seg når en skal på LAN?</p><br>\r\n\r\n<p>Ingen fare!<br>\r\nFor vi i Infected Crewet har laget en hendig pakkeliste over ting man bør eller ikke bør ha med på LAN.</p>\r\n</article>\r\n<img class="contentRightImageBox" src="images/pages/packing-list.png" alt="Pakkeliste">\r\n<article class="contentBox">\r\n	<h3>Du bør ha med:</h3>\r\n	<ul>\r\n		<li>Datamaskin med alt tilbehør.</li>\r\n		<li>Nettverkskabel med en minumumslengde på fem meter.</li>\r\n		<li>Strømpad, beregnet ett støpsel per person.</li>\r\n		<li>Tannbørste og andre hygieneartikler.</li>\r\n		<li>Penger.</li>\r\n		<li>Vann eller brus.</li>\r\n		<li>Eventuelle medisiner hvis man trenger det (Ta kontakt med crew hvis det er noe vi bør vite).</li>\r\n		<li>Din billett.</li>\r\n		<li>Sovepose.</li>\r\n		<li>Legitimasjon.</li>\r\n	</ul>\r\n</article>\r\n<article class="contentBox">\r\n	<h3>Du kan ikke ha med:</h3>\r\n	<ul>\r\n		<li>Alkohol og eller andre rusmidler.</li>\r\n		<li>Høytalere.</li>\r\n		<li>Kjøleskap og hvitevarer</li>\r\n	</ul>\r\n</article>'),
(5, 'about', 'Om Infected', '<img class="contentLeftImageBox" src="images/pages/om_oss.jpg">\r\n<article class="contentRightBox">\r\n<h3>Hva er et LAN Party?</h3>\r\n	<p>Kort fortalt er et LAN Party er en midlertidig samling av mennesker med PCer og/eller spillkonsoller.\r\n	Disse kobles opp på et lokalt nettverk (LAN = Local Area Network), og gis som regel også tilgang til internett.\r\n	I tillegg til å spille på PC/spillkonsoller, inneholder som regel LAN Parties også konkurranser og events.\r\n	LAN Parties omtales ofte også som datatreff, dataparty eller bare LAN. Størrelsen kan variere fra 2 personer til større forsamlinger.</p>\r\n</article>\r\n<article class="contentBox">\r\n	<p>Arrangementet blir holdt første helg i vinter- og høst- ferien hvert år.\r\n	Med over 300 deltagere og 100 i crewet er vi Askers største LAN Party.\r\n	Hovedsakelig er de fleste deltagerne fra Asker og omegn, men noen kommer også mer langveisfra.</p>\r\n</article>\r\n<article class="contentBox">\r\n	<p>Infected LAN Party er et non-profit, rusfritt ungdomsarrangement.\r\n	Forgjengeren til Infected ble startet av en vennegjeng fra Asker, med hjelp fra Asker Kommune (Radar ungdomskafe).\r\n	Det første LAN partyet under navnet Infected ble arrangert i 2006. I starten var det rundt 50 deltagere og 5 til 10 i crew.\r\n	Siden den gang har vi vokst og utviklet oss innen områdene til et LAN Party.</p>\r\n</article>\r\n<article class="contentBox">\r\n	<p>Vi har samarbeidet tett med Radar Ungdomskafe hele veien og starter nå også et samarbeid med videregående linjen IKT Servicefag i Asker.\r\n	Vi er organisert som en avdeling under organisasjonen Radar Event. LANet har eget styre med jevnlige møter gjennom året, og med økt hyppighet frem mot arrangementene.\r\n	Styret består pr mai 2013 av åtte ungdommer i alderen 20-28år.</p>\r\n</article>\r\n<article class="contentBox">\r\n	<h3>Formål</h3>\r\n	<ul>\r\n		<li>Å skape et rusfritt tilbud til data og spill interessert ungdom i Asker og omegn.</li>\r\n		<li>Å skape et arrangement hvor ungdom med like interesser kan møtes for spill, konkurranser, sosialisering og læring.</li>\r\n		<li>Å være et non-profit arrangement basert på frivillig arbeid.</li>\r\n	</ul>\r\n</article>'),
(6, 'contact', 'Kontakt', '<article class="contentBox">\r\n	<p>For generelle spørsmål: <a href="mailto:kontakt@infected.no">kontakt@infected.no</a>. Alle presserelaterte spørsmål skal gjennom informasjonsansvarlig.</p>\r\n</article>\r\n<article class="contentLeftBox">\r\n	<h3>Informasjonsansvarlig</h3><br>\r\n	<p>Fredrik Warbo</p>\r\n	<p>Telefon: 99 76 77 45</p>\r\n	<p>E-post: <a href="mailto:fredrik@warbo.org">fredrik@warbo.org</a></p>\r\n	<p>Oppgaver: Info, presse, utvikling, web</p>\r\n</article>\r\n<article class="contentRightBox">\r\n	<h3>Sikkerhetsansvarlig</h3><br>\r\n	<p>Hans Hesle</p>\r\n	<p>Telefon: 99 40 41 37</p>\r\n	<p>E-post: <a href="mailto:hansg.hesle@gmail.com">hansg.hesle@gmail.com</a></p>\r\n	<p>Oppgaver: Sikkerhetsleder, brannleder</p>\r\n</article>'),
(7, 'competitions-general', 'Konkurranser', '<article class="contentBox">\r\n	<h3>Generelt for alle spill:</h3><br>\r\n	<p>Etter matchen må begge lagene melde resultatet til game crew.<br>\r\n	<p>Når du skal kontakte en game admin eller en som representerer det andre laget som spiller så introduser deg med nick så man vet hvem du er. Du må også si klart hvilket lag du spiller for.\r\n<br>\r\n<h4>Double-Elimination</h4>\r\n<p>Begge compoene blir det spilt double-elimination. Det er et spill oppsett som går på vanlig cup system, men du har mulighet til og tape en kamp. Alle starter i Higher bracket, men hvis du taper en match i higher går man ned i det som heter lower bracket. Taper du etter du har kommet ned i lower er du ute av compoen. For å komme til finalen må du enten vinne Higher bracket eller lower bracket.\r\n<br>\r\n	\r\n	\r\n	<h4>Klager/annet</h4>\r\n	<p>Hvis det er noe uklart ved disse reglene så er det ditt ansvar og spørre en i game crew for å finne ut av det du lurer på. Game crew vil være tilgjengelig til enhver tid.</p>\r\n	\r\n	<h4>Spillere</h4>\r\n	Bare spillere som er registrert på laget får lov til å spille. En spiller kan bare være på et lag, som betyr at du ikke kan spille på to forskjellige lag i en og samme compo. Mangler dere en person ved oppmøte så kan dere spørre game crew om dere får lov til å bruke en step til spilleren kommer tilbake. Eller spille med en mindre.</p>\r\n	\r\n	<h4>Oppmøte</h4>\r\n	<p>Hvis det mangler spillere vil de ha 10 minutter på seg til og bli klare. Hvis et av lagene ikke har alle klar innen tiden så kan de spille med færre spillere.<br />\r\n	Crew kan delta som andre deltagere.</p>\r\n<br>\r\n<p>Infected forbeholder seg retten til å endre/heve/legge til regler på et hvilket som helst tidspunkt.<br>\r\n	<p>Vi forbeholder oss også retten til å vike fra å dømme etter reglene i veldig ekstreme situasjoner.</p>\r\n</article>'),
(8, 'counter-strike:-global-offensive', 'Counter-Strike: Global Offensive', '<article class="contentLeftBox">\r\n	<h3>Regler:</h3><br>\r\n	<p>Generelt & Game settings:<p>\r\n	<p>Konkurranse Mode: 5on5<br>\r\n	Maps: Dust2, Cache, Nuke, Mirage, Season, Inferno, Overpass<br>\r\n	Gamemode: Competitive - Defuse<br>\r\n	Vinner: mr15<br>\r\nTickrate: 128 <br>\r\n	Mode: Double Elimination</p>\r\n</article>\r\n<img class="contentRightImageBox" src="images/pages/csgo.png" alt="Counter-Strike: Global Offensive">\r\n<article class="contentBox">\r\n	<p>Map velges av en banning prosess hvor hvert lag har 3 bans av baner.<br>\r\n	Etter valg av bane er det kniv runde for å bestemme side (T / CT).</p>\r\n</article>\r\n<article class="contentBox">\r\n	<p><strong>Generelt:</strong><br>\r\nHver spiller skal ta Demo av matchen ved hjelp av Console kommandoen: record (Navn på record).<br>\r\nTurneringen er i Double Elimination bracket-system. Dette betyr at alle lag kan tape én kamp uten å ryke ut av turneringen.<br>\r\nInfected stiller med server til compoen.<br>\r\nSpesial-filer er ikke tillatt. Spesial-filer er alle filer som forandrer eller erstatter de originale in-game-grafiske elementene, *gfc-filer eller lyder. Dette betyr også forandring av HUD, scoreboard og lyder.<br>\r\nHvis en bug eller ander ting blir misbrukt i spillet, blir dette sett på som regelbrudd og fører til tap av tre runder eller diskvalifisering. Game chief avgjør dette ut fra hvor grov hendelsen er.<br>\r\nBruk av tredjeparts programmer som tukler med spillets funksjoner er forbudt, og kan føre til utestengelse.<br>\r\nEn kamp avsluttes når et lag har vunnet 16 runder.\r\n\r\n</p>\r\n</article>\r\n<article class="contentBox">\r\n	<p><strong>Rates:</strong><br>\r\nAlle må ha riktige verdier i cfg fil, dette kan også gjøres gjennom konsoll.<br>\r\nDette kan du gjøre ved å skrive kommandoene rett inn i konsollen på cs:go.<br>\r\nSlik gjør du det mulig å åpne konsollen<br>\r\n<img src="https://infected.no/v7/images/pages/HvordanFaKonsoll.jpg" style="width:832px"><br>\r\n</article>\r\n<img class="contentLeftImageBox" src="https://infected.no/v7/images/pages/Keyboard.png" alt="Keyboard">\r\n<article class="contentRightBox">\r\n<h3>Rates:</h3><br>\r\n<p>kommandoene du skal skrive inn er:<br>\r\n<br>\r\nrate 128000<br>\r\ncl_cmdrate 128<br>\r\ncl_updaterate 128<br>\r\ncl_interp_ratio 1	\r\n</p>\r\n</article>\r\n<article class="contentBox">\r\n	<p><strong>Disconnect/tekniske problemer:</strong><br>\r\n	Hvis en spiller frakoples servere på grunn av tekniske vanskeligheter eller har andre tekniske problemer, kan dere pause spillet. Dette gjør dere ved å skrive /pause i chaten. For å starte spillet igjen må begge lag skrive /unpause i chaten.<br>\r\n	Problemer med kampen skal rapporteres til administrator via Game-desk, eller chaten på composiden</p>\r\n</article>\r\n<article class="contentBox">\r\n	<p>Game-crew forbeholder seg retten til å endre, legge til eller fjerne regler underveis.</p>\r\n</article>'),
(9, 'league-of-legends', 'League of Legends', '<article class="contentLeftBox">\r\n	<h3>Regler:</h3><br>\r\n	\r\n	<p>Generelt & game settings:</p><br>\r\n	\r\n	<p>Konkurranse Mode: 5 vs 5<br>\r\n	Map: Summoner’s Rift (summer)<br>\r\n	Mode: Draft Mode<br>\r\n	Vinner: Teamet som helt ødelegger motstanderens nexus<br>\r\n	eller tvinger motstanderen til å surrendere.</p>\r\n</article>\r\n<img class="contentRightImageBox" src="images/pages/lol.png" alt="Leauge of Leagends">\r\n<article class="contentBox">\r\n	<p>Disconnects:<br>\r\n	Hvis en spiller blir disconnectet fra spillet pga nettverksproblemer eller andre uforutsette hendelser,<br>\r\n	skal gamet remakes hvis mindre enn 5 minutter av spillet har gått (ingame timer) eller noen har<br>\r\n	fått firstblood. Har 5 min av spillet gått eller noe har fått firstblood fortsetter gamet som normalt.<br>\r\n	Hvis en spiller disconnecter med vilje uten grunn eller med ugyldig grunnlag, fortsetter gamet som normalt.<br>\r\n	Dersom det ikke opplyses med engang at en spiller disconnectet, fortsetter spillet som normalt.</p><br>\r\n	\r\n	<p>Diverse:<br>\r\n	Følgende oppførsel vil ikke bli tolerert, og vil få konsekvenser avhengig av hvor seriøst tilfellet er.<br>\r\n	1) Bruk av eventuelle cheat programmer og / eller map hacks.<br>\r\n	2) Disconnecting med vilje uten skikkelig grunn<br>\r\n	3) Griefing / flaming / generelt upassende oppførsel<br>\r\n	4) Bruk av bugs eller lignende. Det blir opp til admins å avgjøre hva som er bugs, hvor grove bugsa er,<br>\r\n	og konsekvensene for eventuell abuse av dem.<br>\r\n	5) Bruk av en spiller som ikke opprinnelig er en del av laget («ringer»)</p><br>\r\n6)<p>Felles chat: infectedlan</p>\r\n</article>\r\n<article class="contentBox">\r\n	<p>Ved uklarheter, ta kontakt med compoansvarlig/game crew.<br>\r\n	Husk att generelle regler gjelder i tillegg til disse compospesifikke reglene.</p>\r\n</article>');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agenda`
--
ALTER TABLE `agenda`
 ADD PRIMARY KEY (`id`), ADD KEY `index` (`eventId`,`published`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agenda`
--
ALTER TABLE `agenda`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
