-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Vert: localhost
-- Generert den: 10. Sep, 2014 12:30 PM
-- Tjenerversjon: 5.5.38-0ubuntu0.14.04.1
-- PHP-Versjon: 5.5.9-1ubuntu4.3

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
-- Tabellstruktur for tabell `agenda`
--

CREATE TABLE IF NOT EXISTS `agenda` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `event` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `start` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;

--
-- Dataark for tabell `agenda`
--

INSERT INTO `agenda` (`id`, `event`, `name`, `title`, `description`, `start`) VALUES
(1, 2, 'opprigg', 'Opprigg', 'Woo rigge rigge rigge', '2014-02-13 08:00:00'),
(2, 2, 'league-of-legends      ', 'League of Legends      ', 'Runde 1', '2014-02-14 21:30:00'),
(3, 2, 'league-of-legends', 'League of Legends', 'Infom�te ved game', '2014-02-14 21:00:00'),
(4, 2, 'league-of-legends', 'League of Legends', 'Higher bracket r2 og Lower bracket r1', '2014-02-14 23:00:00'),
(5, 2, 'league-of-legends', 'League of Legends', 'Lower bracket r2', '2014-02-15 00:30:00'),
(6, 2, 'league-of-legends', 'League of Legends', 'Higher bracket r3 og Lower bracket r3', '2014-02-15 12:00:00'),
(7, 2, 'league-of-legends', 'League of Legends', 'Higher bracket r4 og Lower bracket r4', '2014-02-15 13:00:00'),
(8, 2, 'league-of-legends', 'League of Legends', 'Lower bracket r5', '2014-02-15 14:30:00'),
(9, 2, 'league-of-legends', 'League of Legends', 'Lower bracket r6', '2014-02-15 15:30:00'),
(10, 2, 'csgo', 'CS:GO', 'Runde 1', '2014-02-15 12:00:00'),
(11, 2, 'csgo', 'CS:GO', 'Infom�te ved game', '2014-02-15 11:30:00'),
(12, 2, 'csgo', 'CS:GO', 'Higher bracket r2 og Lower bracket r1', '2014-02-15 13:00:00'),
(13, 2, 'wow-dansekonkuranse', 'WoW Dansekonkuranse', 'Scenen i Multisalen - utsatt', '2014-02-15 14:00:00'),
(14, 2, 'csgo', 'CS:GO', 'Higher bracket r3 og Lower bracket r2', '2014-02-15 14:30:00'),
(15, 2, 'csgo', 'CS:GO', 'Lower bracket r3', '2014-02-15 15:30:00'),
(16, 2, 'csgo', 'CS:GO', 'Higher bracket r4 og Lower bracket r4', '2014-02-15 16:30:00'),
(17, 2, 'csgo', 'CS:GO', 'Lower bracket r5', '2014-02-15 18:00:00'),
(18, 2, 'spis-og-spy', 'Spis og Spy', 'Scenen i Multisalen', '2014-02-15 17:30:00'),
(19, 2, 'csgo', 'CS:GO', 'Lower bracket r6', '2014-02-15 19:00:00'),
(20, 2, 'csgo', 'CS:GO', 'Finale p� scenen', '2014-02-15 21:00:00'),
(21, 2, 'league-of-legends', 'League of Legends', 'Finale p� scenen', '2014-02-15 23:00:00'),
(39, 2, 'osu-compo', 'Osu! Compo', 'Osu-compo live p� scenen.', '2014-02-16 01:00:00'),
(40, 2, 'lanet-er-over', 'Lanet er over!', 'Nett og str�m blir tatt ned kl. 12:00', '2014-02-16 13:00:00');

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `gameapplications`
--

CREATE TABLE IF NOT EXISTS `gameapplications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `eventId` int(11) NOT NULL,
  `gameId` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `tag` varchar(16) NOT NULL,
  `contactname` varchar(32) NOT NULL,
  `contactnick` varchar(32) NOT NULL,
  `phone` int(8) NOT NULL,
  `email` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `games`
--

CREATE TABLE IF NOT EXISTS `games` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `title` varchar(32) NOT NULL,
  `price` int(11) NOT NULL,
  `mode` varchar(16) NOT NULL,
  `description` text NOT NULL,
  `startTime` datetime NOT NULL,
  `endTime` datetime NOT NULL,
  `published` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;

--
-- Dataark for tabell `games`
--

INSERT INTO `games` (`id`, `name`, `title`, `price`, `mode`, `description`, `startTime`, `endTime`, `published`) VALUES
(1, 'counter-strike:-global-offensive', 'Counter-Strike: Global Offensive', 5000, '5on5', '2.plass 2500,-', '2014-09-26 18:00:00', '2014-09-27 18:00:00', 1),
(2, 'league-of-legends', 'League of Legends', 5000, '5on5', '2.plass 2500,-', '2014-09-26 18:00:00', '2014-09-27 18:00:00', 1);

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `title` varchar(32) NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;

--
-- Dataark for tabell `pages`
--

INSERT INTO `pages` (`id`, `name`, `title`, `content`) VALUES
(1, 'informasjon', 'Informasjon', '<article class="contentBox">\r\n	<h3>N�r?</h3>\r\n	<p>Arrangementet gjennomf�res f�rste helg av h�stferien og vinterferien. Det l�nner seg � komme i god tid f�r dette om du �nsker � komme raskt i gang. Det tar tid � komme inn, og du m� beregne litt ventetid.</p>\r\n</article>\r\n<article class="contentLeftBox">\r\n	<h3>For hvem?</h3>\r\n	<p>Vi �nsker all data- og gaming-interessert ungdom velkommen til Infected uavhengig hvor du kommer fra. Kommer du helt fra Nordland er du like velkommen som en fra Asker. Det er fortsatt ingen fastsatt aldersgrense p� Infected, men alle under 14 �r m� ha med skriftlig bekreftelse fra foreldre. Skjema finnes her! Ettersom dette er et 48-timers arrangement, anbefaler vi at de under 14 �r vurderer hvorvidt dette er noe for dem.</p>\r\n</article>\r\n<article class="contentRightBox">\r\n	<h3>Billettsalg</h3>\r\n	<p>Billettsalget starter ca. tre uker f�r arrangementstart, og dette gj�res gjennom v�r billettl�sning knyttet opp mot PayPal. Du bestiller plass gjennom siden tickets.infected.no ved � logge deg inn med brukernavn og passord. S� fort seat-mappet er klart kan du velge hvilke plass(er) du �nsker � sitte p�.</p>\r\n</article>\r\n<article class="contentBox">\r\n	<h3>Viktig � huske</h3>\r\n	<p>Husk � ta med legitimasjon, uten det kommer du ikke inn. Du st�r selv ansvarlig for din oppf�rsel under LAN-et, og kan f� advarsler om utestengelse fra arrangementet f�r en eventuell utvisning ved brudd p� Infected sine regler og rettningslinjer. Vi oppfordrer alle deltakere til � ha jevnlig kontakt med hjemmet underveis, og ta med seg mobiltelefon e.l. Det vil alltid v�re personer over 18 �r tilstede i Infected sitt crew som hjelper deg ved behov.</p>\r\n</article>\r\n<article class="contentBox">\r\n	<h3>Foreldre</h3>\r\n	<p>Vi r�der alle foreldre til � lese mer om Infected p� denne linken. Det vil v�re opptil flere myndige i Infected sitt crew til stede under hele arrangementet, samt minimum �n ansatt i Asker kommune. Har du behov for � komme i kontakt med kontaktpersoner for LAN-et bruk kontaktinformasjonen her. Vi minner om at alle deltakere under 14 �r m� ha med skriftlig bekreftelse fra foreldre for � komme inn.</p>\r\n</article>'),
(2, 'rules-and-security', 'Regler og sikkerhet', '<article class="contentLeftBox">\r\n	<p>For � gj�re LAN-et best mulig for alle har vi laget ett sett regler som m� f�lges. Dette omtaler alt fra hva du har lov til � medbringe inn p� LAN-et, til hva du skal passe p� under selve arrangementet. Ved brudd p� reglementet har vi rett til � utestenge vedkommende umiddelbart.</p><br>\r\n	<p><strong>Billettprisen inkl. Medlemsskap i Radar Event avd. Infected LAN. Ved medlemskap f�r man blant annet rabatt p� de fleste andre arrangementer p� Radar.</strong></p><br>\r\n</article>\r\n<article class="contentRightBox">\r\n	<p>Radar er et rusfritt omr�de, dette inkluderer snus og r�yk. Det er ikke lov � r�yke eller snuse under Infected, derfor foreg�r all r�yking og snusing utenfor Infecteds omr�de p� eget ansvar.<p>\r\n</article>\r\n<article class="contentBox">\r\n	<ul>\r\n		<li>Vi forbeholder oss retten til � ta bilder under arrangementet. Hvis du ikke �nsker � bli tatt bilde av, ta kontakt med Info-desken.\r\n		</li>\r\n	</ul>\r\n</article>\r\n<article class="contentBox">\r\n	<ul>\r\n		<li>Infected forbeholder seg retten til � loggf�re og overv�ke all nettverkstrafikk som benytter seg av v�rt nettverk, v�r leverand�rer, og / eller v�re partneres nettverksl�sninger, infrastruktur eller internettlinjer. Loggene holdes lagret av Infected sitt tech crew inntil Infected som organisasjon avgj�r at loggene ikke lenger har noen form for lagringsverdi for oss. Vi forbeholder oss ogs� retten til � analysere nettverkstrafikk dersom vi finner dette n�dvendig.</li>\r\n	</ul>\r\n</article>\r\n<article class="contentBox">\r\n	<ul>\r\n		<li>Ikke r�r d�rer/avstengte omr�der i bygget. Dette kan medf�re i at alarmer g�r og vedkommende vil bli holdt �konomisk ansvarlig.</li><br>\r\n		<li>Tyveri, h�rverk og andre brudd p� regler, blir sl�tt hardt ned p�. Politianmeldelse og erstatningskrav kan bli brukt i slike tilfeller.</li>\r\n		<li>F�lg Norske lover og regler.</li>\r\n	</ul>\r\n</article>\r\n<article class="contentBox">\r\n	<ul>\r\n		<li>Infected LAN tar avstand fra kopiering av ulovlig programvare, ulovlig pornografisk materiale og annet som bryter norsk lov. Aktiviteter som dette kan medf�re utvisning fra arrangementet.</li><br>\r\n		<li>Ved inngangen skal du vise b�nd <em>uoppfordret,</em> hver gang du kommer inn (inkludert crew).</li>\r\n	</ul>\r\n</article>\r\n<article class="contentBox">\r\n	<ul>\r\n		<li>Ikke legg fra deg penger, lommebok, mobiltelefon og andre verdifulle ting �penlyst p� plassen din.</li><br>\r\n		<li>Det er ikke tillatt med elektroniske artikler som hvitevarer og andre str�mkonsumerende eller brannfarlige artikler (kj�leskap og andre ting du finner n�dvendig � ta med) p� bordradene eller andre steder i lokalet.</li>\r\n	</ul>\r\n</article>\r\n<article class="contentBox">\r\n	<ul>\r\n		<li>Alle deltagere er ansvarlige for sitt eget utstyr under arrangementet. Arrang�r kan ikke stilles til ansvar om det oppst�r skader p� - eller tyveri av ditt datautstyr eller andre personlige eiendeler.</li><br>\r\n		<li>Det er ikke lov til � ta med seg h�ytalere.</li><br>\r\n		<li>Sov kun p� anviste steder.</li>\r\n	</ul>\r\n</article>\r\n<article class="contentBox">\r\n	<ul>\r\n		<li>Det er ikke tillatt med elektroniske artikler som hvitevarer og andre str�mkonsumerende eller brannfarlige artikler (kj�leskap og andre ting du finner n�dvendig � ta med) p� bordradene eller andre steder i lokalet.</li><br>\r\n		<li>Ved inngangen skal du vise b�nd <em>uoppfordret,</em> hver gang du kommer inn (inkludert crew).</li>\r\n	</ul>\r\n</article>\r\n<article class="contentBox">\r\n	<ul>\r\n		<li>Vis hensyn til de andre deltagerne og vis normal folkeskikk.</li><br>\r\n		<li>Rydd opp s�ppla etter deg.</li><br>\r\n		<li>Det er ikke mulig � f� refundert billetten.</li><br>\r\n		<li>Personer som blir bortvist, f�r ikke refundert inngangspengene.</li>\r\n	</ul>\r\n</article>\r\n<article class="contentBox">\r\n	<ul>\r\n		<li>Virus - Personer som lager eller pr�ver og viderf�re virus med vilje, vil bli bortvist fra arrangementet. Hvis noen har virus, og ikke vet det f�r vi eller andre deltagere finner det ut, vil personen sperres fra nettverket inntil viruset er fjernet.</li><br>\r\n	</ul>\r\n</article>\r\n<article class="contentBox">\r\n	<ul>\r\n		<li>Hvis du har tenkt � ta med PCen din hjem f�r LANet er ferdig, si i fra til Security.</li><br>\r\n		<li>Den som p�f�rer eventuelle �deleggelser p� bygg/anlegg osv, vil m�tte erstatte eventuelle skader.</li>\r\n	</ul>\r\n</article>\r\n<article class="contentBox">\r\n	<ul>\r\n		<li>Brudd p� regler kan f�re til advarsler, utkastelse, politianmeldelse, alt etter alvorlighetsgrad.</li><br>\r\n		<li>Du er selv ansvarlig for � lese reglene f�r du kommer p� Infected.</li><br>\r\n		<li>Vi forbeholder oss retten til � endre/fjerne/legge til regler.</li>\r\n	</ul>\r\n</article>	\r\n<article class="contentBox">\r\n	<ul>\r\n		<li>Ved oppsett av pirat-servere vil eieren av maskinen den st�r p� holdes ansvarlig dersom noe skulle skje.</li>\r\n	</ul>\r\n</article>\r\n<article class="contentBox">\r\n	<p>Hvis du ikke �nsker � bli medlem ta kontakt med <a href="mailto:fredrik@warbo.org">fredrik@warbo.org</a></p>\r\n</article>'),
(3, 'parents-and-guardians', 'For foreldre og foresatte', '<article class="contentBox">\r\n	<p><strong>Infected er et data-party som foreg�r kontinuerlig over to d�gn. Er du en forelder eller foresatt kan denne artikkelen v�re nyttig for deg</strong></p><br>\r\n	<p>Infected LAN er et ungdomsarrangement i regi av Asker kommune og Radar ungdomsskaf�. Arrangementet passer for alle data og eller spillinteresserte ungdom som �nsker � samle seg for en sosial og hyggelig sammenkomst. Vi �nsker � fokusere p� at dette er et av de flotte og milj�byggende aktivitetene som arrangeres i kommunen.</p>\r\n</article>\r\n<a href="files/Foreldreskjema.doc"><img class="contentLeftImageBox" src="images/pages/foreldreskjema.png"></a>\r\n<article class="contentRightBox">\r\n	<h3>Hvordan foreg�r det?</h3>\r\n	<p>Arrangementet varer over tre dager - normalt fra fredag kveld til s�ndag morgen, f�rste helgen i h�stferien og vinterferien. Infected er for ungdom - og utf�res av ungdom. Det vil si at det er prim�rt ungdommen selv som st�r for arrangementet, med planlegging, gjennomf�ring og opprydding. P� denne m�ten blir arrangementet en arena der unge mennesker kan bygge opp relasjoner og drive positivt arbeid.</p>\r\n</article>\r\n<article class="contentBox">\r\n	<h3>Aldersgrense, spesielle behov</h3>\r\n	<p>Er barnet ditt under 14 �r, m� du ha med en fullmakt. Den finner du <a href="files/Foreldreskjema.doc">her</a>! Har barnet ditt spesielle behov vi b�r vite om? Ta kontakt med <a href="mailto:kontakt@infected.no">kontakt@infected.no</a>, s� hjelper vi til.</p>\r\n</article>\r\n<article class="contentBox">\r\n	<h3>Oppm�te</h3>\r\n	<p>N�r LAN (local area network)-et starter klokken 18 sjekker alle deltakerne inn, f�r p� adgangsb�nd og finner plassen sin. Her plasserer de pc-en og sitter store deler av tiden. Ellers er Radar Ungdomskafe �pen, og omr�dene i kafeen �pen for sosiale aktiviteter. Det er egne sovesaler, og deltakerne blir oppfordret til � sove flere ganger underveis. Ellers foreg�r det spillkonkurranser lokalt, og andre �events� og konkurranser p� scenen.</p>\r\n</article>\r\n<article class="contentLeftBox">\r\n	<h3>Sikkerhet</h3>\r\n	<p>B�r vi bekymre oss? Nei. Det er over 100 medlemmer av Infected-crewene (Security, info, core, kafeteria, tech, events, game og backstage) som hele tiden overv�ker omr�dene. Sikkerhet er noe Infected setter veldig h�yt. B�de i forkant og underveis. Security s�rger for sikkerhet ogs� med tanke p� kriseberedskap og f�rstehjelp. Skulle du bli bekymret, ta kontakt med info-crewet underveis.</p>\r\n	<p>Brannvesen og politi er rutinemessig inne og patruljerer p� arrangementet.</p>\r\n</article>\r\n<article class="contentRightBox">\r\n	<h3>Kontakt underveis</h3>\r\n	<p>Kan vi f� kontakt med barnet underveis?: Vi oppfordrer alle til � ha med seg mobil p� arrangementet. Skulle det komme situasjoner hvor du m� m� ha tak i vedkommende og ikke f�r kontakt, kan du kontakte info-crew. Vi vil opprette en vakttelefon n�rmere LAN-start.</p>\r\n</article>'),
(4, 'packing-list', 'Pakkeliste', '<article class="contentLeftBox">\r\n<p>Aldri v�rt p� LAN f�r?<br>\r\nEller er du bare litt usikker p� hva som er lurest og ha med seg n�r en skal p� LAN?</p><br>\r\n\r\n<p>Ingen fare!<br>\r\nFor vi i Infected Crewet har laget en hendig pakkeliste over ting man b�r eller ikke b�r ha med p� LAN.</p>\r\n</article>\r\n<img class="contentRightImageBox" src="images/pages/packing-list.png" alt="Pakkeliste">\r\n<article class="contentBox">\r\n	<h3>Du b�r ha med:</h3>\r\n	<ul>\r\n		<li>Datamaskin med alt tilbeh�r.</li>\r\n		<li>Nettverkskabel med en minumumslengde p� fem meter.</li>\r\n		<li>Str�mpad, beregnet ett st�psel per person.</li>\r\n		<li>Tannb�rste og andre hygieneartikler.</li>\r\n		<li>Penger.</li>\r\n		<li>Vann eller brus.</li>\r\n		<li>Eventuelle medisiner hvis man trenger det (Ta kontakt med crew hvis det er noe vi b�r vite).</li>\r\n		<li>Din billett.</li>\r\n		<li>Sovepose.</li>\r\n		<li>Legitimasjon.</li>\r\n	</ul>\r\n</article>\r\n<article class="contentBox">\r\n	<h3>Du kan ikke ha med:</h3>\r\n	<ul>\r\n		<li>Alkohol og eller andre rusmidler.</li>\r\n		<li>H�ytalere.</li>\r\n		<li>Kj�leskap og hvitevarer</li>\r\n	</ul>\r\n</article>'),
(5, 'about', 'Om Infected', '<img class="contentLeftImageBox" src="images/pages/om_oss.jpg">\r\n<article class="contentRightBox">\r\n<h3>Hva er et LAN Party?</h3>\r\n	<p>Kort fortalt er et LAN Party er en midlertidig samling av mennesker med PCer og/eller spillkonsoller.\r\n	Disse kobles opp p� et lokalt nettverk (LAN = Local Area Network), og gis som regel ogs� tilgang til internett.\r\n	I tillegg til � spille p� PC/spillkonsoller, inneholder som regel LAN Parties ogs� konkurranser og events.\r\n	LAN Parties omtales ofte ogs� som datatreff, dataparty eller bare LAN. St�rrelsen kan variere fra 2 personer til st�rre forsamlinger.</p>\r\n</article>\r\n<article class="contentBox">\r\n	<p>Arrangementet blir holdt f�rste helg i vinter- og h�st- ferien hvert �r.\r\n	Med over 300 deltagere og 100 i crewet er vi Askers st�rste LAN Party.\r\n	Hovedsakelig er de fleste deltagerne fra Asker og omegn, men noen kommer ogs� mer langveisfra.</p>\r\n</article>\r\n<article class="contentBox">\r\n	<p>Infected LAN Party er et non-profit, rusfritt ungdomsarrangement.\r\n	Forgjengeren til Infected ble startet av en vennegjeng fra Asker, med hjelp fra Asker Kommune (Radar ungdomskafe).\r\n	Det f�rste LAN partyet under navnet Infected ble arrangert i 2006. I starten var det rundt 50 deltagere og 5 til 10 i crew.\r\n	Siden den gang har vi vokst og utviklet oss innen omr�dene til et LAN Party.</p>\r\n</article>\r\n<article class="contentBox">\r\n	<p>Vi har samarbeidet tett med Radar Ungdomskafe hele veien og starter n� ogs� et samarbeid med videreg�ende linjen IKT Servicefag i Asker.\r\n	Vi er organisert som en avdeling under organisasjonen Radar Event. LANet har eget styre med jevnlige m�ter gjennom �ret, og med �kt hyppighet frem mot arrangementene.\r\n	Styret best�r pr mai 2013 av �tte ungdommer i alderen 20-28�r.</p>\r\n</article>\r\n<article class="contentBox">\r\n	<h3>Form�l</h3>\r\n	<ul>\r\n		<li>� skape et rusfritt tilbud til data og spill interessert ungdom i Asker og omegn.</li>\r\n		<li>� skape et arrangement hvor ungdom med like interesser kan m�tes for spill, konkurranser, sosialisering og l�ring.</li>\r\n		<li>� v�re et non-profit arrangement basert p� frivillig arbeid.</li>\r\n	</ul>\r\n</article>'),
(6, 'contact', 'Kontakt', '<article class="contentBox">\r\n	<p>For generelle sp�rsm�l: <a href="mailto:kontakt@infected.no">kontakt@infected.no</a>. Alle presserelaterte sp�rsm�l skal gjennom informasjonsansvarlig.</p>\r\n</article>\r\n<article class="contentLeftBox">\r\n	<h3>Informasjonsansvarlig</h3><br>\r\n	<p>Fredrik Warbo</p>\r\n	<p>Telefon: 99 76 77 45</p>\r\n	<p>E-post: <a href="mailto:fredrik@warbo.org">fredrik@warbo.org</a></p>\r\n	<p>Oppgaver: Info, presse, utvikling, web</p>\r\n</article>\r\n<article class="contentRightBox">\r\n	<h3>Sikkerhetsansvarlig</h3><br>\r\n	<p>Hans Hesle</p>\r\n	<p>Telefon: 99 40 41 37</p>\r\n	<p>E-post: <a href="mailto:hansg.hesle@gmail.com">hansg.hesle@gmail.com</a></p>\r\n	<p>Oppgaver: Sikkerhetsleder, brannleder</p>\r\n</article>'),
(7, 'competitions-general', 'Konkurranser', '<article class="contentBox">\r\n	<h3>Generelt for alle spill:</h3><br>\r\n	<p>Etter matchen m� begge lagene melde resultatet til game crew.<br>\r\n	<p>N�r du skal kontakte en game admin eller en som representerer det andre laget som spiller s� introduser deg med nick s� man vet hvem du er. Du m� ogs� si klart hvilket lag du spiller for.<br>\r\n	<p>Infected forbeholder seg retten til � endre/heve/legge til regler p� et hvilket som helst tidspunkt.<br>\r\n	<p>Vi forbeholder oss ogs� retten til � vike fra � d�mme etter reglene i veldig ekstreme situasjoner.</p>\r\n	\r\n	<h4>Klager/annet</h4>\r\n	<p>Hvis det er noe uklart ved disse reglene s� er det ditt ansvar og sp�rre en i game crew for � finne ut av det du lurer p�. Game crew vil v�re tilgjengelig til enhver tid.</p>\r\n	\r\n	<h4>Spillere</h4>\r\n	Bare spillere som er registrert p� laget f�r lov til � spille. En spiller kan bare v�re p� et lag, som betyr at du ikke kan spille p� to forskjellige lag i en og samme compo. Mangler dere en person ved oppm�te s� kan dere sp�rre game crew om dere f�r lov til � bruke en step til spilleren kommer tilbake. Eller spille med en mindre.</p>\r\n	\r\n	<h4>Oppm�te</h4>\r\n	<p>Hvis det mangler spillere vil de ha 10 minutter p� seg til og bli klare. Hvis et av lagene ikke har alle klar innen tiden s� kan de spille med f�rre spillere.<br />\r\n	Crew kan delta som andre deltagere.</p>\r\n</article>'),
(8, 'counter-strike:-global-offensive', 'Counter-Strike: Global Offensive', '<article class="contentLeftBox">\r\n	<h3>Regler:</h3><br>\r\n	<p>Generelt & Game settings:<p>\r\n	<p>Konkurranse Mode: 5on5<br>\r\n	Maps: Dust2, Cache, Nuke, Mirage, Train<br>\r\n	Gamemode: Competitive<br>\r\n	Vinner: mr15<br>\r\n	Mode: Double Elimination</p>\r\n</article>\r\n<img class="contentRightImageBox" src="images/pages/csgo.png" alt="Counter-Strike: Global Offensive">\r\n<article class="contentBox">\r\n	<p>Map velges av en banning prosess hvor hvert lag har 2 bans av baner.<br>\r\n	Etter valg av bane er det knifefight for � bestemme side (T / CT).</p>\r\n</article>\r\n<article class="contentBox">\r\n	<p><strong>Disconnect:</strong><br>\r\n	Hvis en spiller frakoples servere p� grunn av tekniske vanskeligheter, kan laglederen for spillerens lag pause spillet, men KUN under freezetime (i kj�pstiden(15sekunder) f�r runden er i gang).<br>\r\n	Problemer med kampen skal rapporteres til administrator via Game-desk.</p>\r\n</article>\r\n<article class="contentBox">\r\n	<p><strong>Generelt:</strong><br>\r\n	En kamp avsluttes n�r et lag har vunnet 16 runder.<br>\r\n	Hver spiller <u><strong>skal</strong></u> ta Demo av matchen ved hjelp av Console kommandoen:   record (Navn p� record).<br>\r\n	Turneringen er i Double Elimination bracket-system. Dette betyr at alle lag kan tape �n kamp uten � ryke ut av turneringen.<br>\r\n	Infected stiller med server til lagene, IP-adresse og passord blir sendt til noen p� laget gjennom steam-gruppen "Infected.lan".<br>\r\n	Spesial-filer er ikke tillatt. Spesial-filer er alle filer som forandrer eller erstatter de originale in-game-grafiske elementene, *gfc-filer eller lyder. Dette betyr ogs� forandring av HUD, scoreboard og lyder.<br>\r\n	Spillere har ikke lov til � se p� eller h�re p� stream mens de selv spiller turneringskamp.<br>\r\n	Ingen spectators er lov under turneringskampene utenom godkjente streams og administratorer.<br>\r\n	Hvis en bug blir misbrukt i spillet, blir dette sett p� som regelbrudd og f�rer til walkover eller diskvalifisering.<br>\r\n	Bruk av tredjeparts programmer som tukler med spillets funksjoner er forbudt, og kan f�re til utestengelse.</p>\r\n</article>\r\n<article class="contentBox">\r\n	<p>Game-crew forbeholder seg retten til � endre, legge til eller fj�rne regler underveis.</p>\r\n</article>'),
(9, 'league-of-legends', 'League of Legends', '<article class="contentLeftBox">\r\n	<h3>Regler:</h3><br>\r\n	\r\n	<p>Generelt &amp; game settings:</p><br>\r\n	\r\n	<p>Konkurranse Mode: 5 vs 5<br>\r\n	Map: Summoner&#8217;s Rift (summer)<br>\r\n	Mode: Draft Mode<br>\r\n	Vinner: Teamet som helt �delegger motstanderens nexus<br>\r\n	eller tvinger motstanderen til � surrendere.</p>\r\n</article>\r\n<img class="contentRightImageBox" src="images/pages/lol.png" alt="Leauge of Leagends">\r\n<article class="contentBox">\r\n	<p>Disconnects:<br>\r\n	Hvis en spiller blir disconnectet fra spillet pga nettverksproblemer eller andre uforutsette hendelser,<br>\r\n	skal gamet remakes hvis mindre enn 5 minutter av spillet har g�tt (ingame timer) eller noen har<br>\r\n	f�tt firstblood. Har 5 min av spillet g�tt eller noe har f�tt firstblood fortsetter gamet som normalt.<br>\r\n	Hvis en spiller disconnecter med vilje uten grunn eller med ugyldig grunnlag, fortsetter gamet som normalt.<br>\r\n	Dersom det ikke opplyses med engang at en spiller disconnectet, fortsetter spillet som normalt.</p><br>\r\n	\r\n	<p>Diverse:<br>\r\n	F�lgende oppf�rsel vil ikke bli tolerert, og vil f� konsekvenser avhengig av hvor seri�st tilfellet er.<br>\r\n	1) Bruk av eventuelle cheat programmer og / eller map hacks.<br>\r\n	2) Disconnecting med vilje uten skikkelig grunn<br>\r\n	3) Griefing / flaming / generelt upassende oppf�rsel<br>\r\n	4) Bruk av bugs eller lignende. Det blir opp til admins � avgj�re hva som er bugs, hvor grove bugsa er,<br>\r\n	og konsekvensene for eventuell abuse av dem.<br>\r\n	5) Bruk av en spiller som ikke opprinnelig er en del av laget (&laquo;ringer&raquo;)</p>\r\n</article>\r\n<article class="contentBox">\r\n	<p>Ved uklarheter, ta kontakt med compoansvarlig/game crew.<br>\r\n	Husk att generelle regler gjelder i tillegg til disse compospesifikke reglene.</p>\r\n</article>');

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `slides`
--

CREATE TABLE IF NOT EXISTS `slides` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL,
  `title` varchar(64) NOT NULL,
  `content` text NOT NULL,
  `published` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;

--
-- Dataark for tabell `slides`
--

INSERT INTO `slides` (`id`, `start`, `end`, `title`, `content`, `published`) VALUES
(19, '2014-02-15 11:30:00', '2014-02-15 20:30:00', 'Ha det ryddig rundt deg!', '<p>Hold sakene dine under bordet.</p>', 0),
(24, '2014-02-14 15:00:00', '2014-02-16 12:00:00', 'Lost and Found', '<p>Har du mistet eller funnet noe som ikke er ditt? Lever til infodesken</p>', 1),
(28, '2014-02-15 08:30:00', '2014-02-16 23:59:00', 'Lurer du p� noe?', '<p>Generell hjelp finner du i Info-desken</p>', 1),
(29, '2014-02-14 23:00:00', '2014-02-16 23:59:00', 'Mye s�ppel?', '<p>Mye s&oslash;pple p&aring; plassen din?<br /><span style=\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\"line-height:1.6\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\">S&oslash;ppelposer er &aring; finne p&aring; begge ender av radene!</span></p>', 1),
(32, '2014-02-14 18:00:00', '2014-02-14 12:00:00', 'Nettverkskartet som viser trafikken!', '<p>Du kan finne kartet over nettverket og trafikken p&aring;: http://weathermap.infected.no/</p>', 0),
(44, '2014-02-13 01:02:00', '2014-02-13 13:00:00', 'Vann', '<p>Husk &aring; drikke vann! Bare energidrikke og<br /><span style=\\\\\\"line-height:1.6\\\\\\">brus gir deg hodepine!</span></p>', 0),
(45, '2014-02-16 03:02:00', '2014-02-16 15:55:00', 'Slutt p� moroa :(', '<p>Nett og str&oslash;m blir tatt ned kl. 12<br />Velkommen igjen til neste Infected LAN :)</p>', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
