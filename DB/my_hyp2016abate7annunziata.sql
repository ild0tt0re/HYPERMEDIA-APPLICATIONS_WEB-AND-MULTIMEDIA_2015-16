-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 13, 2016 at 11:38 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `my_hyp2016abate7annunziata`
--

-- --------------------------------------------------------

--
-- Table structure for table `assistenza`
--

CREATE TABLE `assistenza` (
  `nome` varchar(80) NOT NULL,
  `categoria` varchar(50) NOT NULL,
  `image` varchar(200) NOT NULL,
  `intro` varchar(300) NOT NULL,
  `titolo_descrizione` varchar(80) NOT NULL,
  `descrizione` varchar(3000) NOT NULL,
  `punto1` varchar(2000) NOT NULL,
  `punto2` varchar(2000) NOT NULL,
  `punto3` varchar(2000) NOT NULL,
  `punto4` varchar(2000) NOT NULL,
  `titolo_intro_device` varchar(80) NOT NULL,
  `intro_device` varchar(1000) NOT NULL,
  `link_for_devices` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assistenza`
--

INSERT INTO `assistenza` (`nome`, `categoria`, `image`, `intro`, `titolo_descrizione`, `descrizione`, `punto1`, `punto2`, `punto3`, `punto4`, `titolo_intro_device`, `intro_device`, `link_for_devices`) VALUES
('Mobile', 'Gestione Linea e Servizi', 'img/assistenza/intro_mobile.jpg', 'Info ed Assistenza per la tua SIM e per i Dispositivi Mobile Acquistabili a Rate', 'La tua SIM', 'Tutto ci&ograve; che devi sapere per gestire al meglio la tua SIM:', 'I codici PIN e PUK: il PIN (Personal Identity Number) &egrave; un codice numerico di 4 cifre che ti consente, se regolarmente impostato, di proteggere il telefonino da utilizzi illeciti. Viene infatti richiesto dal telefonino al momento dell&rsquo;accensione; il codice PIN &egrave; personalizzabile. Il PUK (Personal Unblocking Key) &egrave; un codice di sblocco fisso e non modificabile che serve per sbloccare la SIM a seguito dell''errata digitazione del codice PIN per 3 volte di seguito.', 'Cosa fare in caso di furto o smarrimento: dovrai tempestivamente bloccare la linea relativa alla SIM presente al suo interno.\r\nSe sei un cliente ricaricabile e sei gi&agrave; registrato alla sezione MyTIM Mobile puoi bloccare la linea direttamente online. Se non sei registrato alla sezione MyTIM Mobile o se sei un cliente in abbonamento dovrai contattare il Servizio Clienti 119. Previa identificazione e verifica della titolarit&agrave; del numero (attraverso la comunicazione di nome, cognome, codice fiscale,...) verr&agrave; immediatamente bloccata la linea al traffico telefonico.', 'Sostituzione della tua SIM: l&rsquo;operazione di sostituzione SIM ti consente di cambiare la tua SIM e conservare il tuo numero telefonico (sia per clienti ricaricabili che in abbonamento).', '', 'Dispositivi Mobile a Rate', 'Offriamo un comodo servizio di pagamento a Rate per i Dispositivi Mobile. Clicca il link in basso per vedere i modelli disponibili', 'Smartphone a Rate'),
('TIMvision', 'Contenuti e Smart Life', 'img/assistenza/intro_TIMvision.png', 'Info ed Assistenza relativi al servizio TIMvision', 'TIMvision', 'TIMvision &egrave; la nuova risposta alle esigenze di intrattenimento per tutta la famiglia. La TV interamente on demand di TIM che tramite una connessione ADSL Illimitata o Fibra ti permette di godere di migliaia di titoli: il grande cinema, le serie TV pi&ugrave; appassionanti, i cartoni animati pi&ugrave; amati e tanto altro ancora come documentari, reportage e musica. L''abbonamento TIMvision ti permette di guardare tutti i contenuti su PC, Smart TV o TV con Decoder, tablet e smartphone senza consumare Giga, quando e dove vuoi. I clienti TIMvision possono accedere a:', 'TIMvision TV', 'Videostore', 'Free TV', 'Replay TV', 'Dispositivi per usare TIMvision', 'Oltre al Decoder TIMvision, puoi trovare anche il Televisore che fa per te. Clicca il link in basso e scopri i nostri Prodotti TIMvision', 'Prodotti TIMvision');

-- --------------------------------------------------------

--
-- Table structure for table `banner_prodotti`
--

CREATE TABLE `banner_prodotti` (
  `categoria_prodotti` varchar(80) NOT NULL,
  `banner` varchar(200) NOT NULL,
  `intro_banner` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banner_prodotti`
--

INSERT INTO `banner_prodotti` (`categoria_prodotti`, `banner`, `intro_banner`) VALUES
('Smartphone e Telefoni', 'img/prodotti/banner_prodotti.jpg', 'Smartphone, Cellulari e Telefoni per la casa');

-- --------------------------------------------------------

--
-- Table structure for table `device`
--

CREATE TABLE `device` (
  `id_device` int(11) NOT NULL,
  `categoria` varchar(100) NOT NULL,
  `filtro` varchar(50) NOT NULL,
  `marca` varchar(100) NOT NULL,
  `nome` varchar(150) NOT NULL,
  `image` varchar(200) NOT NULL,
  `intro` varchar(300) NOT NULL,
  `caratteristica1` varchar(100) NOT NULL,
  `caratteristica2` varchar(100) NOT NULL,
  `caratteristica3` varchar(100) NOT NULL,
  `caratteristica4` varchar(100) NOT NULL,
  `prezzo` float NOT NULL,
  `rate` float DEFAULT NULL,
  `vecchio_prezzo` float DEFAULT NULL,
  `titolo_descrizione1` varchar(80) NOT NULL,
  `descrizione1` varchar(3000) NOT NULL,
  `titolo_descrizione2` varchar(80) NOT NULL,
  `descrizione2` varchar(600) NOT NULL,
  `titolo_descrizione3` varchar(80) NOT NULL,
  `descrizione3` varchar(600) NOT NULL,
  `titolo_descrizione4` varchar(80) NOT NULL,
  `descrizione4` varchar(600) NOT NULL,
  `nome_specifica1` varchar(80) NOT NULL,
  `specifica1` varchar(5000) NOT NULL,
  `nome_specifica2` varchar(80) NOT NULL,
  `specifica2` varchar(600) NOT NULL,
  `nome_specifica3` varchar(80) NOT NULL,
  `specifica3` varchar(600) NOT NULL,
  `nome_specifica4` varchar(80) NOT NULL,
  `specifica4` varchar(600) NOT NULL,
  `nome_specifica5` varchar(80) NOT NULL,
  `specifica5` varchar(600) NOT NULL,
  `nome_specifica6` varchar(80) NOT NULL,
  `specifica6` varchar(600) NOT NULL,
  `nome_specifica7` varchar(80) NOT NULL,
  `specifica7` varchar(600) NOT NULL,
  `nome_specifica8` varchar(80) NOT NULL,
  `specifica8` varchar(600) NOT NULL,
  `nome_specifica9` varchar(80) NOT NULL,
  `specifica9` varchar(600) NOT NULL,
  `nome_specifica10` varchar(80) NOT NULL,
  `specifica10` varchar(600) NOT NULL,
  `nome_specifica11` varchar(80) NOT NULL,
  `specifica11` varchar(600) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `device`
--

INSERT INTO `device` (`id_device`, `categoria`, `filtro`, `marca`, `nome`, `image`, `intro`, `caratteristica1`, `caratteristica2`, `caratteristica3`, `caratteristica4`, `prezzo`, `rate`, `vecchio_prezzo`, `titolo_descrizione1`, `descrizione1`, `titolo_descrizione2`, `descrizione2`, `titolo_descrizione3`, `descrizione3`, `titolo_descrizione4`, `descrizione4`, `nome_specifica1`, `specifica1`, `nome_specifica2`, `specifica2`, `nome_specifica3`, `specifica3`, `nome_specifica4`, `specifica4`, `nome_specifica5`, `specifica5`, `nome_specifica6`, `specifica6`, `nome_specifica7`, `specifica7`, `nome_specifica8`, `specifica8`, `nome_specifica9`, `specifica9`, `nome_specifica10`, `specifica10`, `nome_specifica11`, `specifica11`) VALUES
(1, 'TV e Smart Living', 'Decoder', 'Decoder', 'TIMvision', 'img/devices/decoder_timvision.jpg', 'Il Decoder TIMvision ti consente di entrare nel magico mondo di TIMvision', 'Migliaia di titoli tra cartoni, film, serie e documentari.', '', '', '', 49, NULL, NULL, 'DECODER TIMvision', 'Con il decoder TIMvision hai a disposizione pi&ugrave; di 8.000 titoli tra cartoni, film, serie e documentari sempre on demand per creare il tuo palinsesto senza interruzioni pubblicitarie.\r\nTramite il telecomando puoi mettere in pausa il tuo film preferito e farlo ripartire quando decidi tu, puoi rivedere una scena o andare avanti. Collega il decoder alla tua linea ADSL Illimitata o Fibra Ottica di TIM e potrai avere accesso ai seguenti servizi:', 'VIDEOSTORE DI TIMvision', 'Nel Videostore di TIMvision ti aspettano tutti gli episodi delle migliori serie, dalle pi&ugrave; famose alle pi&ugrave; esclusive, i cartoni animati e le serie preferite per bambini e ragazzi, le anteprime pi&ugrave; attese e tanti film mai visti in tv o da rivedere in lingua originale. Scegli tra oltre 6.000 titoli sempre aggiornati.', 'REPLAY TV DI TIMvision', 'Nella Replay TV di TIMvision trovi tutti i programmi televisivi andati in onda negli ultimi 7 giorni sulle reti RAI (da tutti i dispositivi escluso streaming da web) e LA7 e l''archivio LA7', 'YOUTUBE', 'Accedi YouTube, per vedere i video che vuoi direttamente dalla tua TV', 'Dimensioni (LxPxA)', '210 mm x 210 mm x 40 mm', 'Confezione', 'Decoder - Cavo alimentazione - Cavo HDMI - Telecomando universale - Batterie - Guida rapida all''installazione', 'Processore', 'Processore Intel ATOM CE 4230', 'Memoria', 'Ram 1 GByte DDR3', 'Connettivit&agrave;', 'HDMI 1.3 - Video Composito - Uscita audio ottica digitale - Ethernet 10/100 BASE-T - 1 x USB 2.0 - Connessione Wireless 802.11 b/g/n (2.4GHz e 5GHz) - Ricevitore IR integrato per telecomando TIMvision', 'Formati supportati', 'Audio: MPEG-1 Layer I, II 2.0 - MPEG-1 Layer 3 (mp3) 2.0 - MPEG-4 AA-LC 2.0 - MPEG-4 AAC-LC 5.1 - MPEG-4 HE-AAC 5.1 - MPEG-4 BSAC 2.0 - LPCM 7.1 - WMA9 2.0 - WMA9 Pro 5.1\r\nVideo: MPEG-1 - MPEG-2 - MPEG-2@HL - MPEG-4.2 ASP@L5 (720p) - MPEG-4.10 (H.264) BP@L3 MP4@L4.0 e HIP@L4.0 - WMV9 MP@HL - SMPTE421 (VC-1) MP@HL Fotografici: JPEG - BMP - GIF - TIFF - PNG', 'Impostazione intuitiva', 'Collegamento al televisore: Il Decoder TIMvision pu&ograve; essere collegato al televisore mediante il cavo HDMI oppure mediante cavo analogico RCA-SCART (inclusi nella confezione)\r\nCollegamento alla rete ADSL: Il Decoder TIMvision pu&ograve; essere collegato alla rete mediante cavo Ethernet o mediante connessione Wi-Fi. Alla prima accensione una procedura guidata ti assister&agrave; nella prima configurazione della tua connessione', 'Modalit&agrave; Video PAL', '576p - 720p - 1080i - 1080p', '', '', '', '', '', ''),
(2, 'Smartphone e Telefoni', 'Smartphone', 'LG', 'G5', 'img/devices/LG_G5.jpg', '', 'Sistema Operativo Android 6.0', 'Display 5.3 pollici', 'Processore Snapdragon 820 QuadCore 2.15 GHz - 4G LTE', '', 699.9, 20, NULL, 'LG G5', 'Il nuovo LG G5 &egrave; uno nuovo tipo di smartphone che supera tutti i limiti, con un design modulare completamente in metallo che rivoluziona i canoni di design. Espandi le funzioni, interagisci con gli innovativi LG Friends e prova un''esperienza smartphone realmente innovativa. La rivoluzione di G5 continua con la doppia fotocamera grandangolare, che cattura pi&ugrave; di quanto i tuoi occhi riescano a vedere. Anche sotto il sole, perch&egrave; il nuovo display IPS Quantum &egrave; pi&ugrave; ricco, luminoso e colorato anche sotto la luce diretta del sole. E ti mostra sempre le notifiche principali anche quando non &egrave; attivo. Nuovo LG G5: quello che non ti aspetti, nel palmo della tua mano.', 'COMPLETAMENTE IN METALLO', 'Bellezza e raffinatezza nel palmo della tua mano. Cerchi da sempre la cura nei dettagli e l''eleganza dei materiali, ed eccoli qui. Il metallo e il vetro si uniscono morbidamente in una forma semplicemente iconica che ti d&agrave; sensazioni tutte da provare.', 'DESIGN MODULARE', 'Liberati dalle convenzioni. Il nuovo design modulare con batteria a slitta ti permette di avere tutto quello che gli altri non hanno mai saputo darti. La libert&agrave; di avere uno smartphone in metallo e di poter cambiare la batteria quando desideri. E di espandere le funzioni con nuovi moduli.', 'DOPPIA FOTOCAMERA CON LENTI GRANDANGOLARI', 'Cattura tutto ci&ograve; che vedi. I nostri occhi vedono pi&ugrave; di quanto una fotocamera convenzionale riesca a catturare. Ma con LG G5 puoi fare anche di pi&ugrave;, perch&egrave; ha due fotocamere. Con la prima cogli tutti i dettagli. Con la lente grandangolare a 135 gradi della seconda, invece, catturi perfino pi&ugrave; di quanto vedono i tuoi occhi. Grattacieli, un concerto o l''intera spiaggia dove ti trovi vivranno nitidi sul tuo nuovo G5', 'Sistema Operativo', 'Sistema Operativo Android 6.0', 'Display', '5.3 pollici 16 Milioni colori Touch', 'Processore', 'Processore Snapdragon 820 QuadCore 2.15 GHz - 4G LTE', 'Tecnologia', '4G cat.6 HSDPA42 UMTS EDGE GPRS \r\nFrequenze 850 900 1800 1900 2100', 'Connettivit&agrave;', 'Wi-Fi - Bluetooth - Infrarosso - USB tipo C - NFC', 'Fotocamera', '2 Fotocamere Posteriori da 16 Mpxl con flash e Fotocamera frontale 8 Mpx', 'Memoria Interna', '32GB\r\nSlot Memory Card Micro SD fino a 2TB', 'Formato SIM', 'Nano', 'Video', 'Video Recorder and Playback', 'Dimensioni', '149,4x73,9x7,3 mm', 'Peso', '159 grammi'),
(3, 'Smartphone e Telefoni', 'Smartphone', 'Huawei', 'P9', 'img/devices/huawei_p9.jpg', '', 'Sistema Operativo Android 6.0', 'Display IPS Full HD da 5.2&quot;', 'Doppia Fotocamera Leica da 12 Mpxl Dual Flash + anteriore da 8 Mpxl', 'Processore Kirin 955 - Octa-Core (4x2,5 GHz + 4x1,8 GHz)', 399.9, NULL, 599.9, 'PREMIUM. ELEGANT. STYLISH.', 'Huawei P9 presenta un design con linee dal forte impatto visivo, caratterizzate da spigoli tagliati a diamante e arrotondati a regola d&rsquo;arte. Lo smartphone ha una struttura unibody in alluminio aerospaziale e vetro 2.5D di categoria superiore, ed &egrave; disponibile in due varianti cromatiche: Titanium Grey e Mystic Silver.', 'DISPLAY LUMINOSO E DAI COLORI INTENSI', 'Con una resa cromatica del 96%, il sensazionale display IPS Full HD da 5,2&quot; porta alla scoperta di un mondo ricco di colori intensi e ancora pi&ugrave; naturali.', 'UN INNOVATIVO SISTEMA CON DOPPIA FOTOCAMERA, UNA COLLABORAZIONE UNICA', 'La collaborazione tra Huawei e Leica ha dato vita a uno smartphone con doppia fotocamera. Il risultato: maggiore luminosit&agrave; e nitidezza per foto e video sensazionali.', 'INNOVATIVO SISTEMA CON DOPPIA FOTOCAMERA', 'Huawei P9 &egrave; in grado di catturare immagini dai colori luminosi e garantire al contempo una resa in bianco e nero straordinaria; il tutto con lo stile senza tempo di Leica.La tecnologia con doppia fotocamera di Huawei P9 consente di catturare una maggiore quantit&agrave; di luce, combinando al meglio la qualit&agrave; del colore acquisito dal sensore RGB con i dettagli ottenuti dal sensore in bianco e nero. Il tutto per garantire il massimo risultato ad ogni scatto.', 'Sistema Operativo', 'Sistema Operativo Android 6.0', 'Processore', 'Processore Kirin 955 - Octa-Core (4x2,5 GHz + 4x1,8 GHz)', 'Display', 'Display IPS Full HD da 5.2&quot;', 'Fotocamera', 'Principale 12MP x 2, f/2.2 Leica BSI CMOS Flash dual-tone Frontale 8MP, f/2.4', 'Tecnologia', 'Abilitato tecnologia 4GPlus - 4G - HSDPA 42 - UMTS - EDGE - GPRS Frequenze 850 - 900 - 1800 - 1900MHz', 'Connettivit&agrave;', '4G cat.6/HSDPA42/UMTS/EDGE/GPRS Frequenze 850/900/1800/1900/2100 Wi-Fi a/b/g/n/ac dual band 2,4/5GHz con Wi-Fi Direct Bluetooth 4.2, BLE USB Type-C, NFC', 'GPS', 'GPS Integrato', 'Memoria Interna', '32 GB', 'In dotazione', 'Smartphone Auricolari stereo - Caricabatteria Cavo USB Type-C - Estrattore SIM - Guida rapida', 'Dimensioni', '145 x 70,9 x 6,95 mm', 'Peso', '144 grammi');

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE `faq` (
  `id_faq` int(11) NOT NULL,
  `nome_assistenza` varchar(80) NOT NULL,
  `domanda` varchar(300) NOT NULL,
  `risposta` varchar(2000) NOT NULL,
  `punto1` varchar(600) NOT NULL,
  `punto2` varchar(600) NOT NULL,
  `punto3` varchar(600) NOT NULL,
  `punto4` varchar(600) NOT NULL,
  `punto5` varchar(600) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faq`
--

INSERT INTO `faq` (`id_faq`, `nome_assistenza`, `domanda`, `risposta`, `punto1`, `punto2`, `punto3`, `punto4`, `punto5`) VALUES
(1, 'TIMvision', 'Cosa posso vedere con TIMvision?', 'Con TIMvision film, serie Tv, cartoni e molto altro, sempre on demand e senza interruzioni pubblicitarie. Inolre per i clienti TIMvision &egrave; previsto un grande film novit&agrave; in regalo ogni mese, anche in HD. Per scegliere il film in regalo, &egrave; sufficiente accedere alla sezione &ldquo;Promo per Te&rdquo; presente nel Videostore. Potrai noleggiare gratuitamente, un film, normalmente offerto a pagamento, tra i migliori selezionati dalla redazione di TIMvision e aggiornati ogni mese. Ecco le sezioni di TIMvision:', 'Nella sezione TIMvision TV trovi oltre 6.000 titoli inclusi nell&rsquo;abbonamento: una ricca offerta di film di vario genere, le stagioni complete delle migliori serie TV, cartoni e programmi per ragazzi documentari, reportage e concerti.', 'Nella sezione FREE TV  trovi Replay TV, WEB TV e gli Archivi LA7 e MTV.', 'Nella sezione Replay TV hai a disposizione tutta la programmazione della settimana precedente delle principali retie Rai (da tutti i dispositivi escluso streaming da web), La 7 e MTV.', 'Nella sezione Web TV accedi ai titoli video del Web, distribuiti gratuitamente su Internet. I contenuti video sono organizzati in tante sezioni tematiche per una ricerca pi&ugrave; rapida e possono essere distribuiti in modalit&agrave; live e in differita.', 'Nella sezione Videostore, puoi noleggiare per 48 ore o acquistare scegliendo tra un catalogo di oltre 2.500 titoli tra le migliori novit&agrave; cinematografiche, con comodo addebito in fattura della linea fissa TIM o con carta di credito. In corrispondenza della voce Videostore-I miei acquisti, si trovano tutti i titoli acquistati/noleggiati ancora disponibili per la visione.'),
(2, 'TIMvision', 'Come ci si registra al servizio TIMvision?', 'La procedura di registrazione a TIMvision &egrave; necessaria per garantirti la sicurezza dell&rsquo;acquisto e la visione gratuita dei titoli fino a 6 dispositivi.', 'Se hai collegato il decoder TIMvision alla linea ADSL/Fibra di casa via ethernet o via Wifi, segui le indicazioni a video e con pochi semplici passaggi avrai completato la registrazione. Una volta connesso il decoder alla rete, potrai configurare un account TIMvision (email e password) dalla sezione Profilo/Modifica Account. In tal modo potrai utilizzare le credenziali per accedere su altri dispositivi compatibili TIMvision e vedere i titoli inclusi nell&rsquo;abbonamento. Tali dati saranno sempre visualizzabili nella sezione Profilo/I Miei Dati', 'Se stai accedendo dalla tua Smart TV per completare la registrazione potrebbe esserti richiesto di cliccare su un link inviato alla mail da te scelta. Ti consigliamo di farlo immediatamente per poter fruire quindi del servizio TIMvision nella sua completezza. Ricordati che la username (indirizzo email) e la password scelte dovranno essere inserite al primo accesso successivo sul tuo Smart TV per effettuare il login. Poi non ti saranno pi&ugrave; richieste, a meno che tu non esegua il logout.', 'Se stai accedendo dal tuo tablet/smartphone o da timvision.it entra in REGISTRATI. Le credenziali scelte dovranno inoltre essere utilizzate per autenticarsi su tutti i dispositivi compatibili con TIMvision.', '', ''),
(3, 'Mobile', 'Dove posso trovare i codici PIN e PUK?', 'Ogni TIM Card o SIM in abbonamento viene venduta accompagnata da due codici di sicurezza, il PIN e il PUK. Puoi trovare i codici PIN e PUK sul retro del supporto di plastica, che ti viene consegnato al momento dell&rsquo;acquisto della tua SIM, sotto la striscia argentata. I codici PIN e PUK sono strettamente personali ed il Servizio Clienti 119 non potr&agrave; fornirteli in caso di perdita o dimenticanza.', '', '', '', '', ''),
(4, 'Mobile', 'Ho bloccato la mia SIM. Come posso sbloccarla?', '', 'Se sei in possesso del PUK, la procedura da seguire per lo sblocco della SIM &egrave; la seguente: **05*PUK*PIN*PIN#', 'Se hai smarrito il PUK, dovrai necessariamente recarti in un Negozio TIM per effettuare la sostituzione della SIM mantenendo il tuo numero telefonico. Ti ricordiamo che il Servizio Clienti 119 per motivi di sicurezza non ha la possibilit&agrave; di fornirti il PUK, trattandosi di un codice strettamente personale.', '', '', ''),
(5, 'Mobile', 'Ho digitato in maniera errata il codice PUK. Come posso sbloccare la mia SIM?', 'Se hai digitato il codice PUK in maniera errata per dieci volte consecutive la tua SIM non pu&ograve; pi&ugrave; essere sbloccata. Dovrai necessariamente recarti in un Negozio TIM per effettuare un cambio carta. Ti sar&agrave; consegnata una nuova SIM mantenendo lo stesso numero telefonico.', '', '', '', '', ''),
(6, 'Mobile', 'Cosa succede dopo il blocco della linea? Continuo a pagare per i miei servizi telefonici?', 'Se sei un cliente ricaricabile, il tuo numero telefonico ed tuo credito residuo (presente al momento del blocco), rimangono a tua disposizione fino alla naturale scadenza della linea ricaricabile. Ti ricordiamo quindi che il Servizio Ricaricabile rimane attivo a meno che tu non faccia esplicita richiesta di cessazione.\r\nSe sei un cliente con abbonamento, fermo restando il blocco della linea, &egrave; importante ricordare che il contratto di abbonamento rimane attivo a meno che tu non faccia espressa richiesta di cessazione. Continuerai pertanto a ricevere regolarmente la fattura telefonica con le consuete spese fisse.\r\nTi suggeriamo quindi di recarti prima possibile presso un Negozio TIM per effettuare la sostituzione della SIM. In tal modo potrai recuperare il tuo numero telefonico e riprendere immediatamente ad utilizzare tutti i tuoi servizi.', '', '', '', '', ''),
(7, 'Mobile', 'In quali casi posso effettuare la sostituzione SIM Card?', 'Potresti avere la necessit&agrave; di richiedere la sostituzione della tua SIM per i seguenti motivi:', 'Furto/smarrimento', 'Malfunzionamento', 'Blocco e/o smarrimento del codice PIN/PUK', 'Passaggio a SIM di ultima generazione', 'Attivazione servizi NFC');

-- --------------------------------------------------------

--
-- Table structure for table `filtro`
--

CREATE TABLE `filtro` (
  `categoria_device` varchar(50) NOT NULL,
  `filtro1` varchar(50) NOT NULL,
  `filtro2` varchar(50) NOT NULL,
  `filtro3` varchar(50) NOT NULL,
  `filtro4` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `filtro`
--

INSERT INTO `filtro` (`categoria_device`, `filtro1`, `filtro2`, `filtro3`, `filtro4`) VALUES
('Smartphone e Telefoni', 'Smartphone', 'Cellulari', 'iPhones', 'Telefoni di casa'),
('TV e Smart Living', 'TV', 'Decoder', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `for_device1sl`
--

CREATE TABLE `for_device1sl` (
  `id_for_dev1sl` int(11) NOT NULL,
  `nome_smart_life` varchar(80) NOT NULL,
  `id_device` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `for_device1sl`
--

INSERT INTO `for_device1sl` (`id_for_dev1sl`, `nome_smart_life`, `id_device`) VALUES
(1, 'TIMvision', 1);

-- --------------------------------------------------------

--
-- Table structure for table `for_device_2as`
--

CREATE TABLE `for_device_2as` (
  `id_for_dev2as` int(11) NOT NULL,
  `nome_assistenza` varchar(80) NOT NULL,
  `id_device` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `for_device_2as`
--

INSERT INTO `for_device_2as` (`id_for_dev2as`, `nome_assistenza`, `id_device`) VALUES
(1, 'TIMvision', 1);

-- --------------------------------------------------------

--
-- Table structure for table `gruppo`
--

CREATE TABLE `gruppo` (
  `nome` varchar(50) NOT NULL,
  `banner` varchar(200) NOT NULL,
  `intro_banner` varchar(200) NOT NULL,
  `icona1` varchar(200) NOT NULL,
  `icona2` varchar(200) NOT NULL,
  `icona3` varchar(200) NOT NULL,
  `icona4` varchar(200) NOT NULL,
  `icona5` varchar(200) NOT NULL,
  `image1` varchar(200) NOT NULL,
  `image2` varchar(200) NOT NULL,
  `image3` varchar(200) NOT NULL,
  `image4` varchar(200) NOT NULL,
  `image5` varchar(200) NOT NULL,
  `categoria1` varchar(50) NOT NULL,
  `intro1` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `categoria2` varchar(50) NOT NULL,
  `intro2` varchar(300) NOT NULL,
  `categoria3` varchar(50) NOT NULL,
  `intro3` varchar(300) NOT NULL,
  `categoria4` varchar(50) NOT NULL,
  `intro4` varchar(300) NOT NULL,
  `categoria5` varchar(50) NOT NULL,
  `intro5` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gruppo`
--

INSERT INTO `gruppo` (`nome`, `banner`, `intro_banner`, `icona1`, `icona2`, `icona3`, `icona4`, `icona5`, `image1`, `image2`, `image3`, `image4`, `image5`, `categoria1`, `intro1`, `categoria2`, `intro2`, `categoria3`, `intro3`, `categoria4`, `intro4`, `categoria5`, `intro5`) VALUES
('Assistenza', 'img/assistenza/banner_assistenza.jpg', 'Assistenza e supporto tecnico a portata di click', 'glyphicons-phone-alt', 'glyphicons-credit-card', 'glyphicons-cogwheels', 'glyphicons-imac', 'glyphicons-pen', 'img/assistenza/gestione_linea.jpg', 'img/assistenza/controllo_costi.jpg', 'img/assistenza/supporto_tecnico.jpg', 'img/assistenza/contenuti_smart_life.jpg', '', 'Gestione Linea e Servizi', 'Assistenza per la tua linea fissa e i servizi a tua disposizione', 'Controllo Costi e Pagamenti', 'Controlla i Costi e verifica i Pagamenti che hai effettuato', 'Supporto Tecnico e Configurazioni', 'Hai bisogno di Supporto Tecnico? Ti serve una mano nella configurazione di un nostro dispositivo? Questa sezione fa al caso tuo', 'Contenuti e Smart Life', 'Ti serve Assistenza o hai bisogno di maggiori informazioni sui nostri Contenuti e sui nostri Servizi Smart Life? Questa sezione fa al caso tuo', 'In Evidenza', 'Non hai trovato quello che cerchi? Vai alla sezione In Evidenza'),
('Prodotti', 'img/prodotti/banner_prodotti.jpg', 'Smartphone, Tablet, Telefoni per la casa anche a rate sul conto TIM', 'glyphicon-phone', 'glyphicon-folder-close', 'glyphicon-hdd', 'glyphicon-film', 'glyphicon-tags', 'img/prodotti/smartphone_telefoni.jpg', 'img/prodotti/tablet_computer.jpeg', 'img/prodotti/modem_networking.jpg', 'img/prodotti/tv_smart_living.jpg', 'img/prodotti/outlet.png', 'Smartphone e Telefoni', 'Telefoni fissi sia tradizionali che cordless e Cellulari e Smartphone', 'Tablet e Computer', 'Tablet, Computer ed Accessori', 'Modem e Networking', 'Tutto quello che ti serve per navigare in Internet', 'TV e Smart Living', 'Scopri le nostre offerte TV e tutti i servizi Smart Living che ti semplificheranno la vita', 'Outlet', 'Ottimi prodotti ad ottimi prezzi'),
('Smart Life', 'img/smart_life/banner_smartLife.jpg', 'Scopri Serie TV, Wereables, Servizi e Dispositivi intelligenti che semplificheranno la tua vita', '', '', '', '', '', 'img/smart_life/tv.jpg', 'img/smart_life/salute_benessere.jpg', 'img/smart_life/casa_famiglia.jpg', 'img/smart_life/servizi_persona.jpg', '', 'TV', 'I migliori Film, le migliori Serie TV e la Serie A di Calcio', 'Salute e Benessere', 'Prova gli ultimi Wereables. Scopri come salute e benessere possano cambiare in meglio la tua vita. Libera la tua voglia di movimento. Condividi con gli amici i tuoi risultati', 'Casa e Famiglia', 'Smart Life vuol dire anche avere una maggiormente semplice e sicura. Anche per la tua casa e per i tuoi cari', 'Servizi alla Persona', 'Un nuovo approccio al mondo dell''e-payment e della identit&agrave; digitale. Potrai gestire con semplicit&agrave; e in tutta sicurezza i tuoi pagamenti digitali, il tuo archivio personale, custodire la tua password', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `sl_in_promozione`
--

CREATE TABLE `sl_in_promozione` (
  `id` int(11) NOT NULL,
  `nome_sl` varchar(50) NOT NULL,
  `descrizione_offerta` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sl_in_promozione`
--

INSERT INTO `sl_in_promozione` (`id`, `nome_sl`, `descrizione_offerta`) VALUES
(1, 'TIMvision', 'Se ti abboni entro il 30/08/2016, il primo mese &egrave; gratis e poi ti basteranno solo 5&euro;/mese.');

-- --------------------------------------------------------

--
-- Table structure for table `smart_life`
--

CREATE TABLE `smart_life` (
  `nome` varchar(80) NOT NULL,
  `categoria` varchar(50) NOT NULL,
  `image` varchar(200) NOT NULL,
  `intro` varchar(300) NOT NULL,
  `descrizione` varchar(2000) NOT NULL,
  `stringa_prezzo` varchar(200) NOT NULL,
  `contenuti` varchar(2000) NOT NULL,
  `regole` varchar(3000) NOT NULL,
  `image_descrizione` varchar(150) NOT NULL,
  `image_contenuti` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `smart_life`
--

INSERT INTO `smart_life` (`nome`, `categoria`, `image`, `intro`, `descrizione`, `stringa_prezzo`, `contenuti`, `regole`, `image_descrizione`, `image_contenuti`) VALUES
('TIMTag', 'Casa e Famiglia', 'img/smart_life/intro_TIM_Tag.jpg', 'Traccia e rintraccia il tuo amico a 4 zampe e tutte le cose che ami', 'TIMTag &egrave; il dispositivo che ti informa sulla posizione del tuo amico a quattro zampe e delle cose a te pi&ugrave; care.\r\nSegui in tempo reale i suoi spostamenti sul tuo smartphone senza perderlo mai di vista.\r\nCon TIMTag hai un dispositivo di localizzazione GPS di ultima generazione, con 12 mesi di servizio TIMTag e una TIM Card inclusi e un'' App dedicata intuitiva e semplice da utilizzare!', 'Acquista il servizio TIMTag a 5&euro;/mese', 'Se lo ami mettigli un TAG.\r\nGESTISCI TUTTO TRAMITE UN''UNICA APP', '&lt;p id=&quot;regole&quot;&gt;Per usare TIMTag devi seguire 3 semplici passi:&lt;br&gt;&lt;ol&gt;&lt;li&gt;', 'img/smart_life/TIMTag.png', 'img/smart_life/cane.jpg'),
('TIMvision', 'TV', 'img/smart_life/intro_TIMvision.png', 'Cartoni, Cinema, Serie TV, Documentari e Concerti sempre on demand per creare il tuo palinsesto senza spot pubblicitari. Oltre 8000 titoli in un solo abbonamento, senza vincoli di durata, anche in HD', 'Cartoni, Cinema Serie TV, Documentari e Concerti sempre on demand per creare il tuo palinsesto senza pubblicit&agrave;. Pi&ugrave; di 8.000 titoli in un abbonamento, senza vincoli di durata, anche in HD', 'Acquista un Prodotto TIMvision e abbonati per 5&euro;/mese', 'Accomodati e goditi il grande cinema. Una ricca proposta di film con le anteprime pi&ugrave; attese, i grandi classici, inediti, film d''azione, thriller, animazione e commedie per tutta la famiglia. In pi&ugrave; l''HD, per rendere ogni immagine spettacolare e non perdere neanche un particolare', '&lt;p id=&quot;regole&quot;&gt;Abbonati a TIMvision per goderti un grande spettacolo. Puoi vedere oltre 8.000 titoli tra cartoni, cinema, serie TV, documentari e gli ultimi 7 giorni di LA7 e LA7d. Se ti abboni entro il 30/08/2016, il primo mese &egrave; gratis e poi ti basteranno solo 5&euro;/mese.&lt;br&gt;&lt;span&gt;Per usufruire di TIMvision devi essere gi&agrave; un nostro cliente con ADSL Telecom.&lt;/span&gt;&lt;/p&gt;', 'img/smart_life/TIMvision.png', 'img/smart_life/cinema.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assistenza`
--
ALTER TABLE `assistenza`
  ADD PRIMARY KEY (`nome`);

--
-- Indexes for table `banner_prodotti`
--
ALTER TABLE `banner_prodotti`
  ADD PRIMARY KEY (`categoria_prodotti`);

--
-- Indexes for table `device`
--
ALTER TABLE `device`
  ADD PRIMARY KEY (`id_device`);

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`id_faq`);

--
-- Indexes for table `filtro`
--
ALTER TABLE `filtro`
  ADD PRIMARY KEY (`categoria_device`);

--
-- Indexes for table `for_device1sl`
--
ALTER TABLE `for_device1sl`
  ADD PRIMARY KEY (`id_for_dev1sl`);

--
-- Indexes for table `for_device_2as`
--
ALTER TABLE `for_device_2as`
  ADD PRIMARY KEY (`id_for_dev2as`);

--
-- Indexes for table `gruppo`
--
ALTER TABLE `gruppo`
  ADD PRIMARY KEY (`nome`);

--
-- Indexes for table `sl_in_promozione`
--
ALTER TABLE `sl_in_promozione`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `smart_life`
--
ALTER TABLE `smart_life`
  ADD PRIMARY KEY (`nome`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `device`
--
ALTER TABLE `device`
  MODIFY `id_device` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
  MODIFY `id_faq` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `for_device1sl`
--
ALTER TABLE `for_device1sl`
  MODIFY `id_for_dev1sl` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `for_device_2as`
--
ALTER TABLE `for_device_2as`
  MODIFY `id_for_dev2as` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `sl_in_promozione`
--
ALTER TABLE `sl_in_promozione`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
