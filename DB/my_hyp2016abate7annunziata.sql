-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 17, 2016 at 10:48 PM
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
('Come navigare', 'Supporto Tecnico e Configurazioni', 'img/assistenza/intro_come_navigare.jpg', 'Scopri come configurare i tuoi dispositivi per navigare sul WEB', 'Come Navigare', 'Ti consigliamo, quando possibile, di collegare al modem i dispositivi come TV, decoder e console giochi con il cavo di rete Ethernet. In tal caso posiziona il modem nelle immediate vicinanze di uno di questi device per assicurarti l''utilizzo ottimale della tua linea Fibra. Segui le indicazioni in questa pagina per collegare i vari dispositivi che utilizzi.', 'Come collegare il pc in Ethernet: Inserisci nella porta LAN Ethernet del tuo computer, il cavo Ethernet in dotazione. Inserisci il connettore disponibile del cavo Ethernet in una qualsiasi delle 4 porte Eth di colore giallo del modem. Dopo aver effettuato il collegamento, verifica che l''eventuale led in corrispondenza della porta Ethernet del tuo pc sia acceso. In caso contrario, controlla che il cavo Ethernet sia correttamente inserito.', 'Come configurare la rete wi-fi: Abilita il Wi-Fi da menu Impostazioni del tuo dispositivo. Cerca e seleziona il nome della rete Wi-Fi che &egrave; riportato sull''etichetta. NON inserire la chiave di cifratura. Premi e rilascia velocemente sul modem il tasto Wi-Fi / LED. Il led Wi-Fi presente sul modem diventa verde lampeggiante e la connessione Wi-Fi sar&agrave; automaticamente configurata in pochi minuti. A configurazione avvenuta il led Wi-Fi diventa verde fisso e il dispositivo sar&agrave; automaticamente agganciato alla rete.', 'Collegamento Wi-Fi di TIMvision: Dopo aver effettuato correttamente i collegamenti del decoder TIMvision alla tua TV e alla presa di corrente elettrica, accendilo tramite il pulsante posto sul retro. Seleziona sul tuo televisore la sorgente sulla quale hai collegato TIMvision. Dopo il Benvenuto seleziona il tasto Avanti per accedere alla sezione Connetti. Accertati che il modem sia accesso, quindi seleziona la modalit&agrave; Wifi , seleziona Avanti e conferma con il tasto OK del telecomando. Il decoder TIMvision effettuer&agrave; una scansione per ricercare le reti wireless disponibili; seleziona quindi la tua rete dall''elenco e premi Configura. Inserisci la WPA che trovi sul modem e premi OK.', 'Come collegare FAX: Con il servizio fibra di Tim puoi collegare un Fax direttamente al modem utilizzando una delle porte Line1 o Line2 presenti sul retro del modem. Ti consigliamo di scollegare tutti i filtri e telefoni presenti nell''impianto telefonico che potrebbero disturbare le comunicazioni e aumentare gli errori di trasmissione. Se riscontri errori durante l''invio/ricezione di fax &egrave; opportuno disabilitare il protocollo T.38 e il parametro ECM direttamente dai parametri di configurazione del FAX o del POS. Consulta il manuale del tuo FAX e segui le indicazioni riportate per modificare i parametri impostati. Se il tuo FAX dispone di una porta per collegare la linea telefonica e di una porta per collegare un eventuale telefono aggiuntivo, verifica di aver collegato il cavo telefonico alla porta Line1 o Line2 sul modem fibra e alla porta corretta del FAX da utilizzare per la linea telefonica.', 'I nostri Prodotti per navigare e inviare FAX', 'Scopri tutti i prodotti che ti servono per Navigare sul WEB, guardare la TV con TIMvision e inviare FAX dalla comodit&agrave; di casa tua.', 'Modem e FAX'),
('Mobile', 'Gestione Linea e Servizi', 'img/assistenza/intro_mobile.jpg', 'Info ed Assistenza per la tua SIM e per i Dispositivi Mobile Acquistabili a Rate', 'La tua SIM', 'Tutto ci&ograve; che devi sapere per gestire al meglio la tua SIM:', 'I codici PIN e PUK: il PIN (Personal Identity Number) &egrave; un codice numerico di 4 cifre che ti consente, se regolarmente impostato, di proteggere il telefonino da utilizzi illeciti. Viene infatti richiesto dal telefonino al momento dell&rsquo;accensione; il codice PIN &egrave; personalizzabile. Il PUK (Personal Unblocking Key) &egrave; un codice di sblocco fisso e non modificabile che serve per sbloccare la SIM a seguito dell''errata digitazione del codice PIN per 3 volte di seguito.', 'Cosa fare in caso di furto o smarrimento: dovrai tempestivamente bloccare la linea relativa alla SIM presente al suo interno.\r\nSe sei un cliente ricaricabile e sei gi&agrave; registrato alla sezione MyTIM Mobile puoi bloccare la linea direttamente online. Se non sei registrato alla sezione MyTIM Mobile o se sei un cliente in abbonamento dovrai contattare il Servizio Clienti 119. Previa identificazione e verifica della titolarit&agrave; del numero (attraverso la comunicazione di nome, cognome, codice fiscale,...) verr&agrave; immediatamente bloccata la linea al traffico telefonico.', 'Sostituzione della tua SIM: l&rsquo;operazione di sostituzione SIM ti consente di cambiare la tua SIM e conservare il tuo numero telefonico (sia per clienti ricaricabili che in abbonamento).', '', 'Dispositivi Mobile a Rate', 'Offriamo un comodo servizio di pagamento a Rate per i Dispositivi Mobile. Clicca il link in basso per vedere i modelli disponibili', 'Smartphone a Rate'),
('Mobile Ricaricabile', 'Controllo Costi e Pagamenti', 'img/assistenza/intro_mobile.jpg', 'Come controllare i Costi della tua SIM Ricaricabile presente su Smartphone e Tablet', 'Verifica credito residuo e bonus disponibili per i clienti Prepagati', 'Il credito residuo disponibile, le offerte e lo stato dei bonus attivi sulla tua linea ricaricabile, sono consultabili attraverso le seguenti modalit&agrave;:', 'Direttamente dal tuo Smartphone, accedendo all''app MyTIM Mobile, attualmente disponibile in download gratuito nelle versioni per iPhone e per smartphone con sistema operativo Android', 'Chiamando il numero gratuito 40916, per il credito residuo. Inoltre digitando il tasto 1 puoi conoscere le offerte attive, la quantit&agrave; di minuti, SMS, GB ancora disponibili e i bonus in euro eventualmente presenti', 'Attraverso il servizio gratuito 119sms; inviando un sms al 119 con testo SALDO, il servizio ti risponder&agrave; con un sms con le informazioni richieste', '', 'Dispositivi con App MyTIM Mobile preinstallata', 'Acquista direttamente un prodotto a marchio TIM e avrai l''App MyTim Mobile preinstallata sul tuo dispositivo', 'Tablet e Smartphone'),
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
(3, 'Smartphone e Telefoni', 'Smartphone', 'Huawei', 'P9', 'img/devices/huawei_p9.jpg', '', 'Sistema Operativo Android 6.0', 'Display IPS Full HD da 5.2&quot;', 'Doppia Fotocamera Leica da 12 Mpxl Dual Flash + anteriore da 8 Mpxl', 'Processore Kirin 955 - Octa-Core (4x2,5 GHz + 4x1,8 GHz)', 399.9, NULL, 599.9, 'PREMIUM. ELEGANT. STYLISH.', 'Huawei P9 presenta un design con linee dal forte impatto visivo, caratterizzate da spigoli tagliati a diamante e arrotondati a regola d&rsquo;arte. Lo smartphone ha una struttura unibody in alluminio aerospaziale e vetro 2.5D di categoria superiore, ed &egrave; disponibile in due varianti cromatiche: Titanium Grey e Mystic Silver.', 'DISPLAY LUMINOSO E DAI COLORI INTENSI', 'Con una resa cromatica del 96%, il sensazionale display IPS Full HD da 5,2&quot; porta alla scoperta di un mondo ricco di colori intensi e ancora pi&ugrave; naturali.', 'UN INNOVATIVO SISTEMA CON DOPPIA FOTOCAMERA, UNA COLLABORAZIONE UNICA', 'La collaborazione tra Huawei e Leica ha dato vita a uno smartphone con doppia fotocamera. Il risultato: maggiore luminosit&agrave; e nitidezza per foto e video sensazionali.', 'INNOVATIVO SISTEMA CON DOPPIA FOTOCAMERA', 'Huawei P9 &egrave; in grado di catturare immagini dai colori luminosi e garantire al contempo una resa in bianco e nero straordinaria; il tutto con lo stile senza tempo di Leica.La tecnologia con doppia fotocamera di Huawei P9 consente di catturare una maggiore quantit&agrave; di luce, combinando al meglio la qualit&agrave; del colore acquisito dal sensore RGB con i dettagli ottenuti dal sensore in bianco e nero. Il tutto per garantire il massimo risultato ad ogni scatto.', 'Sistema Operativo', 'Sistema Operativo Android 6.0', 'Processore', 'Processore Kirin 955 - Octa-Core (4x2,5 GHz + 4x1,8 GHz)', 'Display', 'Display IPS Full HD da 5.2&quot;', 'Fotocamera', 'Principale 12MP x 2, f/2.2 Leica BSI CMOS Flash dual-tone Frontale 8MP, f/2.4', 'Tecnologia', 'Abilitato tecnologia 4GPlus - 4G - HSDPA 42 - UMTS - EDGE - GPRS Frequenze 850 - 900 - 1800 - 1900MHz', 'Connettivit&agrave;', '4G cat.6/HSDPA42/UMTS/EDGE/GPRS Frequenze 850/900/1800/1900/2100 Wi-Fi a/b/g/n/ac dual band 2,4/5GHz con Wi-Fi Direct Bluetooth 4.2, BLE USB Type-C, NFC', 'GPS', 'GPS Integrato', 'Memoria Interna', '32 GB', 'In dotazione', 'Smartphone Auricolari stereo - Caricabatteria Cavo USB Type-C - Estrattore SIM - Guida rapida', 'Dimensioni', '145 x 70,9 x 6,95 mm', 'Peso', '144 grammi'),
(4, 'Smartphone e Telefoni', 'Smartphone', 'Samsung', 'Galaxy J5', 'img/devices/galaxy_j5.png', 'Sistema Operativo Android 5.1', 'Display 5.2&quot; 16 Milioni colori Touch', 'Processore QuadCore 1.2 Ghz', '', '', 198, NULL, 260, '22GB gratis di Internet 4G per 30 giorni', 'Scopri con TIM Internet 4G e preparati a volare sul web con il tuo Smartphone LTE. Grazie alla nuova tecnologia LTE (Long Term Evolution) navigherai in mobilit&agrave; rapidamente, con fluidit&agrave; e prestazioni affidabili.', 'TIM Card del valore di 5 &euro; (IVA incl)', 'Solo TIM ti regala la SIM-Plus di TIM con 128 Kbyte di memoria. L''unica card che ti permette di sfruttare tutte le potenzialit&agrave; del tuo telefonino GSM e UMTS offrendoti i servizi pi&ugrave; evoluti ed innovativi.', '', '', '', '', 'Sistema Operativo', 'Android 5.1', 'Display', 'Display 5&quot; 16 Milioni colori Touch', 'Processore', 'Processore QuadCore 2.1 Ghz', 'Tecnologia', '4G/HSDPA42/UMTS/EDGE/GPRS Frequenze 850/900/1800/1900/2100', 'Connettivit&agrave;', 'Wi-Fi - Bluetooth - Micro USB - NFC', 'GPS', 'Ricevitore GPS Integrato', 'Fotocamera', 'Fotocamera 13 Mpixel/Flash', 'Memoria', 'Memoria interna 16GB - Slot Memory Card Micro SD fino a 128GB', 'Formato SIM', 'SIM Micro', 'Dimensioni', '145,8x72,3x8,1 mm', 'Peso', '158 g'),
(5, 'Smartphone e Telefoni', 'iPhones', 'Apple', 'iPhone 5s 16GB', 'img/devices/iphone_5s.jpg', '', 'Sistema Operativo iOS 8', 'Display Retina da 4&quot;', 'Chip A7 con coprocessore di movimento M7', 'Fotocamera iSight da 8 megapixel', 329, 30, 479, 'Descrizione', 'Chip A7 con architettura a 64 bit, sensore di impronte digitali Touch ID,nuova fotocamera iSight da 8 megapixel e nuova videocamera FaceTime HD,reti 4G LTE ultraveloci, iOS 8 e iCloud: iPhone 5s &egrave; davvero all''avanguardia. Eppure &egrave; sottile e leggero come sempre.', '', '', '', '', '', '', 'Sistema Operativo', 'Sistema Operativo iOS 8', 'Display', 'Retina da 4&quot;', 'Processore', 'Chip A7 con coprocessore di movimento M7', 'Fotocamera', 'iSight da 8 megapixel con flash True Tone - Registrazione video HD a 1080p - Videocamera FaceTime', 'Sensori', 'impronte digitali Touch ID', 'Connettivit&agrave;', 'Reti 4G LTE ultraveloci', 'Applicazioni', 'Oltre 900.000 app sull''App Store', 'Cloud', 'iCloud: I tuoi contenuti, su tutti i tuoi dispositivi', '', '', '', '', '', ''),
(6, 'Smartphone e Telefoni', 'Fissi', 'Facile', 'Start', 'img/devices/FacileStart.png', '', 'Ampio schermo 1.8&quot;', 'Audio e suono di qualit&agrave;', 'Rubrica 100 contatti', 'Modalit&agrave; ECO Plus per risparmio energetico', 29.95, NULL, NULL, 'Facile Start', 'Il nuovo cordless Telecom Italia giovane, pratico, completo e resistente!', 'Offre ottime prestazioni', 'Il suo display da 1.8&quot; ad alto contrasto con caratteri grandi garantisce ottima leggibilit&agrave;; la tastiera ampia con tasti ben distanziati e illuminati facilita la composizione dei numeri; l''audio &egrave; chiaro e nitido anche in vivavoce.', 'Rispetta l''ambiente', 'Consente un risparmio di energia del 60% rispetto a un cordless analogo di generazione precedente, il consumo della base in stand by &egrave; inferiore a 0,4W.', 'Schermo', 'Ampio schermo 1.8&quot; illuminato bianco', 'Rubrica', 'Rubrica 100 contatti', 'Vivavoce', 'Alta qualit&agrave; HSP TM', 'Tastiera', '9 tasti di chiamata diretta', 'Tecnologia', 'Cordless DECT-GAP', 'Avanzate', 'Lista ripetizione ultimi 10 numeri chiamati - Registro ultime 25 chiamate ricevute - Servizio di sveglia giornaliera - Blocco tastiera - Tasto di ricerca del portatile - Visualizzazione durata delle chiamate - Modalit&agrave; ECO PLUS per risparmio energetico', 'Lingua', 'Menu 28 lingue', 'Portata', 'Fino a 50/300 m (interno/esterno)', 'Contenuto della Confezione', 'Portatile - Base - Manuale d''uso - Alimentatore - Spina tripolare - 2 Batterie AAA ricaricabili', '', '', '', '', '', ''),
(7, 'Smartphone e Telefoni', 'Cellulari', 'Alcatel', '20.12G', 'img/devices/alcatel.jpg', '', 'Display QVGA da 2.8&quot; a 262K colori', 'Fotocamera QVGA da 3 Mpxl', 'Stereo FM e Radio RDS', '', 44.99, NULL, NULL, 'Descrizione', 'Un cellulare facile da usare, adatto a tutti per tutte le et&agrave;', '', '', '', '', '', '', 'Tecnologia', 'EDGE/GPRS', 'Display', 'Display 2.8&quot; 262K colori', 'Memoria', 'Slot Memory Card Micro SD fino a 8GB', 'Connettivit&agrave;', 'Frequenze GSM 850/900/1800/1900', 'Dimensioni', '107 x 53,7 x 13,95 mm', 'Peso', '95 g', 'Batteria', 'Stand-by fino a 450 ore. Conversazione fino a 360 min.', '', '', '', '', '', '', '', ''),
(8, 'TV e Smart Living', 'TV', 'Samsung', 'Smart TV 50&quot; con Soundbar e TIMvision', 'img/devices/smart_tv.jpg', 'TV con Decoder TIMvision incorporato', 'Modello 50JU6400 - 50&quot;', 'Ultra HD - 4K 3840 x 2160', 'Soundbar HW-J250 inclusa', 'TIMvision incluso', 799.95, NULL, NULL, 'Descrizione', 'Scopri un nuovo livello di realt&agrave;. Il TV Full HD Samsung offre un''esperienza straordinariamente reale e coinvolgente. Con la sua risoluzione e tecnologia, potrai vedere tutti i tuoi programmi TV e film preferiti in una luce completamente nuova. Qualit&agrave; d''immagine pari al Full HD La funzione Ultra Clean View analizza i contenuti con un algoritmo che filtra e riduce tutti i rumori video. Anche se la sorgente &egrave; di qualit&agrave; inferiore al Full HD, avrai comunque la possibilit&agrave; di vedere immagini in grado di reggere il confronto con gli standard dei contenuti nativi.\r\nUn unico e rapido accesso a tutte le Sorgenti dei contenuti La nuova interfaccia Smart 2016 fornisce un singolo punto di accesso alle sezioni TV, Applicazioni, Giochi e molto altro: per accedere ai contenuti preferiti, non si dovr&agrave; fare altro che accendere il TV.\r\nContrasto ottimizzato per maggiori dettagli.', '', '', '', '', '', '', 'Display', 'LED Full HD (1920x1080)', 'Audio', '2 Altoparlanti da 20 W - Modalit&agrave; surround', 'Connessioni', '2 USB / 3 HDMI / Wi-Fi', 'Dimensioni', '124,16 cm x 78,64 cm x 29,38 cm', 'Peso', '23,2 Kg', '', '', '', '', '', '', '', '', '', '', '', ''),
(9, 'Tablet e Computer', 'iPad', 'Apple', 'iPad Pro 9.7&quot; 256 GB', 'img/devices/ipad97.jpg', 'Nuovissimo iPad', 'Display Retina da 9,7&quot; (diagonale) con True Tone e rivestimento antiriflesso', 'Chip A9 con architettura a 64 bit di livello desktop', 'Sensore di impronte digitali Touch ID', 'Fotocamera iSight da 12MP con video a 4K', 1199.95, NULL, NULL, 'Descrizione', 'iPad Pro 9,7&quot; &egrave; un concentrato mai visto di portatilit&agrave; e prestazioni. E'' spesso solo 6,1 millimetri e pesa meno di 500 grammi, ma ha il display Retina pi&ugrave; luminoso ed evoluto di sempre: con i suoi sensori True Tone si adegua alla luce ambientale, cos&igrave; gli occhi non si affaticano. In pi&ugrave; hai il potente chip A9X a 64 bit di livello desktop, audio a quattro altoparlanti, fotocamera iSight e videocamera FaceTime HD, sensore di impronte digitali Touch ID, connessioni ultraveloci su Wi-Fi e 4G LTE e fino a 10 ore di autonomia.2 Advanced,1 ancora di pi&ugrave;? Aggiungi l''ultraprecisa Apple Pencil e la Smart Keyboard, e iPad Pro ti diventer&agrave; ancora pi&agrave; indispensabile', '', '', '', '', '', '', 'Sistema Operativo', 'iOS 9', 'Display', 'Display Retina da 9,7&quot; (diagonale) con True Tone e rivestimento antiriflesso', 'Processore', 'Chip A9X di terza generazione con architettura a 64 bit di livello desktop', 'Sensori', 'Impronte digitali Touch ID', 'Fotocamera', 'iSight da 12MP con video a 4K', 'Videocamera', 'FaceTime HD (foto da 5MP)', 'Connettivit&agrave;', '4G LTE Advanced, Wi-Fi 802.11ac con tecnologia MIMO', 'Batteria', 'Fino a 10 ore di autonomia', '', '', '', '', '', ''),
(10, 'Tablet e Computer', 'iPad', 'Apple', 'iPad Pro 128 GB', 'img/devices/slider_ipad_pro.jpg', 'iPad slider', 'Wi-Fi + Cellular (4G LTE)', 'Retina Display 12.9&quot; (2732x2048) Led IPS', 'Sistema Operativo iOS 9 (co-processore M9)', 'Fotocamera iSight da 8 megapixel', 1249.95, NULL, NULL, 'Descrizione', 'Con iPad hai scoperto un mondo completamente nuovo, semplice e coinvolgente. Oggi iPad Pro, con la tecnologia MultiTouch perfezionata, il suo grande display Retina da 12,9&quot; e prestazioni della CPU quasi raddoppiate rispetto a iPad Air 2, &egrave; pronto ad allargare ancora una volta i tuoi orizzonti. Non &egrave; solo pi&ugrave; grande. E'' un iPad che ti permetter&agrave; di lavorare e creare in una dimensione tutta nuova, come non hai mai fatto prima.\r\n\r\nCon 5,6 milioni di pixel, iPad Pro ha il display Retina a pi&ugrave; alta risoluzione mai visto su un dispositivo iOS. Montare video 4K, creare presentazioni, gestire un''azienda: sul display da 12,9&quot; tutto &egrave; pi&ugrave; facile, veloce e coinvolgente. E con il Multi?Touch riprogettato scoprirai nuovi modi per interagire con il tuo iPad.\r\n\r\nNonostante il suo grande display, iPad Pro &egrave; sorprendentemente sottile e leggero: solo 6,9 mm di spessore e appena 713 grammi. Grazie al guscio unibody, &egrave; anche resistente e ben bilanciato. Ma forse l''aspetto pi&ugrave; incredibile di iPad Pro &egrave; un altro: &egrave; talmente comodo che quasi ti dimentichi di averlo in mano', '', '', '', '', '', '', 'Sistema Operativo', 'iOS 9', 'Display', 'Retina Display 12.9&quot; (2732x2048) Led IPS', 'Processore', 'A9X con architettura a 64bit a 1.6GHz / co-processore M9', 'Fotocamera', 'iSight da 8 megapixel', 'Videocamera', 'FaceTime HD', 'Sensori', 'Impronte digitali Touch ID', 'Connettivit&agrave;', 'LTE /HSDPA-DC 42.2/HSUPA 5.76/, Wi-Fi 802.11a/b/g/n/ac e MIMO, Bluetooth 4.2', 'Batteria', 'Fino a 10 ore di autonomia', '', '', '', '', '', ''),
(11, 'Tablet e Computer', 'Tablet', 'Huawei', 'Mediapad T1 10 LTE', 'img/devices/tablet_huawei.jpg', 'Nuovo tablet della Huawei', 'Display 9.6&quot; PS', 'Sistema Operativo Android 4.4', 'Processore Snapdragon 200 QuadCore 1.2 GHz', '', 249.95, NULL, NULL, 'Descrizione', 'Disponibile nella sola colorazione bianca, il Huawei MediaPad T1 10 &egrave; piuttosto sottile, con uno spessore di soli 8,3 mm che lo rende semplice da tenere anche con una mano sola. Il design del prodotto &egrave; semplice ed elegante. Risulta particolarmente adatto alla visione di video e, inoltre, il peso di soli 433g lo rende ancora pi&ugrave; comodo da usare.', '', '', '', '', '', '', 'Display', 'Display 9.6&quot; (1280x800) IPS 16M di colori', 'Sistema Operativo', 'Android 4.4 KitKat', 'Connettivit&agrave;', 'LTE, HSDPA+ 42.2Mbps/HSUPA 5.76/, Wi-Fi 802.11b/g/n, Bluetooth 3.0', 'Video/Audio/Picture', '2 Fotocamera da 5 Mpx e VGA Lettore multimediale - MP3, WAV, 3GP, AAC, AAC+ e-AAC+, JPG, PNG,GIF, BMP, WMV, H264, Mpeg4, 1080p/30fps', 'Memoria', '8GB (espandibile fino a 64GB)', 'Processore', 'Quad-core 1.2GHz', 'Applicazioni', 'Google Mobile Services, Youtube, E-mail, GPS e A-GPS, SMS, Invio e ricezione, chiamata voce.', 'In dotazione', 'Caricabatteria - Manuale d''uso', 'Dimensioni', '248,5 x 150 x8,3 mm', 'Peso', '433 grammi', 'Batteria', 'Stand-by fino a 300h'),
(12, 'Tablet e Computer', 'Tablet', 'Samsung', 'Galaxy TabPro S 12', 'img/devices/tablet_samsung.jpg', 'Tablet Samsung: il meglio che desideri da un Tablet', 'Display 12&quot; FHD+, 2160x1440 SuperAmoled', 'Sistema Operativo Windows 10 Pro', 'Memoria interna 128GB SSD', 'Fotocamera (Front: 5 MP AF, Back: 5 MP )', 1299.91, NULL, NULL, 'DESIGN SOTTILE E LEGGERO', 'Galaxy TabPro S rappresenta il perfetto connubio tra design e tecnologia. Estremamente sottile e leggero, stupisce per la ricercatezza dei dettagli e la qualit&agrave; dei materiali.', 'ELEGANTE PROTEZIONE', 'La book cover protegge perfettamente Galaxy TabPro S, mantenendone intatta l''eleganza.', 'DISPLAY SUPER AMOLED', 'Galaxy TabPro S &egrave; il primo prodotto Windows 10 al mondo dotato di display SUPER AMOLED. Lavorare in mobilit&agrave; &egrave; davvero comodo, grazie al display touchscreen da 12 pollici. Indipendentemente dal contenuto visualizzato, che sia una immagine o un video, i colori e la brillantezza delle immagini saranno esaltate dalla definizione e dalla qualit&agrave; del display SUPER AMOLED di Galaxy TabPro S', 'INTRATTENIMENTO XBOX ONE GAME STREAMING', 'Con questa rivoluzionaria funzione, utilizzando la stessa connessione WiFi, potrai giocare in streaming ai giochi della tua XBOX ONE direttamente su Galaxy TabPro S.', 'Sistema Operativo', 'Windows 10 Pro', 'Display', 'Display 12&quot; FHD+, 2160x1440 SuperAmoled', 'Memoria', '128GB SSD, 4GB di Ram', 'Fotocamera', 'Fotocamera (Front: 5 MP Back: 5 MP)', 'Connettivit&agrave;', 'LTE Cat6 /HSDPA 42 Mbps / , Wi-Fi 802.11b/g/n MIMO, Bluetooth 4.1, Micro USB 3.1 (C-type) - GPS Glonass - NFC', 'Processore', 'Intel Core M3 (Dualcore 2.2 GHz)', 'Dimensioni', '290.3x198.8x6.3 mm', 'Batteria', 'Durata 600 minuti', '', '', '', '', '', ''),
(13, 'Modem e Networking', 'Modem', 'Modem TIM', '4G WI-FI', 'img/devices/modem_tim.jpg', 'Modem TIM per navigare a tutta velocit&agrave; sul web', '1 Modem 4G WI-FI', '1 mese di INTERNET 4G LTE', '', '', 79.95, NULL, NULL, 'Descrizione', 'L''innovativa tecnologia LTE (Long Term Evolution) consente di raggiungere fino a 70 Mbps in ricezione e 50 Mbps in trasmissione. Il Modem wifi TIM 4G LTE consente anche il collegamento Wi-Fi fino a 10 dispositivi. Il supporto memoria MicroSD Card fino a 32GB rende possibile condividere file tra gli utenti collegati.\r\n\r\n', '', '', '', '', '', '', 'Tecnologia', '4G - DC-HSDPA - HSPA+ - HSDPA - HSUPA - EDGE/GPRS', 'Frequenze', '4G: 800/1800/2600 Mhz, download fino a 70Mbps, upload fino a 50Mbps\r\nDC-HSDPA: 900/2100 Mhz, download fino a 42.2Mbps\r\nHSPA+: 900/2100 Mhz, download fino a 21.1 Mbps\r\nHSDPA: 900/2100 Mhz, download fino a 14.4 Mbps\r\nHSUPA: 900/2100 Mhz, upload fino a 5.76 Mbps\r\nEDGE/GPRS: 850/900/1800/1900 Mhz', 'Contenuto della Confezione', 'Modem 4G Wi-Fi - TIM Card con 5 euro di traffico prepagato incluso - Alimentatore da rete - Cavo USB - Guida rapida', 'Requisiti di Sistema', 'La compatibilit&agrave; &egrave; totale per tutti i dispositivi certificati Wi-Fi (802.11b/g/n)', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(14, 'Modem e Networking', 'Chiavette', 'Chiavetta TIM', '42.2', 'img/devices/chiavetta.jpg', 'Chiavetta TIM per navigare velocemente sul web, ovunque tu sia', '1 Chiavetta 3G', '1 mese di INTERNET fino a 42.2 MB', '', '', 29.95, NULL, NULL, 'Descrizione', 'La Chiavetta TIM 42.2 &egrave; un modem usb dalle prestazioni superiori, con tecnologia HSPA+ , dotata di Slot Memory Card per Micro SD, supporta navigazione fino a 42.2 Mbps in ricezione ed &egrave; compatibile con VISTA, Windows 7, Windows 8.1, Mac OS X', '', '', '', '', '', '', 'Tecnologia', 'HSPA+ / HSDPA / HSUPA / UMTS / EDGE / GPRS', 'Frequenze', 'DC-HSPA+ / HSPA+ / HSUPA / HSDPA / UMTS UMTS900 / 2100MHz EGPRS / GSM 850-900-1800-1900MHz', 'Dimensioni', '25x86x9 mm', 'Peso', '22 grammi', 'Requisiti di sistema', 'Windows XP(32 bit), Vista (32 / 64 bit), Windows7 (32 / 64 bit), Windows 8.1 (32 / 64 bit) Modalit&agrave; Desktop, 10.6.x,10.7.x, 10.8.x, 10.9.x', 'In dotazione', 'Guida Rapida - TIM Card con 5&euro; (IVA incl.) di traffico prepagato a titolo promozionale. Il costo di attivazione della TIM Card, pari a 5&euro; non viene applicato. La TIM Card non &egrave; inclusa nel package TIM Business. Il prodotto non pu&ograve; essere venduto separatamente dalla TIM Card', '', '', '', '', '', '', '', '', '', ''),
(15, 'Outlet', 'Altro', 'Olivetti', 'My Way', 'img/devices/olivetti.jpg', 'Stampante, scanner, copiatrice', 'Stampante, scanner, copiatrice', 'Tecnologia ink-jet a colori', 'Stampa via Bluetooth', 'Programmazione foto', 19, NULL, NULL, 'Tecnologia e convenienza', 'My Way &egrave; una stampante veloce a getto d''inchiostro senza fili, a 6 colori. Un prodotto multifunzione, che &egrave; anche scanner e copiatrice a colori. Puoi stabilire un collegamento senza fili al PC oppure ad altri apparati predisposti, come macchina fotografica digitale o telefonino. Ed &egrave; possibile il collegamento tramite porte USB 1.1. e 2.0, o via cavo, con tecnologia di trasferimento diretto prictbridge. La funzione Photo Index di My Way offre l''anteprima dell''immagine o la programmazione della stampa in miniature 5x4 su foglio A4, selezionando anche formato, numero di copie, presenza di bordi.', '', '', '', '', '', '', 'Tecnologia', 'Ink Jet Photo a 6 colori', 'Formato carta', 'Fino ad A4', 'Tipo di carta', 'normale, speciale per ink-jet, fotografica, supporto per il trasferimento a caldo, etichette, banner, lucidi, buste', 'Risoluzione di stampa Fax', 'Fino a 4800 dpi', 'Interfaccia PC', '1 USB 2,0, 1 USB 1.1,compatibile PictBridge, compatibilit&agrave; sistemi operativi Microsoft Windows 98 SE,Me, 2000 e XP MAC OSX 10,2 o succ.', 'Sistemi Operativi compatibili', 'Microsoft Windows 98 SE, ME, 2000, XP e VISTA, MAC OSX 10.2 o succ.', 'Velocit&agrave; di stampa', 'B/N: fino a 20 ppm, colore: fino a 18 ppm', 'Colori di stampa', '6 (cartuccia colori + cartuccia photo)', '', '', '', '', '', ''),
(16, 'TV e Smart Living', 'SmartLiving', 'Samsung', 'Gear Fit', 'img/devices/gear_fit.jpg', 'Wearable che monitora la tua attivit&agrave; fisica', '1.84&quot; Curved Super AMOLED Touchscreen Display', 'Bluetooth 4.0 LE', '', '', 80, NULL, 90, 'Descrizione', 'L''innovativo schermo curvo da 1,84&quot; Super AMOLED Touch Screen e i cinturini intercambiabili di Samsung Gear Fit ti rendono cool e a alla moda anche quando ti alleni. Ti offre inoltre una variet&agrave; di colori, sfondi e tipologie di orologio che puoi scegliere secondo le tue preferenze. Cos&igrave; puoi personalizzare il tuo look ogni giorno! Con Samsung Gear Fit ricevi subito notifiche di Email, SMS, chiamate in arrivo e app cos&igrave; non perdi una notifica per essere sempre in contatto con il tuo mondo. Ma c''&egrave; di pi&ugrave;, fallo diventare Il tuo Personal Trainer quotidiano! Grazie infatti al sensore di frequenza cardiaca, in modalit&agrave; allenamento, questo dispositivo ti supporta in tempo reale e ti d&agrave; suggerimenti che ti servono durante l''attivit&agrave; fisica per raggiungere i tuoi obiettivi. Tiene sempre traccia delle attivit&agrave; durante la giornata ed &egrave; sempre pronto ad accompagnarti grazie al suo design innovativo, confortevole ed ultraleggero (solo 27 gr.) ed in pi&ugrave; resistente all''acqua ed alla polvere.', '', '', '', '', '', '', 'Display', 'Curvo Touch da 1.84&quot; (risoluzione 128x432) a 16M di colori', 'Connettivit&agrave;', 'Bluetooth 4.0 - Micro USB', 'Certificazione', 'Resistente ad acqua e polvere (IP67)', 'Sensori', 'Accelerometro - Giroscopio - Sensore cardiaco', 'Applicazioni', 'Modalit&agrave; allenamento, Meteo, Calendario, Contapassi, Orologio, Cronometro, Conto alla rovescia, Notifiche istantanee, Controlli multimediali, Trova dispositivo personale', 'Dimensioni', '23,4 x 57,4 x 11,95 mm', 'Peso', '27 g', 'Batteria', '210mAh', '', '', '', '', '', '');

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
(7, 'Mobile', 'In quali casi posso effettuare la sostituzione SIM Card?', 'Potresti avere la necessit&agrave; di richiedere la sostituzione della tua SIM per i seguenti motivi:', 'Furto/smarrimento', 'Malfunzionamento', 'Blocco e/o smarrimento del codice PIN/PUK', 'Passaggio a SIM di ultima generazione', 'Attivazione servizi NFC'),
(8, 'Come navigare', 'Come mai non riesco a navigare?', 'Per poter navigare in Internet, &egrave; necessario che la connessione sia attiva. Se la connessione &egrave; attiva, ma non riesci a navigare esegui le Verifiche proposte in questa pagina. Se hai effettuato in sequenza tutte le verifiche e continui a riscontrare il problema, puoi aprire una segnalazione o contattare direttamente l''Assistenza tecnica', 'Verifica che il proxy sia disabilitato.', 'Ti consigliamo di portare i livelli ai valori predefiniti e verificare se il problema persiste.', 'Verifica se sul computer &egrave; installato ed attivo un programma di protezione Firewall o Antivirus. Tali programmi se configurati in maniera non corretta possono provocare blocchi della navigazione o impedire l''accesso ad alcuni servizi Internet (ad esempio la consultazione della posta elettronica). Se &egrave; presente un software di protezione, prova a controllarne la configurazione e disabilita tutte le opzioni per il controllo virus o del traffico Internet effettuato.', '', ''),
(9, 'Mobile Ricaricabile', 'Posso tenere traccia dei costi per chiamate e servizi?', 'Con l''App MyTIM Mobile hai a disposizione il servizio: Documentazione traffico. Il servizio ti consente di conoscere il dettaglio di ogni telefonata, connessione dati o altro evento effettuato dalla tua linea con l''indicazione della data/ora di effettuazione, del costo, della tipologia, del numero chiamato e se si tratti di traffico voce o SMS', '', '', '', '', '');

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
('Modem e Networking', 'Modem', 'Chiavette', '', ''),
('Outlet', 'Altro', '', '', ''),
('Smartphone e Telefoni', 'Smartphone', 'Cellulari', 'iPhones', 'Fissi'),
('Tablet e Computer', 'iPad', 'Tablet', '', ''),
('TV e Smart Living', 'TV', 'Decoder', 'SmartLiving', '');

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
(1, 'TIMvision', 1),
(2, 'TIMvision', 8),
(3, 'Pagamenti', 2),
(4, 'Pagamenti', 3),
(5, 'Pagamenti', 4),
(6, 'TIMTag', 2),
(7, 'TIMTag', 3),
(8, 'TIMTag', 4),
(9, 'TIMTag', 5),
(10, 'TIMTag', 9),
(11, 'TIMTag', 10),
(12, 'TIMTag', 11),
(13, 'TIMTag', 12),
(14, 'Fitness', 16);

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
(1, 'TIMvision', 1),
(2, 'Mobile', 2),
(3, 'Mobile', 5),
(4, 'Come navigare', 1),
(5, 'Come navigare', 13),
(6, 'Come navigare', 14),
(7, 'Come navigare', 15),
(8, 'Mobile Ricaricabile', 2),
(9, 'Mobile Ricaricabile', 3),
(10, 'Mobile Ricaricabile', 4),
(11, 'Mobile Ricaricabile', 5),
(14, 'Mobile Ricaricabile', 9),
(15, 'Mobile Ricaricabile', 10),
(16, 'Mobile Ricaricabile', 11),
(17, 'Mobile Ricaricabile', 12),
(18, 'TIMvision', 8);

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
('Assistenza', 'img/assistenza/banner_assistenza.jpg', 'Assistenza e supporto tecnico a portata di click', 'fa fa-area-chart fa-2x', 'fa fa-credit-card fa-2x', 'fa fa-cogs fa-2x', 'fa fa-recycle fa-2x', 'fa fa-star fa-2x', 'img/assistenza/gestione_linea.jpg', 'img/assistenza/controllo_costi.jpg', 'img/assistenza/supporto_tecnico.jpg', 'img/assistenza/contenuti_smart_life.jpg', '', 'Gestione Linea e Servizi', 'Assistenza per la tua linea fissa e i servizi a tua disposizione', 'Controllo Costi e Pagamenti', 'Controlla i Costi e verifica i Pagamenti che hai effettuato', 'Supporto Tecnico e Configurazioni', 'Hai bisogno di Supporto Tecnico? Ti serve una mano nella configurazione di un nostro dispositivo? Questa sezione fa al caso tuo', 'Contenuti e Smart Life', 'Ti serve Assistenza o hai bisogno di maggiori informazioni sui nostri Contenuti e sui nostri Servizi Smart Life? Questa sezione fa al caso tuo', 'In Evidenza', 'Non hai trovato quello che cerchi? Vai alla sezione In Evidenza'),
('Prodotti', 'img/prodotti/banner_prodotti.jpg', 'Smartphone, Tablet, Telefoni per la casa anche a rate sul conto TIM', 'glyphicon glyphicon-phone', 'glyphicon glyphicon-folder-close', 'glyphicon glyphicon-hdd', 'glyphicon glyphicon-film', 'glyphicon glyphicon-tags', 'img/prodotti/smartphone_telefoni.jpg', 'img/prodotti/tablet_computer.jpeg', 'img/prodotti/modem_networking.jpg', 'img/prodotti/tv_smart_living.jpg', 'img/prodotti/outlet.png', 'Smartphone e Telefoni', 'Telefoni fissi sia tradizionali che cordless e Cellulari e Smartphone', 'Tablet e Computer', 'Tablet, Computer ed Accessori', 'Modem e Networking', 'Tutto quello che ti serve per navigare in Internet', 'TV e Smart Living', 'Scopri le nostre offerte TV e tutti i servizi Smart Living che ti semplificheranno la vita', 'Outlet', 'Ottimi prodotti ad ottimi prezzi'),
('Smart Life', 'img/smart_life/banner_smartLife.jpg', 'Scopri Serie TV, Wereables, Servizi e Dispositivi intelligenti che semplificheranno la tua vita', 'fa fa-television fa-2x', 'fa fa-heartbeat fa-2x', 'fa fa-home fa-2x', 'fa fa-credit-card fa-2x', '', 'img/smart_life/tv.jpg', 'img/smart_life/salute_benessere.jpg', 'img/smart_life/casa_famiglia.jpg', 'img/smart_life/servizi_persona.jpg', '', 'TV', 'I migliori Film, le migliori Serie TV e la Serie A di Calcio', 'Salute e Benessere', 'Prova gli ultimi Wereables. Scopri come salute e benessere possano cambiare in meglio la tua vita. Libera la tua voglia di movimento. Condividi con gli amici i tuoi risultati', 'Casa e Famiglia', 'Smart Life vuol dire anche avere una maggiormente semplice e sicura. Anche per la tua casa e per i tuoi cari', 'Servizi alla Persona', 'Un nuovo approccio al mondo dell''e-payment e della identit&agrave; digitale. Potrai gestire con semplicit&agrave; e in tutta sicurezza i tuoi pagamenti digitali, il tuo archivio personale, custodire la tua password', '', '');

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
(1, 'TIMvision', 'Se ti abboni entro il 30/08/2016, il primo mese &egrave; gratis e poi ti basteranno solo 5&euro;/mese.'),
(2, 'TIMTag', 'Se ti abboni entro il 30/08/2016, il servizio TIMTag ti costa solo 5&euro;/mese invece che 7&euro;/mese');

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
  `image_contenuti` varchar(150) NOT NULL,
  `titolo_devices` varchar(350) NOT NULL,
  `link_devices` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `smart_life`
--

INSERT INTO `smart_life` (`nome`, `categoria`, `image`, `intro`, `descrizione`, `stringa_prezzo`, `contenuti`, `regole`, `image_descrizione`, `image_contenuti`, `titolo_devices`, `link_devices`) VALUES
('Fitness', 'Salute e Benessere', 'img/smart_life/intro_fitness.png', 'Libera la tua voglia di movimento. Condividi con gli amici i tuoi risultati.', 'Libera la tua voglia di movimento. Condividi con gli amici i tuoi risultati. Il futuro &egrave; smart.', 'Acquista uno Smartphone e un Wearable abbinati', 'Prova gli ultimi wearables. Scopri come salute e benessere possono cambiare in meglio la tua vita.', '', 'img/smart_life/descr_fitness.jpg', 'img/smart_life/cont_fitness.jpg', 'Scopri i Prodotti Wearables', 'Prodotti Wearables'),
('Pagamenti', 'Servizi alla Persona', 'img/smart_life/intro_pagamenti.jpg', 'Scopri quanto &egrave; semplice fare acquisti nei negozi con il tuo Smartphone', 'Con TIM Wallet puoi utilizzare il tuo smartphone per pagare in tutti i negozi abilitati. SICURO: i dati della tua carta di credito o prepagata sono memorizzati in modo confidenziale e protetto sulla TIM Card. SEMPLICE E VELOCE: basta un tocco per scegliere la carta con cui effettuare i tuoi acquisti. COMODO: lasci il portafoglio a casa e utilizzi lo smartphone per avere a disposizione le tue carte', 'Acquista la nostra Carta Prepagata TIM al costo di 50&euro; con 40&euro; credito caricato', 'SCARICA TIM WALLET: Scarica l''app TIM Wallet da Google Play su uno smartphone NFC Android. RICHIEDI LA CARTA: Aggiungi la carta di pagamento che preferisci tra quelle disponibili nella vetrina. PREMI PAGA: Al momento del pagamento seleziona la carta che vuoi utilizzare, premi Paga e avvicina lo smartphone al POS contactless. Riceverai la conferma che il pagamento &egrave; stato effettuato direttamente sul display dello smartphone.', 'Per utilizzare il servizio di pagamento dal tuo Smartphone, ti serve una delle carte di credito compatibili della BANCA XYZ. Acquista dal nostro sito la nostra Carta Prepagata TIM oppure recati presso una sede della BANCA XYZ e richiedi la carta compatibile che pi&ugrave; si adatta alle tue esigenze, scarica l''App TIM Wallet e attiva il servizio', 'img/smart_life/pagamenti.jpg', 'img/smart_life/cont_pagamenti.jpg', 'Scopri gli Smartphone compatibili al Servizio di Pagamento TIM WALLET', 'Smartphone TIM WALLET'),
('TIMTag', 'Casa e Famiglia', 'img/smart_life/intro_TIM_Tag.jpg', 'Traccia e rintraccia il tuo amico a 4 zampe e tutte le cose che ami', 'TIMTag &egrave; il dispositivo che ti informa sulla posizione del tuo amico a quattro zampe e delle cose a te pi&ugrave; care.\r\nSegui in tempo reale i suoi spostamenti sul tuo smartphone senza perderlo mai di vista.\r\nCon TIMTag hai un dispositivo di localizzazione GPS di ultima generazione, con 12 mesi di servizio TIMTag e una TIM Card inclusi e un'' App dedicata intuitiva e semplice da utilizzare!', 'Acquista il servizio TIMTag a 5&euro;/mese', 'Se lo ami mettigli un TAG.\r\nGESTISCI TUTTO TRAMITE UN''UNICA APP', '&lt;p id=&quot;regole&quot;&gt;Per usare TIMTag devi seguire 3 semplici passi:&lt;br&gt;&lt;ol&gt;&lt;li&gt;', 'img/smart_life/TIMTag.png', 'img/smart_life/cane.jpg', 'Scopri i Prodotti TIMTag', 'Prodotti TIMTag'),
('TIMvision', 'TV', 'img/smart_life/intro_TIMvision.png', 'Cartoni, Cinema, Serie TV, Documentari e Concerti sempre on demand per creare il tuo palinsesto senza spot pubblicitari. Oltre 8000 titoli in un solo abbonamento, senza vincoli di durata, anche in HD', 'Cartoni, Cinema Serie TV, Documentari e Concerti sempre on demand per creare il tuo palinsesto senza pubblicit&agrave;. Pi&ugrave; di 8.000 titoli in un abbonamento, senza vincoli di durata, anche in HD', 'Acquista un Prodotto TIMvision e abbonati per 5&euro;/mese', 'Accomodati e goditi il grande cinema. Una ricca proposta di film con le anteprime pi&ugrave; attese, i grandi classici, inediti, film d''azione, thriller, animazione e commedie per tutta la famiglia. In pi&ugrave; l''HD, per rendere ogni immagine spettacolare e non perdere neanche un particolare', '&lt;p id=&quot;regole&quot;&gt;Abbonati a TIMvision per goderti un grande spettacolo. Puoi vedere oltre 8.000 titoli tra cartoni, cinema, serie TV, documentari e gli ultimi 7 giorni di LA7 e LA7d. Se ti abboni entro il 30/08/2016, il primo mese &egrave; gratis e poi ti basteranno solo 5&euro;/mese.&lt;br&gt;&lt;span&gt;Per usufruire di TIMvision devi essere gi&agrave; un nostro cliente con ADSL Telecom.&lt;/span&gt;&lt;/p&gt;', 'img/smart_life/TIMvision.png', 'img/smart_life/cinema.jpg', 'Scopri i Prodotti TIMvision', 'Prodotti TIMvision');

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
  MODIFY `id_device` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
  MODIFY `id_faq` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `for_device1sl`
--
ALTER TABLE `for_device1sl`
  MODIFY `id_for_dev1sl` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `for_device_2as`
--
ALTER TABLE `for_device_2as`
  MODIFY `id_for_dev2as` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `sl_in_promozione`
--
ALTER TABLE `sl_in_promozione`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
