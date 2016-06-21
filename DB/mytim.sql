-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2016 at 02:46 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mytim`
--

CREATE DATABASE mytim;

USE mytim;

-- --------------------------------------------------------

--
-- Table structure for table `assistenza`
--

CREATE TABLE `assistenza` (
  `nome` varchar(80) NOT NULL,
  `categoria` varchar(50) NOT NULL,
  `image` varchar(200) NOT NULL,
  `descrizione` varchar(3000) NOT NULL,
  `intro_device` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assistenza`
--

INSERT INTO `assistenza` (`nome`, `categoria`, `image`, `descrizione`, `intro_device`) VALUES
('Mobile', 'Gestione Linea e Servizi', '', '&lt;h3&gt;La tua SIM&lt;/h3&gt;&lt;br&gt;&lt;p&gt;Tutto ci&ograve; che devi sapere per gestire al meglio la tua SIM:&lt;/p&gt;&lt;br&gt;&lt;ul&gt;&lt;li&gt;I codici PIN e PUK: il PIN (Personal Identity Number) &egrave; un codice numerico di 4 cifre che ti consente, se regolarmente impostato, di proteggere il telefonino da utilizzi illeciti. Viene infatti richiesto dal telefonino al momento dell&rsquo;accensione; il codice PIN &egrave; personalizzabile. Il PUK (Personal Unblocking Key) &egrave; un codice di sblocco fisso e non modificabile che serve per sbloccare la SIM a seguito dell''errata digitazione del codice PIN per 3 volte di seguito.&lt;/li&gt;&lt;li&gt;Cosa fare in caso di furto o smarrimento: dovrai tempestivamente bloccare la linea relativa alla SIM presente al suo interno.\r\nSe sei un cliente ricaricabile e sei gi&agrave; registrato alla sezione MyTIM Mobile puoi bloccare la linea direttamente online. Se non sei registrato alla sezione MyTIM Mobile o se sei un cliente in abbonamento dovrai contattare il Servizio Clienti 119. Previa identificazione e verifica della titolarit&agrave; del numero (attraverso la comunicazione di nome, cognome, codice fiscale,...) verr&agrave; immediatamente bloccata la linea al traffico telefonico.&lt;/li&gt;&lt;li&gt;Sostituzione della tua SIM: l&rsquo;operazione di sostituzione SIM ti consente di cambiare la tua SIM e conservare il tuo numero telefonico (sia per clienti ricaricabili che in abbonamento).&lt;/li&gt;&lt;/ul&gt;', '&lt;h3&gt;Dispositivi Mobile a Rate&lt;/h3&gt;&lt;br&gt;&lt;p&gt;Offriamo un comodo servizio di pagamento a Rate per i Dispositivi Mobile. Clicca il link in basso per vedere i modelli disponibili&lt;/p&gt;'),
('TIMvision', 'Contenuti e Smart Life', '', '&lt;h3&gt;TIMvision&lt;/h3&gt;&lt;br&gt;&lt;p&gt;TIMvision &egrave; la nuova risposta alle esigenze di intrattenimento per tutta la famiglia. E&rsquo; la TV interamente on demand di TIM che tramite una connessione ADSL Illimitata o Fibra ti permette di godere di migliaia di titoli: il grande cinema, le serie TV pi&ugrave; appassionanti, i cartoni animati pi&ugrave; amati e tanto altro ancora come documentari, reportage e musica.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;/p&gt;&lt;p&gt;I clienti TIMvision possono accedere a:&lt;/p&gt;&lt;ul&gt;	&lt;li&gt;TIMvision TV&lt;/li&gt;	&lt;li&gt;Videostore&lt;/li&gt;	&lt;li&gt;Free&lt;/li&gt;	&lt;li&gt;Replay TV&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;L''abbonamento TIMvision ti permette di guardare tutti i contenuti su&amp;nbsp;PC,&amp;nbsp;Smart&amp;nbsp;TV o&amp;nbsp;TV con&amp;nbsp;Decoder, tablet e smartphone senza consumare Giga, quando e dove vuoi.&lt;/p&gt;', '&lt;h3&gt;Dispositivi per usare TIMvision&lt;/h3&gt;&lt;br&gt;&lt;p&gt;Oltre al Decoder TIMvision, nella sezione Prodotti puoi trovare anche il Televisore che fa per te.&lt;/p&gt;');

-- --------------------------------------------------------

--
-- Table structure for table `banner_prodotti`
--

CREATE TABLE `banner_prodotti` (
  `id` int(11) NOT NULL,
  `banner` varchar(200) NOT NULL,
  `intro` varchar(200) NOT NULL,
  `categoria` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `caratteristiche` varchar(500) NOT NULL,
  `prezzo` float NOT NULL,
  `rate` float DEFAULT NULL,
  `vecchio_prezzo` float DEFAULT NULL,
  `descrizione` varchar(3000) NOT NULL,
  `specifiche` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `device`
--

INSERT INTO `device` (`id_device`, `categoria`, `filtro`, `marca`, `nome`, `image`, `caratteristiche`, `prezzo`, `rate`, `vecchio_prezzo`, `descrizione`, `specifiche`) VALUES
(1, 'TV e Smart Living', 'Decoder', 'Decoder', 'TIMvision', 'img/devices/decoder_timvision.jpg', 'Migliaia di titoli tra cartoni, film, serie e documentari.', 49, NULL, NULL, '&lt;p&gt;Con il&lt;strong&gt; decoder TIMvision hai a disposizione pi&ugrave; di 8.000 titoli tra cartoni, film, serie e documentari sempre on demand &lt;/strong&gt;per creare il tuo palinsesto senza interruzioni pubblicitarie.&lt;/p&gt;&lt;p&gt;Tramite il telecomando puoi mettere in pausa il tuo film preferito e farlo ripartire quando decidi tu, puoi rivedere una scena o andare avanti.&lt;/p&gt;&lt;p&gt;Collega il decoder alla tua linea ADSL Illimitata o Fibra Ottica di TIM per accedere:&lt;/p&gt;&lt;ul&gt;&lt;li&gt;al&lt;strong&gt; Videostore &lt;/strong&gt;di TIMvision, dove ti aspettano tutti gli episodi delle migliori serie, dalle pi&ugrave; famose alle pi&ugrave; esclusive, i cartoni animati e le serie preferite per bambini e ragazzi, le anteprime pi&ugrave; attese e tanti film mai visti in tv o da rivedere in lingua originale. Scegli tra oltre 6.000 titoli sempre aggiornati.&lt;/li&gt;&lt;li&gt;alla &lt;strong&gt;Replay TV &lt;/strong&gt;di TIMvision, dove trovi tutti i programmi televisivi andati in onda negli ultimi 7 giorni sulle reti RAI (da tutti i dispositivi escluso streaming da web)&amp;nbsp;e LA7 e l&#039;archivio LA7&lt;/li&gt;&lt;li&gt;a &lt;strong&gt;YouTube&lt;/strong&gt;, per vedere i video che vuoi direttamente dalla tua TV&lt;/li&gt;&lt;/ul&gt;', '&lt;div class=&quot;cont-table&quot;&gt;\r\n	    &lt;div class=&quot;cont-row&quot;&gt;\r\n            &lt;p&gt;\r\n			&lt;/p&gt;\r\n	    &lt;/div&gt;\r\n	    &lt;div class=&quot;cont-divisori&quot;&gt;&lt;/div&gt;\r\n	    &lt;div class=&quot;cont-row&quot;&gt;\r\n		        &lt;div class=&quot;col-sm-3&quot;&gt;\r\n		            &lt;p&gt;&lt;strong&gt;Dimensioni (LxPxA)&lt;/strong&gt;&lt;/p&gt;\r\n		        &lt;/div&gt;\r\n		        &lt;div class=&quot;col-sm-9&quot;&gt;\r\n		            &lt;p&gt;\r\n								210 mm x 210 mm x 40 mm\r\n		            &lt;/p&gt;\r\n		        &lt;/div&gt;\r\n		        &lt;br clear=&quot;all&quot;/&gt;\r\n		        &lt;div class=&quot;col-sm-3&quot;&gt;\r\n		            &lt;p&gt;&lt;strong&gt;Confezione&lt;/strong&gt;&lt;/p&gt;\r\n		        &lt;/div&gt;\r\n		        &lt;div class=&quot;col-sm-9&quot;&gt;\r\n		            &lt;p&gt;\r\n								Decoder - Cavo alimentazione - Cavo HDMI - Telecomando universale - Batterie - Guida rapida all&#039;installazione\r\n		            &lt;/p&gt;\r\n		        &lt;/div&gt;\r\n		        &lt;br clear=&quot;all&quot;/&gt;\r\n		        &lt;div class=&quot;col-sm-3&quot;&gt;\r\n		            &lt;p&gt;&lt;strong&gt;Processore&lt;/strong&gt;&lt;/p&gt;\r\n		        &lt;/div&gt;\r\n		        &lt;div class=&quot;col-sm-9&quot;&gt;\r\n		            &lt;p&gt;\r\n								Processore Intel ATOM CE 4230\r\n		            &lt;/p&gt;\r\n		        &lt;/div&gt;\r\n		        &lt;br clear=&quot;all&quot;/&gt;\r\n		        &lt;div class=&quot;col-sm-3&quot;&gt;\r\n		            &lt;p&gt;&lt;strong&gt;Memoria&lt;/strong&gt;&lt;/p&gt;\r\n		        &lt;/div&gt;\r\n		        &lt;div class=&quot;col-sm-9&quot;&gt;\r\n		            &lt;p&gt;\r\n								Ram 1 GByte DDR3\r\n		            &lt;/p&gt;\r\n		        &lt;/div&gt;\r\n		        &lt;br clear=&quot;all&quot;/&gt;\r\n		        &lt;div class=&quot;col-sm-3&quot;&gt;\r\n		            &lt;p&gt;&lt;strong&gt;Connettivita&lt;/strong&gt;&lt;/p&gt;\r\n		        &lt;/div&gt;\r\n		        &lt;div class=&quot;col-sm-9&quot;&gt;\r\n		            &lt;p&gt;\r\n								HDMI 1.3 - Video Composito - Uscita audio ottica digitale - Ethernet 10/100 BASE-T - 1 x USB 2.0 - Connessione Wireless 802.11 b/g/n (2.4GHz e 5GHz) - Ricevitore IR integrato per telecomando TIMvision\r\n		            &lt;/p&gt;\r\n		        &lt;/div&gt;\r\n		        &lt;br clear=&quot;all&quot;/&gt;\r\n		        &lt;div class=&quot;col-sm-3&quot;&gt;\r\n		            &lt;p&gt;&lt;strong&gt;Formati supportati&lt;/strong&gt;&lt;/p&gt;\r\n		        &lt;/div&gt;\r\n		        &lt;div class=&quot;col-sm-9&quot;&gt;\r\n		            &lt;p&gt;\r\n								&lt;p&gt;Audio: MPEG-1 Layer I, II 2.0 - MPEG-1 Layer 3 (mp3) 2.0 - MPEG-4 AA-LC 2.0 - MPEG-4 AAC-LC 5.1 - MPEG-4 HE-AAC 5.1 - MPEG-4 BSAC 2.0 - LPCM 7.1 - WMA9 2.0 - WMA9 Pro 5.1&lt;/p&gt;&lt;p&gt;Video: MPEG-1 - MPEG-2 - MPEG-2@HL - MPEG-4.2 ASP@L5 (720p) - MPEG-4.10 (H.264) BP@L3 MP4@L4.0 e HIP@L4.0 - WMV9 MP@HL - SMPTE421 (VC-1) MP@HL Fotografici: JPEG - BMP - GIF - TIFF - PNG&lt;/p&gt;\r\n		            &lt;/p&gt;\r\n		        &lt;/div&gt;\r\n		        &lt;br clear=&quot;all&quot;/&gt;\r\n		        &lt;div class=&quot;col-sm-3&quot;&gt;\r\n		            &lt;p&gt;&lt;strong&gt;Impostazione intuitiva&lt;/strong&gt;&lt;/p&gt;\r\n		        &lt;/div&gt;\r\n		        &lt;div class=&quot;col-sm-9&quot;&gt;\r\n		            &lt;p&gt;\r\n								&lt;p&gt;Collegamento al televisore: Il Decoder TIMvision pu&ograve; essere collegato al televisore mediante il cavo HDMI oppure mediante cavo analogico RCA-SCART (inclusi nella confezione)&lt;/p&gt;&lt;p&gt;Collegamento alla rete ADSL: Il Decoder TIMvision pu&ograve; essere collegato alla rete mediante cavo Ethernet o mediante connessione Wi-Fi. Alla prima accensione una procedura guidata ti assister&agrave; nella prima configurazione della tua connessione&lt;/p&gt;\r\n		            &lt;/p&gt;\r\n		        &lt;/div&gt;\r\n		        &lt;br clear=&quot;all&quot;/&gt;\r\n		        &lt;div class=&quot;col-sm-3&quot;&gt;\r\n		            &lt;p&gt;&lt;strong&gt;Modalit&agrave; Video PAL&lt;/strong&gt;&lt;/p&gt;\r\n		        &lt;/div&gt;\r\n		        &lt;div class=&quot;col-sm-9&quot;&gt;\r\n		            &lt;p&gt;\r\n								576p - 720p - 1080i - 1080p\r\n		            &lt;/p&gt;\r\n		        &lt;/div&gt;\r\n		        &lt;br clear=&quot;all&quot;/&gt;\r\n	    &lt;/div&gt;\r\n	&lt;/div&gt;'),
(2, 'Smartphone e Telefoni', 'Smartphone', 'LG', 'G5', 'img/devices/LG_G5.jpg', '&lt;ul&gt;&lt;li&gt;Sistema Operativo Android 6.0&lt;/li&gt;&lt;li&gt;Display 5.3&rdquo;&lt;/li&gt;', 699.9, 20, NULL, '&lt;h4&gt;LG G5&lt;/h4&gt;&lt;p&gt;Il nuovo LG G5 &egrave; uno nuovo tipo di smartphone che supera tutti i limiti, con un design modulare completamete in metallo che rivoluziona i canoni di design. Espandi le funzioni, interagisci con gli innovativi LG Friends e prova un''esperienza smartphone realmente innovativa. La rivoluzione di G5 continua con la doppia fotocamera grandangolare, che cattura pi&ugrave; di quanto i tuoi occhi riescano a vedere. Anche sotto il sole, perch&eacute; il nuovo display IPS Quantum &egrave; pi&ugrave; ricco, luminoso e colorato anche sotto la luce diretta del sole. E ti mostra sempre le notifiche principali anche quando non &egrave; attivo. Nuovo LG G5: quello che non ti aspetti, nel palmo della tua mano.&lt;p&gt;&lt;h4&gt;COMPLETAMENTE IN METALLO&lt;/h4&gt;&lt;p&gt;Bellezza e raffinatezza nel palmo della tua mano. Cerchi da sempre la cura nei dettagli e l''eleganza dei materiali, ed eccoli qui. Il metallo e il vetro si uniscono morbidamente in una forma semplicemente iconica. Che ti d&agrave; sensazioni tutte da provare.&lt;/p&gt;&lt;h4&gt;DESIGN MODULARE&lt;/h4&gt;&lt;p&gt;Liberati dalle convenzioni. Il nuovo design modulare con batteria a slitta ti permettere di avere tutto quello che gli altri non hanno mai saputo darti. La libert&agrave; di avere uno smartphone in metallo e di poter cambiare la batteria quando desideri. E di espandere le funzioni con nuovi moduli.&lt;/p&gt;&lt;h4&gt;DOPPIA FOTOCAMERA CON LENTI GRANDANGOLARI&lt;/h4&gt;&lt;p&gt;Cattura tutto ci&ograve; che vedi! I nostri occhi vedono pi&ugrave; di quanto una fotocamera convenzionale riesca a catturare. Ma con LG G5 puoi fare anche di pi&ugrave;, perch&eacute; ha due fotocamere. Con la prima cogli tutti i dettagli. Con la lente grandangolare a 135&deg; della seconda, invece, catturi perfino pi&ugrave; di quanto vedono i tuoi occhi. Grattacieli, un concerto o l''intera spiaggia dove ti trovi vivranno nitidi sul tuo nuovo G5&lt;p&gt;&lt;h4&gt;LUMINOSIT&Agrave; ESTREMA&lt;/h4&gt;&lt;p&gt;Ecco uno schermo davvero intelligente. Che riconosce quando sei sotto la luce diretta del sole per offrirti una leggibilit&agrave; sempre ottimale. Il nuovo display IPS Quantum &egrave; pi&ugrave; luminoso, pi&ugrave; colorato e pi&ugrave; chiaro anche in pieno sole.&lt;/p&gt;', '&lt;div class=&quot;cont-table&quot;&gt;\r\n	    &lt;div class=&quot;cont-row&quot;&gt;\r\n            &lt;p&gt;\r\n						Sistema Operativo Android  6.0&lt;br/&gt;Display 5.3&rdquo;&lt;br/&gt;Processore Snapdragon&trade; 820 QuadCore 2.15 GHz - 4G LTE&lt;br/&gt;\r\n			&lt;/p&gt;\r\n	    &lt;/div&gt;\r\n	    &lt;div class=&quot;cont-divisori&quot;&gt;&lt;/div&gt;\r\n	    &lt;div class=&quot;cont-row&quot;&gt;\r\n		        &lt;div class=&quot;col-sm-3&quot;&gt;\r\n		            &lt;p&gt;&lt;strong&gt;Tecnologia&lt;/strong&gt;&lt;/p&gt;\r\n		        &lt;/div&gt;\r\n		        &lt;div class=&quot;col-sm-9&quot;&gt;\r\n		            &lt;p&gt;\r\n								&lt;p&gt;4G cat.6/HSDPA42/UMTS/EDGE/GPRS  ?Frequenze 850/900/1800/1900/2100&lt;/p&gt;\r\n		            &lt;/p&gt;\r\n		        &lt;/div&gt;\r\n		        &lt;br clear=&quot;all&quot;/&gt;\r\n		        &lt;div class=&quot;col-sm-3&quot;&gt;\r\n		            &lt;p&gt;&lt;strong&gt;Connettivita&lt;/strong&gt;&lt;/p&gt;\r\n		        &lt;/div&gt;\r\n		        &lt;div class=&quot;col-sm-9&quot;&gt;\r\n		            &lt;p&gt;\r\n								&lt;p&gt;&lt;span class=&quot;s1&quot;&gt;Wi-Fi - Bluetooth &ndash; Infrarosso - USB tipo C &ndash; NFC&lt;/span&gt;&lt;/p&gt;\r\n		            &lt;/p&gt;\r\n		        &lt;/div&gt;\r\n		        &lt;br clear=&quot;all&quot;/&gt;\r\n		        &lt;div class=&quot;col-sm-3&quot;&gt;\r\n		            &lt;p&gt;&lt;strong&gt;GPS&lt;/strong&gt;&lt;/p&gt;\r\n		        &lt;/div&gt;\r\n		        &lt;div class=&quot;col-sm-9&quot;&gt;\r\n		            &lt;p&gt;\r\n								&lt;p&gt;Integrato&lt;/p&gt;\r\n		            &lt;/p&gt;\r\n		        &lt;/div&gt;\r\n		        &lt;br clear=&quot;all&quot;/&gt;\r\n		        &lt;div class=&quot;col-sm-3&quot;&gt;\r\n		            &lt;p&gt;&lt;strong&gt;Display&lt;/strong&gt;&lt;/p&gt;\r\n		        &lt;/div&gt;\r\n		        &lt;div class=&quot;col-sm-9&quot;&gt;\r\n		            &lt;p&gt;\r\n								&lt;p&gt;5.3&rdquo; 16 Milioni colori Touch&lt;/p&gt;\r\n		            &lt;/p&gt;\r\n		        &lt;/div&gt;\r\n		        &lt;br clear=&quot;all&quot;/&gt;\r\n		        &lt;div class=&quot;col-sm-3&quot;&gt;\r\n		            &lt;p&gt;&lt;strong&gt;Fotocamera&lt;/strong&gt;&lt;/p&gt;\r\n		        &lt;/div&gt;\r\n		        &lt;div class=&quot;col-sm-9&quot;&gt;\r\n		            &lt;p&gt;\r\n								&lt;p&gt;2 Fotocamere Posteriori da 16 Mpxl con flash e Fotocamera frontale 8 Mpx&lt;/p&gt;\r\n		            &lt;/p&gt;\r\n		        &lt;/div&gt;\r\n		        &lt;br clear=&quot;all&quot;/&gt;\r\n		        &lt;div class=&quot;col-sm-3&quot;&gt;\r\n		            &lt;p&gt;&lt;strong&gt;Memoria Interna&lt;/strong&gt;&lt;/p&gt;\r\n		        &lt;/div&gt;\r\n		        &lt;div class=&quot;col-sm-9&quot;&gt;\r\n		            &lt;p&gt;\r\n								&lt;p&gt;32GB&lt;/p&gt;&lt;p&gt;Slot Memory Card Micro SD fino a 2TB&lt;p&gt;\r\n		            &lt;/p&gt;\r\n		        &lt;/div&gt;\r\n		        &lt;br clear=&quot;all&quot;/&gt;\r\n		        &lt;div class=&quot;col-sm-3&quot;&gt;\r\n		            &lt;p&gt;&lt;strong&gt;Processore&lt;/strong&gt;&lt;/p&gt;\r\n		        &lt;/div&gt;\r\n		        &lt;div class=&quot;col-sm-9&quot;&gt;\r\n		            &lt;p&gt;\r\n								&lt;p&gt; Processore Snapdragon&trade; 820 QuadCore 2.15 GHz - 4G LTE&lt;/p&gt;\r\n		            &lt;/p&gt;\r\n		        &lt;/div&gt;\r\n		        &lt;br clear=&quot;all&quot;/&gt;\r\n		        &lt;div class=&quot;col-sm-3&quot;&gt;\r\n		            &lt;p&gt;&lt;strong&gt;Formato SIM&lt;/strong&gt;&lt;/p&gt;\r\n		        &lt;/div&gt;\r\n		        &lt;div class=&quot;col-sm-9&quot;&gt;\r\n		            &lt;p&gt;\r\n								&lt;p&gt;Nano&lt;/p&gt;\r\n		            &lt;/p&gt;\r\n		        &lt;/div&gt;\r\n		        &lt;br clear=&quot;all&quot;/&gt;\r\n		        &lt;div class=&quot;col-sm-3&quot;&gt;\r\n		            &lt;p&gt;&lt;strong&gt;Video&lt;/strong&gt;&lt;/p&gt;\r\n		        &lt;/div&gt;\r\n		        &lt;div class=&quot;col-sm-9&quot;&gt;\r\n		            &lt;p&gt;\r\n								&lt;p&gt;Video Recorder&amp;Playback&lt;/p&gt;\r\n		            &lt;/p&gt;\r\n		        &lt;/div&gt;\r\n		        &lt;br clear=&quot;all&quot;/&gt;\r\n		        &lt;div class=&quot;col-sm-3&quot;&gt;\r\n		            &lt;p&gt;&lt;strong&gt;Musica&lt;/strong&gt;&lt;/p&gt;\r\n		        &lt;/div&gt;\r\n		        &lt;div class=&quot;col-sm-9&quot;&gt;\r\n		            &lt;p&gt;\r\n								&lt;p&gt;MP3 Player&lt;/p&gt;\r\n		            &lt;/p&gt;\r\n		        &lt;/div&gt;\r\n		        &lt;br clear=&quot;all&quot;/&gt;\r\n		        &lt;div class=&quot;col-sm-3&quot;&gt;\r\n		            &lt;p&gt;&lt;strong&gt;In dotazione&lt;/strong&gt;&lt;/p&gt;\r\n		        &lt;/div&gt;\r\n		        &lt;div class=&quot;col-sm-9&quot;&gt;\r\n		            &lt;p&gt;\r\n								&lt;ul&gt;&lt;li class=&quot;li1&quot;&gt;&lt;span class=&quot;s2&quot;&gt;Caricabatteria&lt;/span&gt;&lt;/li&gt;&lt;li class=&quot;li1&quot;&gt;&lt;span class=&quot;s2&quot;&gt;Cavo dati USB tipo C&lt;/span&gt;&lt;/li&gt;&lt;li class=&quot;li1&quot;&gt;&lt;span class=&quot;s2&quot;&gt;Auricolare stereo&lt;/span&gt;&lt;/li&gt;&lt;li class=&quot;li1&quot;&gt;&lt;span class=&quot;s2&quot;&gt;Manuale d&rsquo;uso rapido&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;\r\n		    '),
(3, 'Smartphone e Telefoni', 'Smartphone', 'Huawei', 'P9', 'img/devices/huawei_p9.jpg', '&lt;ul&gt;&lt;li&gt;Sistema Operativo Android 6.0&lt;/li&gt;&lt;li&gt;Display IPS Full HD da 5.2&rsquo;&rsquo;&lt;/li&gt;&lt;li&gt;Doppia Fotocamera Leica da 12 Mpxl Dual Flash + anteriore da 8 Mpxl&lt;/li&gt;&lt;li&gt;Processore Kirin 955 - Octa-Core (4x2,5 GHz + 4x1,8 GHz)&lt;/li&gt;&lt;/ul&gt;', 399.9, NULL, 599.9, '&lt;h4&gt;PREMIUM. ELEGANT. STYLISH. &lt;p&gt;&lt;p&gt;Huawei P9 presenta un design con linee dal forte impatto visivo, caratterizzate da spigoli tagliati a diamante e arrotondati a regola d&rsquo;arte. Lo smartphone ha una struttura unibody in alluminio aerospaziale e vetro 2.5D di categoria superiore, ed &egrave; disponibile in due varianti cromatiche: Titanium Grey e Mystic Silver.&lt;/p&gt;&lt;h4&gt;DISPLAY LUMINOSO E DAI COLORI INTENSI&lt;/h4&gt;&lt;p&gt;Con una resa cromatica del 96%, il sensazionale display IPS Full HD da 5,2&quot; porta alla scoperta di un mondo ricco di colori intensi e ancora pi&ugrave; naturali.&lt;/p&gt;&lt;h4&gt;UN INNOVATIVO SISTEMA CON DOPPIA FOTOCAMERA, UNA COLLABORAZIONE UNICA&lt;/h4&gt;&lt;p&gt;La collaborazione tra Huawei e Leica ha dato vita a uno smartphone con doppia fotocamera. Il risultato: maggiore luminosit&agrave; e nitidezza per foto e video sensazionali.&lt;/p&gt;&lt;h4&gt;INNOVATIVO SISTEMA CON DOPPIA FOTOCAMERA &lt;/h4&gt;&lt;p&gt; Huawei P9 &egrave; in grado di catturare immagini dai colori luminosi e garantire al contempo una resa in bianco e nero straordinaria; il tutto con lo stile senza tempo di Leica.La tecnologia con doppia fotocamera di Huawei P9 consente di catturare una maggiore quantit&agrave; di luce, combinando al meglio la qualit&agrave; del colore acquisito dal sensore RGB con i dettagli ottenuti dal sensore in bianco e nero. Il tutto per garantire il massimo risultato ad ogni scatto.&lt;/p&gt;', '&lt;div class=&quot;cont-table&quot;&gt;\r\n	    &lt;div class=&quot;cont-row&quot;&gt;\r\n            &lt;p&gt;\r\n						&lt;p&gt;Sistema Operativo Android 6.0&lt;br&gt;Processore Kirin 955 - Octa-Core (4x2,5 GHz + 4x1,8 GHz)&lt;br&gt;Display IPS Full HD da 5.2&rsquo;&rsquo;&lt;br&gt;Doppia Fotocamera Leica da 12 Mpxl Dual Flash + anteriore da 8 Mpxl&lt;/p&gt;\r\n			&lt;/p&gt;\r\n	    &lt;/div&gt;\r\n	    &lt;div class=&quot;cont-divisori&quot;&gt;&lt;/div&gt;\r\n	    &lt;div class=&quot;cont-row&quot;&gt;\r\n		        &lt;div class=&quot;col-sm-3&quot;&gt;\r\n		            &lt;p&gt;&lt;strong&gt;Tecnologia&lt;/strong&gt;&lt;/p&gt;\r\n		        &lt;/div&gt;\r\n		        &lt;div class=&quot;col-sm-9&quot;&gt;\r\n		            &lt;p&gt;\r\n								&lt;p&gt;Abilitato tecnologia 4GPlus/4G/HSDPA 42/UMTS/EDGE/GPRS Frequenze 850/900/1800/1900MHz&lt;/p&gt;\r\n		            &lt;/p&gt;\r\n		        &lt;/div&gt;\r\n		        &lt;br clear=&quot;all&quot;/&gt;\r\n		        &lt;div class=&quot;col-sm-3&quot;&gt;\r\n		            &lt;p&gt;&lt;strong&gt;Connettivita&lt;/strong&gt;&lt;/p&gt;\r\n		        &lt;/div&gt;\r\n		        &lt;div class=&quot;col-sm-9&quot;&gt;\r\n		            &lt;p&gt;\r\n								&lt;p&gt;4G cat.6/HSDPA42/UMTS/EDGE/GPRS Frequenze 850/900/1800/1900/2100 Wi-Fi a/b/g/n/ac dual band 2,4/5GHz con Wi-Fi Direct Bluetooth 4.2, BLE USB Type-C, NFC&lt;/p&gt;\r\n		            &lt;/p&gt;\r\n		        &lt;/div&gt;\r\n		        &lt;br clear=&quot;all&quot;/&gt;\r\n		        &lt;div class=&quot;col-sm-3&quot;&gt;\r\n		            &lt;p&gt;&lt;strong&gt;GPS&lt;/strong&gt;&lt;/p&gt;\r\n		        &lt;/div&gt;\r\n		        &lt;div class=&quot;col-sm-9&quot;&gt;\r\n		            &lt;p&gt;\r\n								&lt;p&gt;GPS Integrato&lt;/p&gt;\r\n		            &lt;/p&gt;\r\n		        &lt;/div&gt;\r\n		        &lt;br clear=&quot;all&quot;/&gt;\r\n		        &lt;div class=&quot;col-sm-3&quot;&gt;\r\n		            &lt;p&gt;&lt;strong&gt;Display&lt;/strong&gt;&lt;/p&gt;\r\n		        &lt;/div&gt;\r\n		        &lt;div class=&quot;col-sm-9&quot;&gt;\r\n		            &lt;p&gt;\r\n								&lt;p&gt;Display IPS Full HD da 5.2&rsquo;&rsquo;&lt;/p&gt;\r\n		            &lt;/p&gt;\r\n		        &lt;/div&gt;\r\n		        &lt;br clear=&quot;all&quot;/&gt;\r\n		        &lt;div class=&quot;col-sm-3&quot;&gt;\r\n		            &lt;p&gt;&lt;strong&gt;Fotocamera&lt;/strong&gt;&lt;/p&gt;\r\n		        &lt;/div&gt;\r\n		        &lt;div class=&quot;col-sm-9&quot;&gt;\r\n		            &lt;p&gt;\r\n								&lt;p&gt;Principale 12MP x 2, f/2.2 Leica BSI CMOS Flash dual-tone Frontale 8MP, f/2.4 &lt;/p&gt;\r\n		            &lt;/p&gt;\r\n		        &lt;/div&gt;\r\n		        &lt;br clear=&quot;all&quot;/&gt;\r\n		        &lt;div class=&quot;col-sm-3&quot;&gt;\r\n		            &lt;p&gt;&lt;strong&gt;Memoria Interna&lt;/strong&gt;&lt;/p&gt;\r\n		        &lt;/div&gt;\r\n		        &lt;div class=&quot;col-sm-9&quot;&gt;\r\n		            &lt;p&gt;\r\n								&lt;p&gt;32GB&lt;/p&gt;\r\n		            &lt;/p&gt;\r\n		        &lt;/div&gt;\r\n		        &lt;br clear=&quot;all&quot;/&gt;\r\n		        &lt;div class=&quot;col-sm-3&quot;&gt;\r\n		            &lt;p&gt;&lt;strong&gt;Processore&lt;/strong&gt;&lt;/p&gt;\r\n		        &lt;/div&gt;\r\n		        &lt;div class=&quot;col-sm-9&quot;&gt;\r\n		            &lt;p&gt;\r\n								&lt;p&gt;Processore Kirin 955 - Octa-Core (4x2,5 GHz + 4x1,8 GHz)&lt;/p&gt;\r\n		            &lt;/p&gt;\r\n		        &lt;/div&gt;\r\n		        &lt;br clear=&quot;all&quot;/&gt;\r\n		        &lt;div class=&quot;col-sm-3&quot;&gt;\r\n		            &lt;p&gt;&lt;strong&gt;In dotazione&lt;/strong&gt;&lt;/p&gt;\r\n		        &lt;/div&gt;\r\n		        &lt;div class=&quot;col-sm-9&quot;&gt;\r\n		            &lt;p&gt;\r\n								&lt;p&gt;Smartphone Auricolari stereo - Caricabatteria Cavo USB Type-C - Estrattore SIM Guida rapida &lt;/p&gt;\r\n		            &lt;/p&gt;\r\n		        &lt;/div&gt;\r\n		        &lt;br clear=&quot;all&quot;/&gt;\r\n		        &lt;div class=&quot;col-sm-3&quot;&gt;\r\n		            &lt;p&gt;&lt;strong&gt;Dimensioni&lt;/strong&gt;&lt;/p&gt;\r\n		        &lt;/div&gt;\r\n		        &lt;div class=&quot;col-sm-9&quot;&gt;\r\n		            &lt;p&gt;\r\n								&lt;p&gt;145 x 70,9 x 6,95 mm&lt;/p&gt;\r\n		            &lt;/p&gt;\r\n		        &lt;/div&gt;\r\n		        &lt;br clear=&quot;all&quot;/&gt;\r\n		        &lt;div class=&quot;col-sm-3&quot;&gt;\r\n		            &lt;p&gt;&lt;strong&gt;Peso&lt;/strong&gt;&lt;/p&gt;\r\n		        &lt;/div&gt;\r\n		        &lt;div class=&quot;col-sm-9&quot;&gt;\r\n		            &lt;p&gt;\r\n								&lt;p&gt;144 grammi&lt;/p&gt;\r\n		            &lt;/p&gt;\r\n		        &lt;/div&gt;\r\n		        &lt;br clear=&quot;all&quot;/&gt;\r\n		        &lt;div class=&quot;col-sm-3&quot;&gt;\r\n		            &lt;p&gt;&lt;strong&gt;Autonomia&lt;/strong&gt;&lt;/p&gt;\r\n		        &lt;/div&gt;\r\n		        &lt;div class=&quot;col-sm-9&quot;&gt;\r\n		            &lt;p&gt;\r\n								&lt;p&gt;Stand-by fino a 566 ore - Conversazione fino a 1980 min&lt;/p&gt;\r\n		            &lt;/p&gt;\r\n		        &lt;/div&gt;\r\n		        &lt;br clear=&quot;all&quot;/&gt;\r\n	    &lt;/div&gt;\r\n	&lt;/div&gt;');

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE `faq` (
  `id_faq` int(11) NOT NULL,
  `nome_assistenza` varchar(80) NOT NULL,
  `domanda` varchar(300) NOT NULL,
  `risposta` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faq`
--

INSERT INTO `faq` (`id_faq`, `nome_assistenza`, `domanda`, `risposta`) VALUES
(1, 'TIMvision', 'Cosa posso vedere con TIMvision?', 'Con TIMvision film, serie Tv, cartoni e molto altro, sempre on demand e senza interruzioni pubblicitarie.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;/p&gt;&lt;p&gt;In &lt;strong&gt;TIMvision TV&lt;/strong&gt; trovi oltre 6.000 titoli inclusi nell&rsquo;abbonamento: una ricca offerta di film di vario genere, le stagioni complete delle migliori serie TV, cartoni e programmi per ragazzi documentari, reportage e concerti.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;/p&gt;&lt;p&gt;Nella sezione FREE TV  trovi Replay TV, WEB TV e gli Archivi LA7 e MTV.&lt;/p&gt;&lt;p&gt;In Replay TV hai a disposizione tutta la programmazione della settimana precedente delle principali retie Rai (da tutti i dispositivi escluso streaming da web), La 7 e MTV.&lt;/p&gt;&lt;p&gt;Nella Web TV accedi ai titoli video del Web, distribuiti gratuitamente su Internet. I contenuti video sono organizzati in tante sezioni tematiche per una ricerca pi&ugrave; rapida e possono essere distribuiti in modalit&agrave; live e in differita.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;/p&gt;&lt;p&gt;Nella sezione &lt;strong&gt;Videostore&lt;/strong&gt;, puoi noleggiare per 48 ore o acquistare scegliendo tra un catalogo di oltre 2.500 titoli tra le migliori novit&agrave; cinematografiche, con comodo addebito in fattura della linea fissa TIM o con carta di credito. Nella sezione &lt;strong&gt;Videostore - I miei acquisti&lt;/strong&gt; si trovano tutti i titoli acquistati/noleggiati ancora disponibili per la visione.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;/p&gt;&lt;p&gt;Per i clienti TIMvision &egrave; previsto un grande film novit&agrave; in regalo ogni mese, anche in HD. Per scegliere il film in regalo, &egrave; sufficiente accedere alla sezione &ldquo;Promo per Te&rdquo; presente nel Videostore. La promo &egrave; valida fino al 30 Settembre 2015. Potrai noleggiare gratuitamente, un film, normalmente offerto a pagamento, tra i migliori selezionati dalla redazione di TIMvision e aggiornati ogni mese.'),
(2, 'TIMvision', 'Come ci si registra al servizio TIMvision?', '&lt;span&gt;La procedura di registrazione a TIMvision &egrave; necessaria per garantirti la sicurezza dell&rsquo;acquisto e la visione gratuita dei titoli fino a 6 dispositivi. &lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span&gt;Se hai collegato il decoder TIMvision alla linea ADSL/Fibra di casa via ethernet o via Wifi, segui le indicazioni a video e con pochi semplici passaggi avrai completato la registrazione. Una volta connesso il decoder alla rete, potrai configurare un account TIMvision (email e password) dalla sezione Profilo/Modifica Account. In tal modo potrai utilizzare le credenziali per accedere su altri dispositivi compatibili TIMvision e vedere i titoli inclusi nell&rsquo;abbonamento. Tali dati saranno sempre visualizzabili nella sezione Profilo/I Miei Dati&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span&gt;Se stai accedendo dalla tua Smart TV per completare la registrazione potrebbe esserti richiesto di&amp;nbsp;cliccare su un link inviato alla mail da te scelta. Ti consigliamo di farlo immediatamente per poter fruire quindi del servizio TIMvision nella sua completezza. Ricordati che la username (indirizzo email) e la password scelte dovranno essere inserite al primo accesso successivo sul tuo Smart TV per effettuare il login. Poi non ti saranno pi&ugrave; richieste, a meno che tu non esegua il logout. &lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span&gt;Se stai accedendo dal tuo tablet/smartphone o da timvision.it entra in REGISTRATI. Le credenziali scelte dovranno inoltre essere utilizzate per autenticarsi su tutti i dispositivi compatibili con TIMvision.&lt;/span&gt;'),
(3, 'Mobile', 'Dove posso trovare i codici PIN e PUK?', 'Ogni TIM Card o SIM in abbonamento viene venduta accompagnata da due codici di sicurezza, il PIN e il PUK. Puoi trovare i codici PIN e PUK sul retro del supporto di plastica, che ti viene consegnato al momento dell&rsquo;acquisto della tua SIM, sotto la striscia argentata. I codici PIN e PUK sono strettamente personali ed il Servizio Clienti 119 non potr&agrave; fornirteli in caso di perdita o dimenticanza.'),
(4, 'Mobile', 'Ho bloccato la mia SIM. Come posso sbloccarla?', '&lt;ul&gt;	&lt;li&gt;Se sei in possesso del PUK, la procedura da seguire per lo sblocco della SIM &egrave; la seguente: **05*PUK*PIN*PIN#&lt;/li&gt;	&lt;li&gt;Se hai smarrito il PUK, dovrai necessariamente recarti in un &lt;a href=&quot;/trova-negozio&quot;&gt;Negozio TIM&lt;/a&gt; per effettuare la sostituzione della SIM mantenendo il tuo numero telefonico. Ti ricordiamo che il Servizio Clienti 119 per motivi di sicurezza non ha la possibilit&agrave; di fornirti il PUK, trattandosi di un codice strettamente personale.&lt;/li&gt;&lt;/ul&gt;'),
(5, 'Mobile', 'Ho digitato in maniera errata il codice PUK. Come posso sbloccare la mia SIM?', 'Se hai digitato il codice PUK in maniera errata per dieci volte consecutive la tua SIM non pu&ograve; pi&ugrave; essere sbloccata. Dovrai necessariamente recarti in un Negozio TIM per effettuare un cambio carta. Ti sar&agrave; consegnata una nuova SIM mantenendo lo stesso numero telefonico.'),
(6, 'Mobile', 'Cosa succede dopo il blocco della linea? Continuo a pagare per i miei servizi telefonici?', 'Se sei un cliente ricaricabile, il tuo numero telefonico ed tuo credito residuo (presente al momento del blocco), rimangono a tua disposizione fino alla naturale scadenza della linea ricaricabile. Ti ricordiamo quindi che il Servizio Ricaricabile rimane attivo a meno che tu non faccia esplicita richiesta di cessazione.\r\nSe sei un cliente con abbonamento, fermo restando il blocco della linea, &egrave; importante ricordare che il contratto di abbonamento rimane attivo a meno che tu non faccia espressa richiesta di cessazione. Continuerai pertanto a ricevere regolarmente la fattura telefonica con le consuete spese fisse.\r\nTi suggeriamo quindi di recarti prima possibile presso un Negozio TIM per effettuare la sostituzione della SIM. In tal modo potrai recuperare il tuo numero telefonico e riprendere immediatamente ad utilizzare tutti i tuoi servizi.'),
(7, 'Mobile', 'In quali casi posso effettuare la sostituzione SIM Card?', 'Potresti avere la necessit&agrave; di richiedere la sostituzione della tua SIM per i seguenti motivi:&lt;ul&gt;&lt;li&gt;Furto/smarrimento&lt;/li&gt;&lt;li&gt;Malfunzionamento&lt;/li&gt;&lt;li&gt;Blocco e/o smarrimento del codice PIN/PUK&lt;/li&gt;&lt;li&gt;Passaggio a SIM di ultima generazione&lt;/li&gt;&lt;li&gt;Attivazione servizi NFC&lt;/li&gt;&lt;/ul&gt;');

-- --------------------------------------------------------

--
-- Table structure for table `filtro`
--

CREATE TABLE `filtro` (
  `id` int(11) NOT NULL,
  `categoria_device` varchar(50) NOT NULL,
  `filtro1` varchar(50) NOT NULL,
  `filtro2` varchar(50) NOT NULL,
  `filtro3` varchar(50) NOT NULL,
  `filtro4` varchar(50) NOT NULL,
  `filtro5` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `for_device1sl`
--

CREATE TABLE `for_device1sl` (
  `id_for_dev1sl` int(11) NOT NULL,
  `nome_smart_life` varchar(80) NOT NULL,
  `id_device` int(11) NOT NULL,
  `intro` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `for_device_2as`
--

CREATE TABLE `for_device_2as` (
  `id_for_dev2as` int(11) NOT NULL,
  `nome_assistenza` varchar(80) NOT NULL,
  `id_device` int(11) NOT NULL,
  `intro` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `for_device_2as`
--

INSERT INTO `for_device_2as` (`id_for_dev2as`, `nome_assistenza`, `id_device`, `intro`) VALUES
(1, 'TIMvision', 1, 'Il Decoder TIMvision ti consente di entrare nel magico mondo di TIMvision');

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
  `intro1` varchar(200) NOT NULL,
  `categoria2` varchar(50) NOT NULL,
  `intro2` varchar(200) NOT NULL,
  `categoria3` varchar(50) NOT NULL,
  `intro3` varchar(200) NOT NULL,
  `categoria4` varchar(50) NOT NULL,
  `intro4` varchar(200) NOT NULL,
  `categoria5` varchar(50) NOT NULL,
  `intro5` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gruppo`
--

INSERT INTO `gruppo` (`nome`, `banner`, `intro_banner`, `icona1`, `icona2`, `icona3`, `icona4`, `icona5`, `image1`, `image2`, `image3`, `image4`, `image5`, `categoria1`, `intro1`, `categoria2`, `intro2`, `categoria3`, `intro3`, `categoria4`, `intro4`, `categoria5`, `intro5`) VALUES
('Prodotti', 'img/prodotti/banner_prodotti.jpg', 'Smartphone, Tablet, Telefoni per la casa anche a rate sul conto TIM', 'img/prodotti/1_Smartphone.png', 'img/prodotti/2_Tablet.png', 'img/prodotti/3_Modem.png', 'img/prodotti/4_TV.png', 'img/prodotti/5_Outlet.png', 'img/prodotti/smartphone_telefoni.jpg', 'img/prodotti/tablet_computer.jpeg', 'img/prodotti/modem_networking.jpg', 'img/prodotti/tv_smart_living.jpg', 'img/prodotti/outlet.png', 'Smartphone e Telefoni', 'Telefoni fissi sia tradizionali che cordless e Cellulari e Smartphone', 'Tablet e Computer', 'Tablet, Computer ed Accessori', 'Modem e Networking', 'Tutto quello che ti serve per navigare in Internet', 'TV e Smart Living', 'Scopri le nostre offerte TV e tutti i servizi Smart Living che ti semplificheranno la vita', 'Outlet', 'Ottimi prodotti ad ottimi prezzi');

-- --------------------------------------------------------

--
-- Table structure for table `sl_in_promozione`
--

CREATE TABLE `sl_in_promozione` (
  `id` int(11) NOT NULL,
  `nome_sl` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `smart_life`
--

CREATE TABLE `smart_life` (
  `nome` varchar(80) NOT NULL,
  `categoria` varchar(50) NOT NULL,
  `image` varchar(200) NOT NULL,
  `descrizione` varchar(2000) NOT NULL,
  `contenuti` varchar(2000) NOT NULL,
  `regole` varchar(3000) NOT NULL,
  `image_descrizione` varchar(150) NOT NULL,
  `image_contenuti` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `smart_life`
--

INSERT INTO `smart_life` (`nome`, `categoria`, `image`, `descrizione`, `contenuti`, `regole`, `image_descrizione`, `image_contenuti`) VALUES
('TIMTag', 'Casa e Famiglia', '', '&lt;h3&gt;TIMTag&lt;/h3&gt;&lt;br&gt;&lt;p id=&quot;descrizione&quot;&gt;TIMTag &egrave; il dispositivo che ti informa sulla posizione del tuo amico a quattro zampe e delle cose a te pi&ugrave; care.&lt;br&gt;\r\nSegui in tempo reale i suoi spostamenti sul tuo smartphone senza perderlo mai di vista.&lt;br&gt;\r\nCon TIMTag hai un dispositivo di localizzazione GPS di ultima generazione, con 12 mesi di servizio TIMTag e una TIM Card inclusi e un'' App dedicata intuitiva e semplice da utilizzare!&lt;br&gt;Acquista il servizio TIMTag a 5&euro;/mese&lt;/p&gt;', '&lt;p id=&quot;contenuti&quot;&gt;Se lo ami mettigli un TAG.&lt;br&gt;GESTISCI TUTTO TRAMITE UN''UNICA APP&lt;/p&gt;', '&lt;p id=&quot;regole&quot;&gt;Per usare TIMTag devi seguire 3 semplici passi:&lt;br&gt;&lt;ol&gt;&lt;li&gt;', 'images/smart_life/TIMTag.png', 'images/smart_life/cane.jpg'),
('TIMvision', 'TV', '', '&lt;h3&gt;TIMvision&lt;/h3&gt;&lt;br&gt;&lt;p id=&quot;descrizione&quot;&gt;Cartoni, Cinema Serie TV, Documentari e Concerti sempre on demand per creare il tuo palinsesto senza pubblicit&agrave;. Pi&ugrave; di 8.000 titoli in un abbonamento, senza vincoli di durata, anche in HD&lt;/p&gt;&lt;br&gt;&lt;p&gt;Acquista un Prodotto TIMvision e abbonati per 5&euro;/mese&lt;/p&gt;', '&lt;p id=&quot;contenuti&quot;&gt;Accomodati e goditi il grande cinema.&lt;br&gt;Una ricca proposta di film con le anteprime pi&ugrave; attese, i grandi classici, inediti, film d''azione, thriller, animazione e commedie per tutta la famiglia. In pi&ugrave; l''HD, per rendere ogni immagine spettacolare e non perdere neanche un particolare&lt;/p&gt;', '&lt;p id=&quot;regole&quot;&gt;Abbonati a TIMvision per goderti un grande spettacolo. Puoi vedere oltre 8.000 titoli tra cartoni, cinema, serie TV, documentari e gli ultimi 7 giorni di LA7 e LA7d. Se ti abboni entro il 30/08/2016, il primo mese &egrave; gratis e poi ti basteranno solo 5&euro;/mese.&lt;br&gt;&lt;span&gt;Per usufruire di TIMvision devi essere gi&agrave; un nostro cliente con ADSL Telecom.&lt;/span&gt;&lt;/p&gt;', 'images/smart_life/TIMvision.png', 'images/smart_life/cinema.jpg');

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
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `banner_prodotti`
--
ALTER TABLE `banner_prodotti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
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
-- AUTO_INCREMENT for table `filtro`
--
ALTER TABLE `filtro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `for_device1sl`
--
ALTER TABLE `for_device1sl`
  MODIFY `id_for_dev1sl` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `for_device_2as`
--
ALTER TABLE `for_device_2as`
  MODIFY `id_for_dev2as` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `sl_in_promozione`
--
ALTER TABLE `sl_in_promozione`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
