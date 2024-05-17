-- MariaDB dump 10.19-11.3.2-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: basdat
-- ------------------------------------------------------
-- Server version	11.3.2-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `aplikasi`
--

DROP TABLE IF EXISTS `aplikasi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aplikasi` (
  `judul_aplikasi` varchar(255) NOT NULL,
  `tanggal_peluncuran` date NOT NULL,
  `harga` int(11) NOT NULL,
  `ukuran` int(11) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `email_developer` varchar(255) NOT NULL,
  PRIMARY KEY (`judul_aplikasi`),
  KEY `email_developer` (`email_developer`),
  CONSTRAINT `aplikasi_ibfk_1` FOREIGN KEY (`email_developer`) REFERENCES `developer` (`email_developer`),
  CONSTRAINT `CONSTRAINT_1` CHECK (`harga` >= 0),
  CONSTRAINT `CONSTRAINT_2` CHECK (`deskripsi`  not like '%free to play%' or `harga` = 0)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aplikasi`
--

LOCK TABLES `aplikasi` WRITE;
/*!40000 ALTER TABLE `aplikasi` DISABLE KEYS */;
INSERT INTO `aplikasi` VALUES
('12 Steps AA Companion - Alcoholics Anonymous','2020-07-22',468500,30367,'Support for sobriety with tools and resources based on the 12 Steps of Alcoholics Anonymous','TALEROCK322@gmail.com'),
('7 Days to Die','2020-06-10',675,9410663,'Open-world survival horror where you craft  build  and fight off hordes of zombies. Every seventh day  the horde gets especially vicious','Loria513@gmail.com'),
('ABC News - US & World News + Live Video','2020-03-14',0,98108,'Get breaking news in-depth reporting and live video coverage from ABC News','illegaldogs323@gmail.com'),
('AccuWeather - Weather for Life','2020-10-17',443500,181941,'Get reliable weather forecasts radar and important weather alerts for daily planning','Enitvare931@gmail.com'),
('Allrecipes Dinner Spinner','2020-11-22',0,36399,'Get daily recipe inspiration and solve the What\'s for dinner? dilemma with a touch of fun','Antarsoft714@gmail.com'),
('ARK: Survival Evolved','2020-07-27',794,3409626,'A survival game set in a world of dinosaurs and prehistoric creatures. Tame dinos  craft gear  build bases  and fight or ally with other players','LeeroyLin823@gmail.com'),
('Assetto Corsa Competizione','2020-08-04',165,11485548,'A hyper-realistic sim racing game officially licensed by the GT World Challenge. Masterfully recreates the feel of driving GT3 and GT4 race cars','Ideographer977@gmail.com'),
('Baba is You Soundtrack','2020-12-18',0,453779,'Minimalist chiptune melodies and ambient soundscapes cleverly reflect the game\'s unique puzzle mechanics and mind-bending logic','Coredumping903@gmail.com'),
('Bank of America - ElectornicBanking','2020-06-28',327500,160925,'Manage your finances track spending pay bills and make transfers with Bank of America\'s mobile app','gnomearc969@gmail.com'),
('Bastion Soundtrack','2020-02-24',30000,124501,'Acoustic guitar folksy vocals and a hint of electronic twang create a unique Western-esque soundscape for a world on the brink','RebRank162@gmail.com'),
('Bible','2020-03-21',0,92774,'Read and study the Bible with various translations and study tools','Loria513@gmail.com'),
('Big Day - Event Countdown','2020-08-20',0,13156,'Get excited for upcoming events! Track the time remaining with customizable countdowns reminders and beautiful backgrounds','Sockware982@gmail.com'),
('Bloodborne Soundtrack','2020-08-09',40500,394452,'Ominous choirs bombastic orchestral arrangements and driving rhythms build a sense of gothic horror and relentless action. The soundtrack perfectly captures the oppressive atmosphere of Yharnam and the thrill of battling grotesque beasts','illegaldogs323@gmail.com'),
('Borderlands 3','2020-10-11',784,18529419,'A chaotic and hilarious first-person shooter looter. Choose your Vault Hunter  blast through hordes of enemies for insane loot  and save the galaxy (with style)','Sockware982@gmail.com'),
('Cities: Skylines','2020-09-09',156,38219771,'The ultimate city-building simulator. Plan your metropolis  manage traffic  and watch your city come to life','illegaldogs323@gmail.com'),
('Cleartune - Chromatic Tuner','2020-02-05',38500,11423,'Fine-tune instruments with this precise chromatic tuner','LeeroyLin823@gmail.com'),
('Conan Exiles','2020-07-06',733,19133263,'Survive in the brutal world of Conan the Barbarian. Build your kingdom  conquer enemies  and appease the gods in this gritty survival action RPG','Nerial706@gmail.com'),
('Crypt of the Necrodancer Soundtrack','2020-08-28',0,730293,'Infectious chiptune beats with a dance music twist where every beat syncs to the game\'s rhythmic action','Loria513@gmail.com'),
('Cuphead The Delicious Last Course Soundtrack','2020-04-24',0,34763,'A playful and energetic celebration of 1930s cartoon music with jazzy big band sounds ragtime and a touch of the whimsical','TALEROCK322@gmail.com'),
('Cyberpunk 2077 Soundtrack','2020-05-19',20000,434841,'Gritty electronic textures pulsating basslines and a hint of retro-futurism paint a dystopian soundscape','illegaldogs323@gmail.com'),
('Dark Souls III Soundtrack','2020-10-11',25000,353127,'Lamenting strings foreboding choirs and epic brass define a world of struggle against monstrous forces','LeeroyLin823@gmail.com'),
('Dead by Daylight','2020-12-30',247,1397647,'An asymmetrical horror game where one player controls a brutal killer  and four others attempt to escape as survivors. Diverse killers and tense gameplay offer replayability','Enitvare931@gmail.com'),
('Dead Cells','2020-04-10',300,41937286,'A rogue-lite “metroidvania” with fast-paced action combat  tough-but-fair gameplay  and a constant sense of discovery. Unlock new gear and abilities as you explore a sprawling  interconnected castle','TALEROCK322@gmail.com'),
('Death Stranding Soundtrack','2020-03-02',5500,378375,'Emotive and brooding soundscapes by Low Roar blending haunting vocals with stark electronic textures reflecting the lonely odyssey theme','Slavitica442@gmail.com'),
('Deep Rock Galactic','2020-03-04',647,29765152,'A co-op focused first-person shooter where you play space dwarves mining dangerous procedurally-generated caves. Fight off hordes of alien bugs and bring back the loot!','Enitvare931@gmail.com'),
('Deezer - Listen to your Favorite Music & Playlists','2020-11-10',23000,127470,'Music streaming service with curated playlists and a massive song library','FrozenCrate632@gmail.com'),
('Deliveries: a package tracker','2020-09-14',210000,30016,'Keep tabs on all your incoming shipments with easy tracking from various carriers','LeeroyLin823@gmail.com'),
('Destiny 2','2020-09-10',247,38443052,'A free-to-play sci-fi MMO first-person shooter. Become a Guardian  wielding  fantastical powers to protect humanity  explore the solar system  and engage in intense PvE or PvP combat','brutalsoft951@gmail.com'),
('Devil May Cry 5 Soundtrack','2020-06-28',31500,183737,'Bombastic rock and adrenaline-pumping electronic tracks propel intense combat with over-the-top style','brutalsoft951@gmail.com'),
('Disco Elysium - The Final Cut','2020-02-17',274,47175658,'A wildly unique and narrative-driven RPG. Play as a troubled detective with a shattered memory  and solve a murder case in a gorgeously realized world','Sciman101885@gmail.com'),
('Disco Elysium Soundtrack','2020-05-28',39500,173444,'Unconventional blend of jazz atmospheric synths and a touch of disco nostalgia creating a uniquely disorienting soundscape','Ideographer977@gmail.com'),
('Divinity: Original Sin 2 - Definitive Edition','2020-03-16',764,8000770,'A classic-style RPG with deep tactical combat  a captivating story  and both single-player and co-op options.  Create your hero and forge your path in a world of magic and gods','Loria513@gmail.com'),
('Don\'t Starve','2020-11-11',938,47292305,'A quirky wilderness survival game with a distinctive Tim Burton-esque art style. Gather resources  craft bizarre contraptions  and don\'t get eaten by monsters','RebRank162@gmail.com'),
('Don\'t Starve Together','2020-12-23',114,35052075,'The standalone multiplayer version of the quirky wilderness survival game. Face the strange gothic world with friends  working together to gather resources  build structures  and survive','Vais740@gmail.com'),
('Dota 2','2020-02-02',517,8910788,'A free-to-play MOBA (Multiplayer Online Battle Arena) known for its depth  complexity  and huge esports scene. Two teams of five choose heroes with unique abilities to destroy the enemy base','Indefatigable480@gmail.com'),
('Dyson Sphere Program Soundtrack','2020-09-21',7500,281870,'Uplifting synth melodies with driving beats mirroring the awe and ambition of building massive structures in space','Antarsoft714@gmail.com'),
('eBay: Best App to Buy Sell! Online Shopping','2020-12-22',131500,128512,'Marketplace for buying and selling new and used items through auctions or direct sales','Sockware982@gmail.com'),
('Euro Truck Simulator 2','2020-03-15',128,27293743,'Relax and drive across a realistic depiction of Europe. Build your trucking company  customize your truck  and deliver cargo in a surprisingly zen experience','HQGames379@gmail.com'),
('Europa Universalis IV','2020-05-27',763,20062107,'A grand historical strategy game  Choose a nation and guide it through centuries of history - diplomacy  warfare  trade  and exploration','Slavitica442@gmail.com'),
('Evernote','2020-04-25',0,158578,'Note-taking app to capture ideas create to-do lists and centralize digital information','Coredumping903@gmail.com'),
('Exo One Soundtrack','2020-12-27',40500,404346,'Ambient guitar textures and expansive synth pads create a feeling of cosmic exploration and wonder','Coredumping903@gmail.com'),
('Facebook','2020-11-02',0,389879,'Connect with friends and family join groups share photos and videos and stay updated on news and events with Facebook\'s social networking platform','Loria513@gmail.com'),
('Factorio','2020-05-29',517,16073002,'Build and automate massive factories on an alien planet. Manage resources  research technologies  and defend yourself from the planet\'s inhabitants','Ideographer977@gmail.com'),
('Fez Soundtrack','2020-05-18',40000,688622,'Eclectic mix of chiptune melodies and glitch-inspired soundscapes creating a sense of retro-futurism and playful discovery','Nerial706@gmail.com'),
('Final Fantasy VII Remake Soundtrack','2020-10-21',36000,892809,'A masterful reimagining of classic themes sweeping orchestral pieces triumphant battle music and emotional character motifs','TALEROCK322@gmail.com'),
('Florence Soundtrack','2020-06-20',11000,998987,'A soundtrack centered around beautiful cello melodies reflecting themes of love loss and the passage of time','KazukiShiroma442@gmail.com'),
('FTL Faster Than Light Soundtrack','2020-08-26',29500,42278,'A blend of atmospheric synths and chiptune nostalgia creates a sense of tense strategic space exploration','Sciman101885@gmail.com'),
('gFlashPro - Flashcards & Tests','2020-10-30',398000,25997,'Create and study digital flashcards for effective learning and memorization','Loria513@gmail.com'),
('Google Earth','2020-11-11',474500,37214,'Explore the world in 3D with satellite imagery maps and detailed geographical information','Loria513@gmail.com'),
('Grand Theft Auto V','2020-07-02',248,7092562,'Immerse yourself in the criminal underbelly of Los Santos in this open-world action-adventure. Pull off heists  cause mayhem  or just explore the sprawling city and its surroundings','KazukiShiroma442@gmail.com'),
('GRIS','2020-12-25',788,21426145,'A serene and evocative platformer with a focus on art  music  and light puzzle-solving. A journey of emotional growth told through a stunningly beautiful world','Ideographer977@gmail.com'),
('Gris Soundtrack','2020-03-14',18000,445459,'Delicate piano sweeping strings and airy synthesizers portray a journey of emotional healing with a touch of the abstract','LeeroyLin823@gmail.com'),
('Hades','2020-10-22',418,29345641,'A roguelike dungeon crawler set in the Greek Underworld. Play as Zagreus  son of Hades  and fight your way out with the help of Olympian gods','HQGames379@gmail.com'),
('Hadestown (Original Broadway Cast Recording) Soundtrack','2020-05-04',32000,754748,'Folk blues and jazz reimagine the Greek myth of Orpheus and Eurydice with catchy melodies and powerful vocals','Enitvare931@gmail.com'),
('Hearts of Iron IV','2020-06-15',455,5548323,'World War II grand strategy game. Choose a country and guide its military  economic  and political path through history\'s greatest conflict','Vais740@gmail.com'),
('Hitman 3','2020-03-26',127,20350584,'Become the ultimate assassin  Agent 47  and travel the globe completing  elaborate and creative assassination missions. Experimentation and sandbox level design are key','FrozenCrate632@gmail.com'),
('Hollow Knight','2020-11-13',175,41006966,'A beautiful and atmospheric metroidvania with challenging combat and a haunting  mysterious world to explore. Delve into the depths of a forgotten insect kingdom','brutalsoft951@gmail.com'),
('Hollow Knight Soundtrack','2020-11-07',0,684061,'Haunting piano melodies and ambient soundscapes build a sense of mystery and melancholy exploration beneath the surface','Sockware982@gmail.com'),
('Hotline Miami Soundtrack','2020-06-20',0,602888,'Thumping electronic beats infused with 80s retro vibes drive relentless action and neon-soaked violence','Sockware982@gmail.com'),
('HotSchedules','2020-10-02',233500,82037,'Manage employee schedules streamline communication and optimize labor costs for restaurants hospitality businesses and other industries','Ideographer977@gmail.com'),
('Hurricane Pro','2020-07-24',381000,29518,'Track hurricanes and tropical storms with in-depth data and forecast models','Nerial706@gmail.com'),
('Hyper Light Drifter Soundtrack','2020-09-04',43000,346361,'Glitchy chiptune-inspired beats and ethereal synth washes creating a sense of retro-futurism and lonely exploration','Vais740@gmail.com'),
('iFart - The Original Fart Sounds App','2020-07-28',464000,60320,'Pull pranks and unleash a symphony of comical fart noises for light-hearted amusement','RebRank162@gmail.com'),
('Inside Soundtrack','2020-08-25',6000,751359,'Dark ambient drones distorted industrial sounds and unsettling orchestral moments creating a soundtrack as disquieting and mysterious as the game itself','Slavitica442@gmail.com'),
('iQuran','2020-11-07',241000,70707,'Read and explore the Quran with translations and recitation options','Ideographer977@gmail.com'),
('iReal Pro - Music Book & Play Along','2020-12-23',0,63283,'A valuable tool for musicians offering chord charts play-along backing tracks and practice functions','Ideographer977@gmail.com'),
('iStellar','2020-06-10',271500,44241,'Stargazing app with interactive sky maps constellations and celestial object information','Slavitica442@gmail.com'),
('iTranslate - Language Translator & Dictionary','2020-11-17',182000,287933,'Translate between numerous languages with text voice and even camera input','gnomearc969@gmail.com'),
('Journey Soundtrack','2020-07-17',21000,444620,'Ethereal and emotive score that evolves with the player\'s pilgrimage subtly guiding the desert quest','Sciman101885@gmail.com'),
('Juxtaposer','2020-09-19',198000,45229,'Create before and after image comparisons with overlay and slider effects','Sockware982@gmail.com'),
('Katamari Damacy Soundtrack','2020-05-12',43000,720523,'A delightfully eclectic mix of Japanese pop jazz electronica and pure absurdity the soundtrack is as joyful as rolling up the world','FrozenCrate632@gmail.com'),
('Kentucky Route Zero Soundtrack','2020-08-29',7500,26927,'Haunting Americana and folksy tunes echoing the sense of mystery and the melancholy of the magical-realist journey','Vais740@gmail.com'),
('Kerbal Space Program','2020-03-08',27,12359698,'Build rockets and attempt to launch a loveable race of aliens - the Kerbals - into space (and beyond!).  A true physics sandbox with both hilarity and genuine scientific challenge','illegaldogs323@gmail.com'),
('Lifesum Inspiring healthy lifestyle app','2020-08-24',403500,188017,'Nutrition tracker and healthy living guide with calorie counting recipes and workout plans','Ideographer977@gmail.com'),
('Line Rider iRide','2020-04-09',0,1646,'Draw creative tracks and guide your sledder through physics-based challenges with this classic web game turned mobile app','Antarsoft714@gmail.com'),
('LinkedIn','2020-02-24',0,273844,'Build your professional network connect with job opportunities advance your career and stay updated on industry news and insights','Sockware982@gmail.com'),
('Lose It! Weight Loss Program and Calorie Counter','2020-09-05',256500,182054,'Track calories reach weight loss goals and find healthy recipes for balanced nutrition','LeeroyLin823@gmail.com'),
('Machinarium Soundtrack','2020-10-18',30500,227629,'Whimsical melodies with a touch of melancholy often using acoustic and found-sound elements perfectly fitting a world of curious robots','Nerial706@gmail.com'),
('Mileage Log | Fahrtenbuch','2020-04-11',328500,71203,'Easily log your mileage for business or tax purposes','brutalsoft951@gmail.com'),
('Minecraft Soundtrack','2020-05-05',30500,509951,'Peaceful ambient soundscapes and gentle piano pieces provide a soothing backdrop to creativity and exploration','TALEROCK322@gmail.com'),
('Monster Hunter: World','2020-11-03',633,17648464,'Team up with friends or go solo to hunt down colossal beasts in stunning ecosystems. Craft gear from your quarry and take on even greater challenges','Sockware982@gmail.com'),
('Monument Valley Soundtrack','2020-06-26',18500,531826,'Ethereal soundscapes and shifting musical puzzles create a sense of geometric wonder and quiet contemplation','RebRank162@gmail.com'),
('MotionX GPS','2020-02-27',150000,56481,'Track your outdoor adventures record your performance data and navigate with detailed maps','gnomearc969@gmail.com'),
('Myst Soundtrack','2020-04-03',15500,361007,'Ethereal synths and atmospheric textures create a sense of mystery and otherworldly exploration','RebRank162@gmail.com'),
('NieR Replicant ver.1.22474487139 Soundtrack','2020-09-25',0,290334,'Haunting vocals shifting musical styles from orchestral to experimental perfectly capturing the unsettling beauty of its world','Slavitica442@gmail.com'),
('Night in the Woods Soundtrack','2020-05-24',13500,68227,'Indie-folk soundtrack tinged with nostalgia guitars synths and vocals capture small-town charm and youthful exploration','Loria513@gmail.com'),
('No Man\'s Sky Soundtrack','2020-09-24',31000,817130,'Uplifting synth-driven soundscapes by 65daysofstatic capturing the awe and vastness of space exploration','TALEROCK322@gmail.com'),
('NRJ Radio','2020-07-29',0,53426,'Listen to the popular French radio station NRJ on the go','illegaldogs323@gmail.com'),
('OpenTable - Restaurant Reservations','2020-11-03',0,93420,'Easily discover restaurants make reservations and earn rewards for dining out','gnomearc969@gmail.com'),
('Ori and the Will of the Wisps Soundtrack','2020-11-13',0,322318,'Lush orchestral arrangements underscore a journey filled with wonder beauty and poignant emotion','gnomearc969@gmail.com'),
('Outer Wilds Soundtrack','2020-11-05',40000,497732,'Folk-influenced acoustic melodies and ambient soundscapes evoke a sense of cosmic mystery and melancholy exploration','Slavitica442@gmail.com'),
('Oxenfree Soundtrack','2020-09-20',0,171890,'Shimmering synths and atmospheric textures with a touch of the supernatural creating a sense of mystery and unease','Enitvare931@gmail.com'),
('Oxygen Not Included','2020-02-20',393,15487280,'A space-colony survival sim. Manage your duplicants  build elaborate systems to deal with heat  oxygen  waste  and much more','gnomearc969@gmail.com'),
('Pandora - Music & Radio','2020-09-06',29000,130242,'Personalized streaming radio that creates stations based on your favorite songs and artists','LeeroyLin823@gmail.com'),
('Path of Exile','2020-03-18',361,15736826,'A free-to-play isometric action RPG known for its deep character customization and complex item system. Grind for the best loot and perfect your build','FrozenCrate632@gmail.com'),
('Payday 2','2020-02-28',863,41535981,'Team up for co-op heists in this crime-filled FPS. Case locations  objectives  and surprises keep each heist feeling fresh','TALEROCK322@gmail.com'),
('PayPal - Send and request money safely','2020-09-15',0,227795,'Securely send payments receive money and manage your account online or on the go with PayPal\'s trusted platform','illegaldogs323@gmail.com'),
('PCalc - The Best Calculator','2020-07-25',148500,49250,'Powerful scientific calculator with extensive features for everyday use and professionals','Loria513@gmail.com'),
('Period Tracker Deluxe','2020-12-13',180500,40216,'Track menstrual cycles ovulation and fertility windows for women\'s health','brutalsoft951@gmail.com'),
('Persona 5 Soundtrack','2020-12-05',0,516845,'Acid jazz funk and soulful vocals define a soundtrack brimming with style and rebellion. Its catchy melodies and high-energy tracks perfectly match the Phantom Thieves daring heists and battles against corruption','TALEROCK322@gmail.com'),
('Planet Coaster','2020-02-10',236,24689411,'Design and manage the amusement park of your dreams in incredible detail. Build thrilling coasters  manage park operations  and keep your guests happy','Antarsoft714@gmail.com'),
('Planet Zoo','2020-09-02',142,27619633,'Build and manage the ultimate zoo with breathtakingly realistic animals. Attention to animal welfare and conservation are key','Antarsoft714@gmail.com'),
('Plants vs. Zombies Soundtrack','2020-02-13',16000,504111,'Oddball jazz with playful vocals creates a surprisingly catchy backdrop for the comical undead battle on your lawn','illegaldogs323@gmail.com'),
('Portal 2','2020-09-11',985,14787301,'A first-person puzzle game with mind-bending physics and a hilarious  iconic storyline. Use portals to navigate impossible test chambers','Slavitica442@gmail.com'),
('Project Zomboid','2020-05-03',628,44711184,'A hardcore zombie survival game where the real danger is often how you react. Scavenge supplies  fortify your base  and try to stay alive as long as possible','LeeroyLin823@gmail.com'),
('ProPresenter Remote','2020-12-12',30500,46922,'Control presentations remotely on your ProPresenter equipped computer perfect for churches and presenters','illegaldogs323@gmail.com'),
('Psychonauts Soundtrack','2020-03-21',0,565730,'Big band swing Latin rhythms and quirky orchestrations match the bizarre and colorful psychic world perfectly','Indefatigable480@gmail.com'),
('RadarScope','2020-05-28',0,172772,'Advanced weather radar visualization tool for weather enthusiasts and professionals','gnomearc969@gmail.com'),
('Rain World Soundtrack','2020-05-18',9000,755375,'Sparse ambient soundscapes punctuated by heavy rain and environmental noises building a sense of vulnerability and desolation','Slavitica442@gmail.com'),
('RimWorld','2020-02-21',808,4166846,'A sci-fi colony simulator where you manage the lives of crash-landed colonists on a distant world.  Storytelling is key  as you deal with disasters  raiders  and the unique personalities of your survivors','Enitvare931@gmail.com'),
('Risk of Rain 2','2020-08-19',972,45292393,'A roguelike third-person shooter with overwhelming odds and addictive progression. Fight through hordes of monsters with friends or solo  unlocking new survivors and powerful items','Indefatigable480@gmail.com'),
('Risk of Rain 2 Soundtrack','2020-09-08',13500,579202,'Driving electronic beats and progressive rock intensity fuel a sense of relentless action against overwhelming odds','brutalsoft951@gmail.com'),
('Rust','2020-08-18',785,34581433,'A brutal multiplayer survival game where trust is hard-earned. Scavenge  build  defend yourself from other players  and raid their bases if you dare','Sciman101885@gmail.com'),
('Sable Soundtrack','2020-03-13',26000,847457,'A mix of Japanese Breakfast\'s atmospheric indie sound and ambient synth textures evoking a sense of quiet solitude and desert exploration','brutalsoft951@gmail.com'),
('Sayonara Wild Hearts Soundtrack','2020-12-24',32500,32832,'A vibrant synth-pop soundtrack brimming with catchy melodies driving beats and euphoric vocals a perfect match for the game\'s neon-drenched rhythm adventure','Ideographer977@gmail.com'),
('Shazam - Discover music artists videos & lyrics','2020-10-15',151000,147093,'Quickly identify songs playing around you with just a tap','LeeroyLin823@gmail.com'),
('Sid Meier\'s Civilization VI','2020-11-19',488,41497964,'Turn-based historical strategy where you guide a chosen civilization from antiquity to the modern age. Diplomacy  warfare  science  and culture are your tools','illegaldogs323@gmail.com'),
('Skyrim Soundtrack','2020-02-21',6500,873384,'Rousing orchestral pieces capture the grandeur of northern landscapes and the spirit of heroic adventure','RebRank162@gmail.com'),
('Slay the Spire','2020-09-14',754,4810521,'A roguelike deck-building game where you climb a procedurally-generated spire  battling unique creatures and building a powerful deck of cards','RebRank162@gmail.com'),
('Sonos Controller','2020-10-17',0,107983,'Manage your Sonos speaker system directly from your mobile device','Ideographer977@gmail.com'),
('Star Walk - Find Stars And Planets in Sky Above','2020-07-11',214000,150195,'Explore the night sky in real-time with this interactive astronomy app. Identify stars constellations planets and satellites by pointing your device upwards','TALEROCK322@gmail.com'),
('Stardew Valley','2020-12-04',903,47210940,'Escape the city and inherit your grandfather\'s farm in a charming pixel-art world. Farm  befriend townsfolk  explore mines  and create your ideal rural life','Indefatigable480@gmail.com'),
('Stardew Valley Soundtrack','2020-02-03',20500,232672,'Charming country-folk tunes and cheerful chiptune melodies evoke the simple life and the warmth of a close-knit community','Sciman101885@gmail.com'),
('Stellaris','2020-11-01',480,24475230,'A grand strategy game set in space. Build a galactic empire  explore the vastness of the cosmos  and encounter alien civilizations','gnomearc969@gmail.com'),
('Subnautica','2020-03-21',335,44012061,'An underwater survival-adventure set on an alien ocean planet. Craft  explore  and unravel the mysteries of the deep while being mindful of your oxygen and the lurking creatures','Nerial706@gmail.com'),
('Target','2020-09-30',435500,138754,'Find deals browse products and conveniently shop for essentials with the Target app','Sockware982@gmail.com'),
('Team Fortress 2','2020-09-20',560,41348979,'This free-to-play stylized multiplayer FPS pits teams of quirky characters against each other in objective-based game modes. Known for its humor and enduring community','Coredumping903@gmail.com'),
('Terraria','2020-09-10',919,32629711,'A  2D sandbox adventure where you can dig  build  and fight your way through fantastical worlds. Exploration and freedom are its hallmarks','FrozenCrate632@gmail.com'),
('Terraria Soundtrack','2020-08-09',29500,61835,'A mix of chiptune adventure and light orchestral themes create a balance of whimsy and exploration','Enitvare931@gmail.com'),
('The Binding of Isaac Rebirth Soundtrack','2020-10-22',0,537805,'Eerie and distorted chiptune melodies blended with orchestral elements creating a disturbing yet strangely compelling atmosphere','Vais740@gmail.com'),
('The Elder Scrolls V: Skyrim','2020-08-07',117,6635304,'A legendary open-world RPG where you become the Dragonborn  a hero with the power to shout dragons out of the sky. Explore a vast world  join factions  and craft your own legend','Coredumping903@gmail.com'),
('The Sims 4','2020-09-27',896,5793851,'The ultimate life simulator. Create your Sims  build their homes  shape their relationships  and direct their careers (or their chaos)','KazukiShiroma442@gmail.com'),
('The Stanley Parable Soundtrack','2020-11-27',16000,548830,'Eerie ambient textures with an undercurrent of deadpan humor reflects the surreal and often unpredictable narrative','KazukiShiroma442@gmail.com'),
('The Weather Channel: Forecast Radar & Alerts','2020-10-26',364500,199734,'Get accurate local weather forecasts detailed radar maps severe weather alerts and live weather news to stay prepared for any conditions','KazukiShiroma442@gmail.com'),
('The Witcher 3 Wild Hunt Soundtrack','2020-03-21',23000,803601,'Swelling orchestral themes intertwine with Polish folk influences evoking a vast fantasy world of monsters and magic','Antarsoft714@gmail.com'),
('The Witcher 3: Wild Hunt','2020-03-23',958,13693208,'Embark on a sprawling open-world RPG as Geralt of Rivia  a monster hunter searching for his adopted daughter amidst a war-torn land','Antarsoft714@gmail.com'),
('Total War: Warhammer II','2020-07-05',760,48628385,'Massive fantasy strategy combining turn-based empire management with spectacular real-time battles. Choose your faction and conquer the Warhammer world','HQGames379@gmail.com'),
('TouchOSC','2020-03-03',192000,4263,'Control music software and other applications remotely with a customizable touch interface','Sciman101885@gmail.com'),
('Transistor Soundtrack','2020-10-18',12500,194097,'Jazzy vocals sultry electronic beats and a touch of melancholy define a neo-noir city steeped in intrigue','Indefatigable480@gmail.com'),
('TripAdvisor Hotels Flights Restaurants','2020-06-20',167500,207907,'Your companion for finding and booking hotels flights and restaurants with reviews and comparisons','HQGames379@gmail.com'),
('Undertale Soundtrack','2020-09-21',11500,524551,'Iconic chiptune melodies that range from playful and quirky to surprisingly heartfelt and nostalgic','KazukiShiroma442@gmail.com'),
('Valheim','2020-06-21',420,21707755,'A Viking survival and exploration game set in a procedurally-generated world inspired by Norse mythology. Build  craft  sail  and fight for glory in Odin\'s name','brutalsoft951@gmail.com'),
('VLC Remote','2020-08-06',316000,31505,'Control the popular VLC media player from your mobile device for convenient playback management','FrozenCrate632@gmail.com'),
('Warframe','2020-05-11',397,12480731,'A free-to-play third-person shooter where you play as space ninjas  the Tenno. Fast-paced action and a focus on movement and abilities define its gameplay','gnomearc969@gmail.com'),
('WeatherBug','2020-05-19',183500,100524,'Get detailed weather forecasts real-time radar and severe weather alerts to stay informed about conditions','FrozenCrate632@gmail.com'),
('WeatherPro','2020-08-29',290500,69079,'Get reliable worldwide weather forecasts HD maps animated radar and severe weather alerts for planning outdoor activities with confidence','Sockware982@gmail.com'),
('White Noise','2020-04-06',77500,44129,'Relax or focus with ambient soundscapes ranging from natural environments to soothing mechanical hums','FrozenCrate632@gmail.com'),
('XCOM 2','2020-07-26',895,24384849,'Lead a resistance against an alien occupation in this turn-based tactics game. Strategize on a global scale  then take your squad into intense tactical missions','Coredumping903@gmail.com'),
('Yahoo Sports - Teams Scores News & Highlights','2020-06-12',430500,130583,'Stay updated on your favorite sports with scores news and highlights','KazukiShiroma442@gmail.com'),
('Yelp - Nearby Restaurants Shopping & Services','2020-06-16',321500,167407,'Find and review local businesses from restaurants to services and make informed decisions with Yelp\'s community-driven platform','illegaldogs323@gmail.com');
/*!40000 ALTER TABLE `aplikasi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aplikasi_pengguna`
--

DROP TABLE IF EXISTS `aplikasi_pengguna`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aplikasi_pengguna` (
  `judul_aplikasi` varchar(255) NOT NULL,
  `email_pengguna` varchar(255) NOT NULL,
  `total_waktu` int(11) NOT NULL,
  `waktu_terakhir` timestamp NOT NULL,
  `jumlah_achievement` int(11) NOT NULL,
  `user_rating` int(11) NOT NULL,
  PRIMARY KEY (`judul_aplikasi`,`email_pengguna`),
  KEY `email_pengguna` (`email_pengguna`),
  CONSTRAINT `aplikasi_pengguna_ibfk_1` FOREIGN KEY (`judul_aplikasi`) REFERENCES `aplikasi` (`judul_aplikasi`),
  CONSTRAINT `aplikasi_pengguna_ibfk_2` FOREIGN KEY (`email_pengguna`) REFERENCES `pengguna` (`email_pengguna`),
  CONSTRAINT `CONSTRAINT_1` CHECK (`user_rating` >= 0 and `user_rating` <= 5)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aplikasi_pengguna`
--

LOCK TABLES `aplikasi_pengguna` WRITE;
/*!40000 ALTER TABLE `aplikasi_pengguna` DISABLE KEYS */;
INSERT INTO `aplikasi_pengguna` VALUES
('ARK: Survival Evolved','annettetheresa166@gmail.com',5597486,'2023-01-21 15:06:49',39,0),
('Bloodborne Soundtrack','matthewjustin688@gmail.com',2561182,'2023-12-23 10:25:45',42,4),
('Cuphead The Delicious Last Course Soundtrack','christineemily332@gmail.com',2251240,'2022-07-21 22:06:38',0,4),
('Dead by Daylight','saramichelle760@gmail.com',2324648,'2023-08-05 13:17:09',172,0),
('Deliveries: a package tracker','shellydouglas597@gmail.com',4687937,'2022-06-24 12:43:54',131,2),
('Disco Elysium Soundtrack','christineemily332@gmail.com',1568102,'2022-05-18 13:34:37',119,2),
('Disco Elysium Soundtrack','judymelissa157@gmail.com',3424144,'2023-10-03 07:40:06',72,2),
('eBay: Best App to Buy Sell! Online Shopping','annettetheresa166@gmail.com',540806,'2023-01-16 14:09:07',0,4),
('Exo One Soundtrack','brianjoseph906@gmail.com',5364276,'2023-07-25 02:05:52',140,0),
('Facebook','meghananna578@gmail.com',1019695,'2023-06-07 01:52:42',64,0),
('Facebook','ronaldkenneth886@gmail.com',1437022,'2022-06-03 20:16:59',68,4),
('Final Fantasy VII Remake Soundtrack','judymelissa157@gmail.com',3643310,'2023-08-11 09:10:26',105,5),
('Florence Soundtrack','jessicadeanna988@gmail.com',4008519,'2024-02-10 08:34:05',199,4),
('Florence Soundtrack','shellydouglas597@gmail.com',2055371,'2022-09-12 01:10:38',71,1),
('gFlashPro - Flashcards & Tests','larryrhonda467@gmail.com',1586529,'2022-08-04 17:12:01',68,2),
('GRIS','reginadennis710@gmail.com',3724064,'2023-10-23 09:22:38',54,3),
('Gris Soundtrack','brianjoseph906@gmail.com',844650,'2022-12-30 12:58:30',176,3),
('Gris Soundtrack','katiedevon981@gmail.com',1335473,'2022-06-21 18:07:54',52,4),
('Hades','katiedevon981@gmail.com',3312924,'2022-06-03 00:32:05',2,3),
('Hades','matthewjustin688@gmail.com',231051,'2023-09-28 07:11:14',113,4),
('Hearts of Iron IV','aaronjason688@gmail.com',653127,'2022-12-26 23:29:42',0,5),
('Hitman 3','larryrhonda467@gmail.com',5081890,'2023-02-25 18:17:42',156,4),
('iStellar','shellydouglas597@gmail.com',5534552,'2023-09-29 20:04:01',141,4),
('Juxtaposer','judymelissa157@gmail.com',3720353,'2023-04-02 19:11:21',149,0),
('Juxtaposer','larryrhonda467@gmail.com',3642128,'2023-08-03 12:29:35',124,5),
('Juxtaposer','troykyle982@gmail.com',5327872,'2024-03-13 03:23:28',66,5),
('Katamari Damacy Soundtrack','conniejoseph617@gmail.com',5796159,'2023-02-23 19:49:01',116,1),
('Kerbal Space Program','christineemily332@gmail.com',2249043,'2022-05-21 11:58:27',59,1),
('Line Rider iRide','troykyle982@gmail.com',1030691,'2023-08-15 09:22:57',58,4),
('Machinarium Soundtrack','saramichelle760@gmail.com',1063481,'2022-10-03 11:45:47',42,1),
('Machinarium Soundtrack','timothycurtis437@gmail.com',5455385,'2023-08-02 05:46:49',31,4),
('NRJ Radio','timothycurtis437@gmail.com',21741,'2023-09-03 07:54:11',152,1),
('OpenTable - Restaurant Reservations','saramichelle760@gmail.com',1953237,'2023-05-14 22:56:16',6,2),
('PayPal - Send and request money safely','judymelissa157@gmail.com',2496870,'2023-09-01 08:31:43',32,1),
('Persona 5 Soundtrack','josephdavid518@gmail.com',2351479,'2023-03-29 05:54:03',160,5),
('Persona 5 Soundtrack','judymelissa157@gmail.com',1897872,'2024-01-27 02:29:51',117,1),
('Planet Coaster','gabriellekevin997@gmail.com',83316,'2023-05-15 20:55:56',44,4),
('Plants vs. Zombies Soundtrack','conniejoseph617@gmail.com',1379993,'2023-07-21 20:08:24',65,4),
('Project Zomboid','troykyle982@gmail.com',5289122,'2022-06-19 05:05:19',111,3),
('Psychonauts Soundtrack','gabriellekevin997@gmail.com',2126577,'2022-06-30 17:50:19',156,5),
('Rain World Soundtrack','larryrhonda467@gmail.com',2123632,'2023-10-05 14:30:05',76,3),
('Star Walk - Find Stars And Planets in Sky Above','timothycurtis437@gmail.com',1995691,'2023-06-04 10:43:20',102,1),
('Target','christineemily332@gmail.com',1731369,'2023-10-13 19:11:47',167,1),
('Team Fortress 2','katiedevon981@gmail.com',36205,'2023-10-09 13:23:14',89,5),
('The Elder Scrolls V: Skyrim','katiedevon981@gmail.com',5910263,'2022-09-21 12:57:08',45,2),
('Total War: Warhammer II','brianjoseph906@gmail.com',784739,'2023-04-05 00:25:23',114,2),
('TouchOSC','annettetheresa166@gmail.com',5102909,'2023-03-24 02:15:52',186,4),
('Valheim','jessicadeanna988@gmail.com',2185937,'2022-10-06 13:55:44',125,3),
('Valheim','matthewjustin688@gmail.com',4765303,'2023-10-18 14:09:33',0,2),
('VLC Remote','matthewjustin688@gmail.com',3505957,'2023-01-29 04:01:34',130,0);
/*!40000 ALTER TABLE `aplikasi_pengguna` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `awards`
--

DROP TABLE IF EXISTS `awards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `awards` (
  `kategori` varchar(255) NOT NULL,
  `tahun_award` int(11) NOT NULL,
  `judul_vidgame` varchar(255) NOT NULL,
  PRIMARY KEY (`tahun_award`,`kategori`),
  KEY `judul_vidgame` (`judul_vidgame`),
  CONSTRAINT `awards_ibfk_1` FOREIGN KEY (`judul_vidgame`) REFERENCES `aplikasi` (`judul_aplikasi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `awards`
--

LOCK TABLES `awards` WRITE;
/*!40000 ALTER TABLE `awards` DISABLE KEYS */;
INSERT INTO `awards` VALUES
('Better With Friends',2023,'7 Days to Die'),
('Best Game You Suck At',2023,'ARK: Survival Evolved'),
('Best Game You Suck At',2021,'Cities: Skylines'),
('Better With Friends',2021,'Cities: Skylines'),
('Outstanding World Design',2022,'Cities: Skylines'),
('Outstanding Debut',2023,'Conan Exiles'),
('Difficult Yet Rewarding',2021,'Dead by Daylight'),
('Better With Friends',2022,'Deep Rock Galactic'),
('Game of the Year',2023,'Deep Rock Galactic'),
('A Great Story',2023,'Destiny 2'),
('Most Atmospheric',2023,'Disco Elysium - The Final Cut'),
('Choices Matter',2021,'Don\'t Starve'),
('Most Atmospheric',2022,'Don\'t Starve'),
('Outstanding Story-Rich Game',2022,'Don\'t Starve Together'),
('Outstanding Story-Rich Game',2023,'Don\'t Starve Together'),
('Just 5 More Minutes',2021,'Europa Universalis IV'),
('Friendly Competition',2023,'Europa Universalis IV'),
('Friendly Competition',2021,'Factorio'),
('Most Innovative Gameplay',2021,'Factorio'),
('Difficult Yet Rewarding',2022,'Factorio'),
('Just 5 More Minutes',2023,'Grand Theft Auto V'),
('Most Innovative Gameplay',2023,'GRIS'),
('Outstanding Visual Style',2023,'GRIS'),
('A Great Story',2021,'Hearts of Iron IV'),
('Outstanding Visual Style',2021,'Hearts of Iron IV'),
('Outstanding Character',2021,'Hollow Knight'),
('Game of the Year',2022,'Kerbal Space Program'),
('Sit Back and RelaxOutstanding Game with a Rich World',2023,'Payday 2'),
('Outstanding Visual Style',2022,'Planet Coaster'),
('Best Local Co-op',2021,'Planet Zoo'),
('Choices Matter',2023,'Planet Zoo'),
('Most Immersive',2023,'Project Zomboid'),
('Choices Matter',2022,'RimWorld'),
('Sit Back and RelaxOutstanding Game with a Rich World',2022,'RimWorld'),
('Most Difficult',2022,'Risk of Rain 2'),
('Most Atmospheric',2021,'Sid Meier\'s Civilization VI'),
('Outstanding World Design',2021,'Sid Meier\'s Civilization VI'),
('Most Difficult',2023,'Sid Meier\'s Civilization VI'),
('Outstanding Story-Rich Game',2021,'Slay the Spire'),
('Sit Back and RelaxOutstanding Game with a Rich World',2021,'Slay the Spire'),
('Outstanding Audio Design',2021,'Stardew Valley'),
('Best Game You Suck At',2022,'Stellaris'),
('Outstanding Character',2023,'Stellaris'),
('Best Local Co-op',2023,'Subnautica'),
('Best Local Co-op',2022,'Team Fortress 2'),
('A Great Story',2022,'Terraria'),
('Just 5 More Minutes',2022,'The Elder Scrolls V: Skyrim'),
('Outstanding Debut',2022,'The Elder Scrolls V: Skyrim'),
('Most Immersive',2021,'The Sims 4'),
('Most Immersive',2022,'The Sims 4'),
('Most Innovative Gameplay',2022,'The Sims 4'),
('Outstanding World Design',2023,'The Sims 4'),
('Outstanding Debut',2021,'The Witcher 3: Wild Hunt'),
('Most Difficult',2021,'Total War: Warhammer II'),
('Friendly Competition',2022,'Total War: Warhammer II'),
('Difficult Yet Rewarding',2023,'Total War: Warhammer II'),
('Game of the Year',2021,'Valheim'),
('Outstanding Audio Design',2023,'Valheim'),
('Outstanding Audio Design',2022,'Warframe'),
('Outstanding Character',2022,'XCOM 2');
/*!40000 ALTER TABLE `awards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `developer`
--

DROP TABLE IF EXISTS `developer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `developer` (
  `email_developer` varchar(255) NOT NULL,
  `nama_developer` varchar(255) NOT NULL,
  `tanggal_pendirian` date NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  PRIMARY KEY (`email_developer`),
  UNIQUE KEY `deskripsi` (`deskripsi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `developer`
--

LOCK TABLES `developer` WRITE;
/*!40000 ALTER TABLE `developer` DISABLE KEYS */;
INSERT INTO `developer` VALUES
('Antarsoft714@gmail.com','Antarsoft','1999-07-24','Official sign president. Recently coach worry director. Must letter eat career miss amount yet.'),
('brutalsoft951@gmail.com','brutalsoft','2016-01-30','Spend camera mouth give. Note it up star may have.'),
('Coredumping903@gmail.com','Coredumping','2017-03-14','Wish play agent state beautiful network reason.'),
('Enitvare931@gmail.com','Enitvare','2000-05-24','Stand plant couple movement understand. Sing soon finish claim.'),
('FrozenCrate632@gmail.com','FrozenCrate','2017-12-29','Future food indicate pick nature everything. Kind employee itself yeah hard different.'),
('gnomearc969@gmail.com','gnomearc','1995-07-22','Mrs we job single rule. Sign admit ten truth put marriage social ready.'),
('HQGames379@gmail.com','HQGames','2018-09-11','Law speak since writer. Off laugh lot might. Light whatever senior indeed century lose.'),
('Ideographer977@gmail.com','Ideographer','2014-03-01','Important form every owner. Including get new bring.'),
('illegaldogs323@gmail.com','illegaldogs','2006-08-30','Music explain decade very discover. Room game treat push fire wear.'),
('Indefatigable480@gmail.com','Indefatigable','1999-03-30','Oil ten mind interest after throughout do. Paper surface fact you.'),
('KazukiShiroma442@gmail.com','KazukiShiroma','1999-01-19','Performance tell expect usually peace name card. Five reduce southern system girl.'),
('LeeroyLin823@gmail.com','LeeroyLin','1995-05-14','Suffer last positive. Population purpose sort could since half.'),
('Loria513@gmail.com','Loria','2018-09-27','Management actually city enough manager boy talk expect. Age discussion reason own.'),
('Nerial706@gmail.com','Nerial','2008-09-27','Owner feeling show well get measure quickly entire. Result message senior follow three real level.'),
('RebRank162@gmail.com','RebRank','1992-11-10','Dog end news then. Mrs station citizen forward two. Picture society performance man stuff cultural.'),
('Sciman101885@gmail.com','Sciman101','2018-10-27','Defense every experience scene really keep doctor. Food out reduce collection management yet how.'),
('Slavitica442@gmail.com','Slavitica','1997-07-30','Area manager political fly.'),
('Sockware982@gmail.com','Sockware','2019-06-19','Billion box figure board human than cultural big. Picture some quickly positive.'),
('TALEROCK322@gmail.com','TALEROCK','2009-03-03','Physical spend adult bank wear reality. Cup develop political woman whether guy.'),
('Vais740@gmail.com','Vais','2003-05-26','Standard short stock quickly operation whether arm. Half although feeling major around step.');
/*!40000 ALTER TABLE `developer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dlc`
--

DROP TABLE IF EXISTS `dlc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dlc` (
  `judul_dlc` varchar(255) NOT NULL,
  `judul_vidgame` varchar(255) NOT NULL,
  `harga_dlc` int(11) NOT NULL,
  `tanggal_peluncuran_dlc` date NOT NULL,
  PRIMARY KEY (`judul_dlc`,`judul_vidgame`),
  KEY `judul_vidgame` (`judul_vidgame`),
  CONSTRAINT `dlc_ibfk_1` FOREIGN KEY (`judul_vidgame`) REFERENCES `aplikasi` (`judul_aplikasi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dlc`
--

LOCK TABLES `dlc` WRITE;
/*!40000 ALTER TABLE `dlc` DISABLE KEYS */;
INSERT INTO `dlc` VALUES
('Aberration','ARK: Survival Evolved',160500,'2022-02-09'),
('Beyond Light','Destiny 2',0,'2021-02-24'),
('Blood and Wine','The Witcher 3: Wild Hunt',164000,'2023-11-05'),
('British GT Pack','Assetto Corsa Competizione',32500,'2024-02-10'),
('Conservation Pack','Planet Zoo',433000,'2021-10-13'),
('Darkness Falls Overhaul','7 Days to Die',0,'2024-03-10'),
('Dawnguard','The Elder Scrolls V: Skyrim',0,'2021-09-19'),
('Director\'s Cut','Borderlands 3',139500,'2023-09-10'),
('Dragonborn','The Elder Scrolls V: Skyrim',474500,'2021-09-29'),
('Extinction','ARK: Survival Evolved',0,'2024-04-16'),
('Game Packs','The Sims 4',0,'2021-07-09'),
('Gathering Storm','Sid Meier\'s Civilization VI',0,'2022-07-26'),
('Genesis Part 1 & 2','ARK: Survival Evolved',420000,'2024-05-05'),
('GT4 Pack','Assetto Corsa Competizione',0,'2021-05-31'),
('Guns Love and Tentacles','Borderlands 3',0,'2022-02-05'),
('Hamlet','Don\'t Starve',0,'2024-02-22'),
('Hearthfire','The Elder Scrolls V: Skyrim',164500,'2021-02-05'),
('Hearts of Stone','The Witcher 3: Wild Hunt',490000,'2021-08-01'),
('Hellraiser','Dead by Daylight',186500,'2023-12-09'),
('Iceborne','Monster Hunter: World',118000,'2023-02-22'),
('Ideology','RimWorld',0,'2021-07-12'),
('Industries','Cities: Skylines',219500,'2022-05-08'),
('Instruments Pack','Rust',236000,'2023-02-21'),
('Isle of Siptah','Conan Exiles',0,'2022-11-22'),
('Jungle Inferno','Team Fortress 2',483500,'2024-01-17'),
('Legacy Collection','Payday 2',228000,'2022-03-26'),
('Leviathans Story Pack','Stellaris',168500,'2023-05-08'),
('Lightfall','Destiny 2',351000,'2023-01-18'),
('Mann vs Machine','Team Fortress 2',45000,'2023-10-09'),
('Mass Transit','Cities: Skylines',431500,'2023-08-25'),
('Multiple Animal Packs','Planet Zoo',258500,'2022-02-12'),
('Multiple Expansions','The Sims 4',307000,'2021-10-10'),
('Numerous Expansions','Europa Universalis IV',111500,'2021-07-30'),
('Numerous Expansions','Hearts of Iron IV',0,'2021-07-05'),
('Numerous Expansions','Path of Exile',0,'2024-01-24'),
('Numerous Heists','Payday 2',0,'2022-08-14'),
('Numerous Map Expansions','Euro Truck Simulator 2',416000,'2021-05-21'),
('People of the Dragon','Conan Exiles',103000,'2021-02-09'),
('Psycho Krieg and the Fantastic Fustercluck','Borderlands 3',102000,'2023-12-16'),
('Reign of Giants','Don\'t Starve',58500,'2023-03-19'),
('Resident Evil','Dead by Daylight',0,'2022-11-26'),
('Riders of Hyboria','Conan Exiles',444500,'2021-04-12'),
('Rise and Fall','Sid Meier\'s Civilization VI',91000,'2021-09-26'),
('Royalty','RimWorld',8500,'2022-12-19'),
('Scorched Earth','ARK: Survival Evolved',110000,'2021-10-28'),
('Shipwrecked','Don\'t Starve',371500,'2022-08-18'),
('Snowfall','Cities: Skylines',477500,'2023-06-07'),
('Stranger Things','Dead by Daylight',0,'2021-06-20'),
('Stuff Packs','The Sims 4',255000,'2023-08-02'),
('The New War','Warframe',184000,'2023-07-15'),
('The Second Dream','Warframe',111500,'2022-06-14'),
('The Witch Queen','Destiny 2',233000,'2023-02-03'),
('Tuning Packs','Euro Truck Simulator 2',0,'2023-10-31'),
('Undead Legacy','7 Days to Die',0,'2024-02-25'),
('Utopia','Stellaris',432000,'2021-11-29'),
('Voice Props Pack','Rust',386500,'2024-04-06'),
('War of the Chosen','XCOM 2',5500,'2023-10-12');
/*!40000 ALTER TABLE `dlc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum` (
  `judul_forum` varchar(255) NOT NULL,
  `waktu_pembuatan` timestamp NOT NULL,
  `email_pengguna` varchar(255) NOT NULL,
  `judul_aplikasi` varchar(255) NOT NULL,
  PRIMARY KEY (`judul_forum`),
  KEY `email_pengguna` (`email_pengguna`),
  KEY `judul_aplikasi` (`judul_aplikasi`),
  CONSTRAINT `forum_ibfk_1` FOREIGN KEY (`email_pengguna`) REFERENCES `pengguna` (`email_pengguna`),
  CONSTRAINT `forum_ibfk_2` FOREIGN KEY (`judul_aplikasi`) REFERENCES `aplikasi` (`judul_aplikasi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES
('Activity positive instead.','2022-02-01 07:10:17','timothycurtis437@gmail.com','Oxenfree Soundtrack'),
('Air figure.','2021-09-18 03:41:53','annettetheresa166@gmail.com','Mileage Log | Fahrtenbuch'),
('Any close rule investment.','2022-02-22 21:44:15','ronaldkenneth886@gmail.com','Stardew Valley'),
('Article reduce.','2022-01-25 20:56:25','aaronjason688@gmail.com','Rain World Soundtrack'),
('Bag onto collection office.','2021-08-12 02:09:30','annettetheresa166@gmail.com','No Man\'s Sky Soundtrack'),
('Base drug attention.','2022-03-17 10:30:08','aaronjason688@gmail.com','Hearts of Iron IV'),
('Catch join change.','2021-06-02 08:32:18','meghananna578@gmail.com','Crypt of the Necrodancer Soundtrack'),
('Dinner model.','2021-07-12 06:26:23','saramichelle760@gmail.com','Sonos Controller'),
('Event least.','2022-04-08 10:49:10','saramichelle760@gmail.com','Stardew Valley Soundtrack'),
('Evidence author affect.','2021-12-16 16:13:09','larryrhonda467@gmail.com','Dark Souls III Soundtrack'),
('Finally police.','2021-09-07 15:20:11','shellydouglas597@gmail.com','Euro Truck Simulator 2'),
('Follow spring.','2021-12-07 22:25:55','katiedevon981@gmail.com','WeatherPro'),
('Have kitchen very.','2021-07-28 07:22:12','timothycurtis437@gmail.com','NRJ Radio'),
('His real performance.','2021-12-26 12:00:37','matthewjustin688@gmail.com','OpenTable - Restaurant Reservations'),
('Level cut wear method.','2022-04-16 04:11:28','christineemily332@gmail.com','Sayonara Wild Hearts Soundtrack'),
('Level in.','2021-09-29 07:45:27','reginadennis710@gmail.com','Disco Elysium Soundtrack'),
('Lose card become.','2022-03-19 21:34:46','shellydouglas597@gmail.com','Facebook'),
('Lot.','2022-01-04 01:03:03','meghananna578@gmail.com','NieR Replicant ver.1.22474487139 Soundtrack'),
('Material project then.','2021-07-23 00:23:03','jessicadeanna988@gmail.com','Subnautica'),
('Maybe poor.','2022-01-01 09:35:33','reginadennis710@gmail.com','WeatherBug'),
('Mention trial.','2021-08-13 05:14:41','shellydouglas597@gmail.com','Hearts of Iron IV'),
('Mrs general task.','2021-12-28 13:55:44','gabriellekevin997@gmail.com','Yelp - Nearby Restaurants Shopping & Services'),
('Nature its technology.','2022-05-01 09:21:14','annettetheresa166@gmail.com','Ori and the Will of the Wisps Soundtrack'),
('Note its born already.','2021-06-20 10:32:23','saramichelle760@gmail.com','Terraria Soundtrack'),
('Oil program.','2021-07-20 22:45:05','troykyle982@gmail.com','HotSchedules'),
('Pattern all that.','2021-09-30 05:51:39','larryrhonda467@gmail.com','Devil May Cry 5 Soundtrack'),
('Pay most region.','2021-08-21 10:25:29','jessicadeanna988@gmail.com','Yahoo Sports - Teams Scores News & Highlights'),
('Physical whether.','2021-10-07 20:17:13','josephdavid518@gmail.com','Lose It! Weight Loss Program and Calorie Counter'),
('Place conference.','2021-06-26 00:33:36','matthewjustin688@gmail.com','NieR Replicant ver.1.22474487139 Soundtrack'),
('Politics scene sell.','2022-03-30 23:34:09','saramichelle760@gmail.com','Stardew Valley'),
('Possible drive.','2021-08-13 13:05:53','ronaldkenneth886@gmail.com','XCOM 2'),
('Prevent compare Mrs.','2021-06-13 05:07:42','saramichelle760@gmail.com','Stardew Valley'),
('Question.','2021-06-08 08:47:53','troykyle982@gmail.com','Portal 2'),
('Should maybe.','2021-12-10 10:07:56','annettetheresa166@gmail.com','RadarScope'),
('Significant leg too.','2022-02-02 20:23:45','judymelissa157@gmail.com','ProPresenter Remote'),
('Small.','2021-12-29 14:33:08','matthewjustin688@gmail.com','No Man\'s Sky Soundtrack'),
('Smile move.','2021-08-01 18:07:04','troykyle982@gmail.com','Euro Truck Simulator 2'),
('Speak couple.','2022-05-06 17:47:58','annettetheresa166@gmail.com','TouchOSC'),
('Standard director.','2021-08-06 15:31:43','troykyle982@gmail.com','Rust'),
('Statement memory.','2022-03-26 17:29:18','lisacaitlin354@gmail.com','Warframe'),
('Summer reality.','2022-04-19 20:53:46','judymelissa157@gmail.com','Hades'),
('Support well.','2021-12-21 19:21:20','annettetheresa166@gmail.com','Crypt of the Necrodancer Soundtrack'),
('Then member.','2021-06-03 22:36:10','conniejoseph617@gmail.com','Outer Wilds Soundtrack'),
('There bad bring major.','2022-05-06 16:51:55','aaronjason688@gmail.com','The Witcher 3: Wild Hunt'),
('Those.','2021-10-01 09:00:12','gabriellekevin997@gmail.com','Psychonauts Soundtrack'),
('Together food music.','2022-01-17 14:33:38','katiedevon981@gmail.com','Allrecipes Dinner Spinner'),
('Toward case.','2021-11-27 03:54:02','gabriellekevin997@gmail.com','Planet Coaster'),
('Under move rise.','2021-12-20 12:36:20','brianjoseph906@gmail.com','Destiny 2'),
('Whose break.','2021-11-10 11:24:51','reginadennis710@gmail.com','The Weather Channel: Forecast Radar & Alerts'),
('Yard clear left hour.','2021-05-30 23:02:48','christineemily332@gmail.com','Don\'t Starve');
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lagu`
--

DROP TABLE IF EXISTS `lagu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lagu` (
  `judul_lagu` varchar(255) NOT NULL,
  `durasi` int(11) NOT NULL,
  `judul_soundtrack` varchar(255) NOT NULL,
  PRIMARY KEY (`judul_lagu`,`judul_soundtrack`),
  KEY `judul_soundtrack` (`judul_soundtrack`),
  CONSTRAINT `lagu_ibfk_1` FOREIGN KEY (`judul_soundtrack`) REFERENCES `aplikasi` (`judul_aplikasi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lagu`
--

LOCK TABLES `lagu` WRITE;
/*!40000 ALTER TABLE `lagu` DISABLE KEYS */;
INSERT INTO `lagu` VALUES
('Adventure',180,'Fez Soundtrack'),
('Always',178,'Florence Soundtrack'),
('Apotheosis',139,'Journey Soundtrack'),
('Asimov',207,'No Man\'s Sky Soundtrack'),
('Astral Alley',275,'Night in the Woods Soundtrack'),
('Baking the Wondertart',295,'Cuphead The Delicious Last Course Soundtrack'),
('Battle Against a True Hero',151,'Undertale Soundtrack'),
('BB\'s Theme',266,'Death Stranding Soundtrack'),
('Beacon Beach',228,'Oxenfree Soundtrack'),
('Begin Again',189,'Sayonara Wild Hearts Soundtrack'),
('Beneath the Mask',120,'Persona 5 Soundtrack'),
('Black Velvetopia',197,'Psychonauts Soundtrack'),
('Boss 1',237,'Terraria Soundtrack'),
('Build That Wall (Zia\'s Theme)',166,'Bastion Soundtrack'),
('Bury the Light',225,'Devil May Cry 5 Soundtrack'),
('Cerebrawl',163,'Plants vs. Zombies Soundtrack'),
('City of Tears',121,'Hollow Knight Soundtrack'),
('Civil',192,'FTL Faster Than Light Soundtrack'),
('Colossus',228,'FTL Faster Than Light Soundtrack'),
('Confusion Part 3',218,'The Stanley Parable Soundtrack'),
('Crimson Cloud',238,'Devil May Cry 5 Soundtrack'),
('Depart',201,'Gris Soundtrack'),
('Determination',253,'Undertale Soundtrack'),
('Devil Trigger',254,'Devil May Cry 5 Soundtrack'),
('Disco Descent (Danny Baranowsky)',219,'Crypt of the Necrodancer Soundtrack'),
('Don\'t You Forget About Me',235,'The Stanley Parable Soundtrack'),
('Dragonborn',281,'Skyrim Soundtrack'),
('Dunes',144,'Exo One Soundtrack'),
('Emergence',132,'Exo One Soundtrack'),
('End Times',301,'Outer Wilds Soundtrack'),
('Ending',134,'Baba is You Soundtrack'),
('Explore',162,'FTL Faster Than Light Soundtrack'),
('Fall (Ghost Synth)',303,'Stardew Valley Soundtrack'),
('Far Horizons',152,'Skyrim Soundtrack'),
('Flow',260,'Fez Soundtrack'),
('Glider',167,'Sable Soundtrack'),
('Graze the Roof',230,'Plants vs. Zombies Soundtrack'),
('Greenpath',236,'Hollow Knight Soundtrack'),
('Gris Pt. 1',189,'Gris Soundtrack'),
('Gris Pt. 3',253,'Gris Soundtrack'),
('Here\'s to Now',233,'Kentucky Route Zero Soundtrack'),
('Hidden Temple',149,'Monument Valley Soundtrack'),
('High-Noon Hoopla',203,'Cuphead The Delicious Last Course Soundtrack'),
('His Theme',144,'Undertale Soundtrack'),
('Hunt or Be Hunted',141,'The Witcher 3 Wild Hunt Soundtrack'),
('Hydrogen',195,'Hotline Miami Soundtrack'),
('In Circles',211,'Transistor Soundtrack'),
('Inkwell Isle Four',155,'Cuphead The Delicious Last Course Soundtrack'),
('Iudex Gundyr',167,'Dark Souls III Soundtrack'),
('Katamari on the Rocks',299,'Katamari Damacy Soundtrack'),
('Lake',181,'Baba is You Soundtrack'),
('Let the Battles Begin! - A Merc\'s Job',282,'Final Fantasy VII Remake Soundtrack'),
('Life Will Change',250,'Persona 5 Soundtrack'),
('Light Years',268,'Dyson Sphere Program Soundtrack'),
('Lonely Rolling Star',283,'Katamari Damacy Soundtrack'),
('Long Journey Home',211,'Kentucky Route Zero Soundtrack'),
('Loonboon',280,'Plants vs. Zombies Soundtrack'),
('Luma Pools',222,'Ori and the Will of the Wisps Soundtrack'),
('Main Theme',229,'Dark Souls III Soundtrack'),
('Main Theme',273,'Florence Soundtrack'),
('Main Theme',136,'Ori and the Will of the Wisps Soundtrack'),
('Main Theme of FFVII',266,'Final Fantasy VII Remake Soundtrack'),
('Meat Circus',292,'Psychonauts Soundtrack'),
('Mice on Venus',259,'Minecraft Soundtrack'),
('Milkman Conspiracy',128,'Psychonauts Soundtrack'),
('Mother',229,'Bastion Soundtrack'),
('Mr. Handagote',159,'Machinarium Soundtrack'),
('My Heaven',154,'The Stanley Parable Soundtrack'),
('Myst Theme',151,'Myst Soundtrack'),
('Nascence',128,'Journey Soundtrack'),
('Never Fade Away',136,'Cyberpunk 2077 Soundtrack'),
('Old Friends',292,'Transistor Soundtrack'),
('One-Winged Angel',235,'Final Fantasy VII Remake Soundtrack'),
('Overworld Day',274,'Terraria Soundtrack'),
('Panacea',244,'Hyper Light Drifter Soundtrack'),
('Paris 2',172,'Hotline Miami Soundtrack'),
('Penance',240,'The Binding of Isaac Rebirth Soundtrack'),
('Please Don\'t Stop (Chvrches)',202,'Death Stranding Soundtrack'),
('Precinct 41 Day',301,'Disco Elysium Soundtrack'),
('Pumpkin Head Guy',219,'Night in the Woods Soundtrack'),
('Reverse',234,'Inside Soundtrack'),
('Rivers in the Desert',190,'Persona 5 Soundtrack'),
('Roller Mobster',259,'Hotline Miami Soundtrack'),
('Sacrificial',162,'The Binding of Isaac Rebirth Soundtrack'),
('Sealed Vessel',150,'Hollow Knight Soundtrack'),
('Selenitic Age',200,'Myst Soundtrack'),
('Setting Sail',203,'Bastion Soundtrack'),
('Shriek and Ori',166,'Ori and the Will of the Wisps Soundtrack'),
('Signals',126,'Transistor Soundtrack'),
('Silver for Monsters',218,'The Witcher 3 Wild Hunt Soundtrack'),
('Snowy Forest',198,'Baba is You Soundtrack'),
('Song of the Ancients - Devola',140,'NieR Replicant ver.1.22474487139 Soundtrack'),
('Soul of Cinder',284,'Dark Souls III Soundtrack'),
('Sparse',300,'Rain World Soundtrack'),
('Spring Day',176,'Stardew Valley Soundtrack'),
('Stoneship Age',280,'Myst Soundtrack'),
('Subwoofer Lullaby',286,'Minecraft Soundtrack'),
('Summer (The Sun Can Bend An Orange Sky)',221,'Stardew Valley Soundtrack'),
('Supermoon',131,'No Man\'s Sky Soundtrack'),
('Sweden',195,'Minecraft Soundtrack'),
('The Bottom',217,'Machinarium Soundtrack'),
('The Ewer',259,'Sable Soundtrack'),
('The Fields of Ard Skellig',242,'The Witcher 3 Wild Hunt Soundtrack'),
('The Garden',152,'Monument Valley Soundtrack'),
('The Glimmering',264,'Rain World Soundtrack'),
('The Hunter',206,'Bloodborne Soundtrack'),
('The Rain Formerly Known as Purple',215,'Risk of Rain 2 Soundtrack'),
('The Rebel Path',262,'Cyberpunk 2077 Soundtrack'),
('The Road of Trials',151,'Journey Soundtrack'),
('The Sea',303,'Machinarium Soundtrack'),
('The Streets of Whiterun',262,'Skyrim Soundtrack'),
('The Wight to Remain (FamilyJules)',222,'Crypt of the Necrodancer Soundtrack'),
('The World We Knew',174,'Sayonara Wild Hearts Soundtrack'),
('They\'re Finally Here',177,'Risk of Rain 2 Soundtrack'),
('Totem Canyon',229,'Monument Valley Soundtrack'),
('Underground Corruption',125,'Terraria Soundtrack'),
('V',242,'Cyberpunk 2077 Soundtrack'),
('Way Down Hadestown',122,'Hadestown (Original Broadway Cast Recording) Soundtrack'),
('Weird Autumn',174,'Night in the Woods Soundtrack'),
('Wild Hearts Never Die',237,'Sayonara Wild Hearts Soundtrack'),
('You Are Smart',269,'Katamari Damacy Soundtrack');
/*!40000 ALTER TABLE `lagu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pengguna`
--

DROP TABLE IF EXISTS `pengguna`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pengguna` (
  `email_pengguna` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama_depan` varchar(255) NOT NULL,
  `nama_belakang` varchar(255) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `level` int(11) NOT NULL,
  PRIMARY KEY (`email_pengguna`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pengguna`
--

LOCK TABLES `pengguna` WRITE;
/*!40000 ALTER TABLE `pengguna` DISABLE KEYS */;
INSERT INTO `pengguna` VALUES
('aaronjason688@gmail.com','tuckeramanda','$pTriTIoT+D7','Aaron','Jason','1993-11-06',1),
('annettetheresa166@gmail.com','rnoble','+1JNrTxk_4PB','Annette','Theresa','1998-09-07',31),
('brianjoseph906@gmail.com','vhenson','K(1T@qhEF*MF','Brian','Joseph','1998-04-11',96),
('christineemily332@gmail.com','rstone','m(HXyodd__1I','Christine','Emily','2002-07-20',3),
('conniejoseph617@gmail.com','briannamullen','b)obUDb2&d!2','Connie','Joseph','1996-09-21',30),
('gabriellekevin997@gmail.com','fkoch','VI6M1kJcD!8K','Gabrielle','Kevin','2016-11-13',66),
('jessicadeanna988@gmail.com','arnoldpaul','b)b$QigXaA0I','Jessica','Deanna','1990-04-24',38),
('josephdavid518@gmail.com','betty75','$bLIduqI1iu8','Joseph','David','2002-05-07',72),
('judymelissa157@gmail.com','amanda26','%IT8#BJzY#8c','Judy','Melissa','2013-01-03',54),
('katiedevon981@gmail.com','gruiz','a3TmwlbR$!QM','Katie','Devon','2012-09-26',7),
('larryrhonda467@gmail.com','fcook','5t!_5#Hfwd@(','Larry','Rhonda','1998-11-22',75),
('lisacaitlin354@gmail.com','johnsondaniel','@K6aK0Yem$mM','Lisa','Caitlin','1993-06-15',98),
('matthewjustin688@gmail.com','allison05','*9HmdgHa0AGo','Matthew','Justin','1997-09-11',7),
('meghananna578@gmail.com','qtorres','_en5BSpTrQ62','Meghan','Anna','2019-09-26',65),
('reginadennis710@gmail.com','jessicawood','R5SL1D^f^oeY','Regina','Dennis','2002-03-05',91),
('ronaldkenneth886@gmail.com','sfloyd','B$9Yrh&W*LOf','Ronald','Kenneth','2017-12-18',25),
('saramichelle760@gmail.com','donnaconner','!23MVnVQawfl','Sara','Michelle','2019-03-18',80),
('shellydouglas597@gmail.com','emily71','Si5bsVeL#1LZ','Shelly','Douglas','1990-08-26',56),
('timothycurtis437@gmail.com','gpark','^BHAqwVY0#Bc','Timothy','Curtis','2007-06-16',88),
('troykyle982@gmail.com','nicholas57','kIqXFWl_^W9m','Troy','Kyle','1999-08-16',50);
/*!40000 ALTER TABLE `pengguna` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pengikut_developer`
--

DROP TABLE IF EXISTS `pengikut_developer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pengikut_developer` (
  `email_pengguna` varchar(255) NOT NULL,
  `email_developer` varchar(255) NOT NULL,
  PRIMARY KEY (`email_pengguna`,`email_developer`),
  KEY `email_developer` (`email_developer`),
  CONSTRAINT `pengikut_developer_ibfk_1` FOREIGN KEY (`email_pengguna`) REFERENCES `pengguna` (`email_pengguna`),
  CONSTRAINT `pengikut_developer_ibfk_2` FOREIGN KEY (`email_developer`) REFERENCES `developer` (`email_developer`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pengikut_developer`
--

LOCK TABLES `pengikut_developer` WRITE;
/*!40000 ALTER TABLE `pengikut_developer` DISABLE KEYS */;
INSERT INTO `pengikut_developer` VALUES
('katiedevon981@gmail.com','Antarsoft714@gmail.com'),
('meghananna578@gmail.com','Antarsoft714@gmail.com'),
('katiedevon981@gmail.com','brutalsoft951@gmail.com'),
('matthewjustin688@gmail.com','brutalsoft951@gmail.com'),
('aaronjason688@gmail.com','Coredumping903@gmail.com'),
('annettetheresa166@gmail.com','Coredumping903@gmail.com'),
('jessicadeanna988@gmail.com','Coredumping903@gmail.com'),
('josephdavid518@gmail.com','Coredumping903@gmail.com'),
('judymelissa157@gmail.com','Coredumping903@gmail.com'),
('katiedevon981@gmail.com','Coredumping903@gmail.com'),
('reginadennis710@gmail.com','Coredumping903@gmail.com'),
('saramichelle760@gmail.com','Coredumping903@gmail.com'),
('troykyle982@gmail.com','Coredumping903@gmail.com'),
('gabriellekevin997@gmail.com','Enitvare931@gmail.com'),
('jessicadeanna988@gmail.com','Enitvare931@gmail.com'),
('josephdavid518@gmail.com','Enitvare931@gmail.com'),
('larryrhonda467@gmail.com','Enitvare931@gmail.com'),
('ronaldkenneth886@gmail.com','Enitvare931@gmail.com'),
('troykyle982@gmail.com','Enitvare931@gmail.com'),
('aaronjason688@gmail.com','FrozenCrate632@gmail.com'),
('annettetheresa166@gmail.com','FrozenCrate632@gmail.com'),
('gabriellekevin997@gmail.com','FrozenCrate632@gmail.com'),
('matthewjustin688@gmail.com','FrozenCrate632@gmail.com'),
('meghananna578@gmail.com','FrozenCrate632@gmail.com'),
('saramichelle760@gmail.com','FrozenCrate632@gmail.com'),
('troykyle982@gmail.com','FrozenCrate632@gmail.com'),
('brianjoseph906@gmail.com','gnomearc969@gmail.com'),
('conniejoseph617@gmail.com','gnomearc969@gmail.com'),
('katiedevon981@gmail.com','gnomearc969@gmail.com'),
('saramichelle760@gmail.com','gnomearc969@gmail.com'),
('timothycurtis437@gmail.com','gnomearc969@gmail.com'),
('aaronjason688@gmail.com','HQGames379@gmail.com'),
('conniejoseph617@gmail.com','HQGames379@gmail.com'),
('gabriellekevin997@gmail.com','HQGames379@gmail.com'),
('reginadennis710@gmail.com','HQGames379@gmail.com'),
('ronaldkenneth886@gmail.com','HQGames379@gmail.com'),
('saramichelle760@gmail.com','HQGames379@gmail.com'),
('aaronjason688@gmail.com','Ideographer977@gmail.com'),
('meghananna578@gmail.com','Ideographer977@gmail.com'),
('conniejoseph617@gmail.com','illegaldogs323@gmail.com'),
('jessicadeanna988@gmail.com','illegaldogs323@gmail.com'),
('saramichelle760@gmail.com','illegaldogs323@gmail.com'),
('timothycurtis437@gmail.com','illegaldogs323@gmail.com'),
('aaronjason688@gmail.com','Indefatigable480@gmail.com'),
('annettetheresa166@gmail.com','Indefatigable480@gmail.com'),
('judymelissa157@gmail.com','Indefatigable480@gmail.com'),
('lisacaitlin354@gmail.com','Indefatigable480@gmail.com'),
('shellydouglas597@gmail.com','Indefatigable480@gmail.com'),
('troykyle982@gmail.com','Indefatigable480@gmail.com'),
('aaronjason688@gmail.com','KazukiShiroma442@gmail.com'),
('brianjoseph906@gmail.com','KazukiShiroma442@gmail.com'),
('gabriellekevin997@gmail.com','KazukiShiroma442@gmail.com'),
('katiedevon981@gmail.com','KazukiShiroma442@gmail.com'),
('larryrhonda467@gmail.com','KazukiShiroma442@gmail.com'),
('timothycurtis437@gmail.com','KazukiShiroma442@gmail.com'),
('christineemily332@gmail.com','LeeroyLin823@gmail.com'),
('conniejoseph617@gmail.com','LeeroyLin823@gmail.com'),
('josephdavid518@gmail.com','LeeroyLin823@gmail.com'),
('saramichelle760@gmail.com','LeeroyLin823@gmail.com'),
('aaronjason688@gmail.com','Loria513@gmail.com'),
('brianjoseph906@gmail.com','Loria513@gmail.com'),
('gabriellekevin997@gmail.com','Loria513@gmail.com'),
('josephdavid518@gmail.com','Loria513@gmail.com'),
('judymelissa157@gmail.com','Loria513@gmail.com'),
('katiedevon981@gmail.com','Loria513@gmail.com'),
('meghananna578@gmail.com','Loria513@gmail.com'),
('saramichelle760@gmail.com','Loria513@gmail.com'),
('troykyle982@gmail.com','Loria513@gmail.com'),
('lisacaitlin354@gmail.com','Nerial706@gmail.com'),
('meghananna578@gmail.com','Nerial706@gmail.com'),
('timothycurtis437@gmail.com','Nerial706@gmail.com'),
('troykyle982@gmail.com','Nerial706@gmail.com'),
('christineemily332@gmail.com','RebRank162@gmail.com'),
('lisacaitlin354@gmail.com','RebRank162@gmail.com'),
('troykyle982@gmail.com','RebRank162@gmail.com'),
('aaronjason688@gmail.com','Sciman101885@gmail.com'),
('annettetheresa166@gmail.com','Sciman101885@gmail.com'),
('christineemily332@gmail.com','Sciman101885@gmail.com'),
('josephdavid518@gmail.com','Sciman101885@gmail.com'),
('judymelissa157@gmail.com','Sciman101885@gmail.com'),
('jessicadeanna988@gmail.com','Slavitica442@gmail.com'),
('saramichelle760@gmail.com','Slavitica442@gmail.com'),
('brianjoseph906@gmail.com','Sockware982@gmail.com'),
('katiedevon981@gmail.com','Sockware982@gmail.com'),
('larryrhonda467@gmail.com','Sockware982@gmail.com'),
('meghananna578@gmail.com','Sockware982@gmail.com'),
('saramichelle760@gmail.com','Sockware982@gmail.com'),
('shellydouglas597@gmail.com','Sockware982@gmail.com'),
('jessicadeanna988@gmail.com','TALEROCK322@gmail.com'),
('shellydouglas597@gmail.com','TALEROCK322@gmail.com'),
('timothycurtis437@gmail.com','TALEROCK322@gmail.com'),
('aaronjason688@gmail.com','Vais740@gmail.com'),
('gabriellekevin997@gmail.com','Vais740@gmail.com'),
('josephdavid518@gmail.com','Vais740@gmail.com'),
('katiedevon981@gmail.com','Vais740@gmail.com'),
('meghananna578@gmail.com','Vais740@gmail.com'),
('reginadennis710@gmail.com','Vais740@gmail.com'),
('saramichelle760@gmail.com','Vais740@gmail.com'),
('shellydouglas597@gmail.com','Vais740@gmail.com'),
('timothycurtis437@gmail.com','Vais740@gmail.com');
/*!40000 ALTER TABLE `pengikut_developer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post` (
  `waktu_pembuatan` timestamp NOT NULL,
  `konten_opini` varchar(255) NOT NULL,
  `judul_forum` varchar(255) NOT NULL,
  `email_pengguna` varchar(255) NOT NULL,
  PRIMARY KEY (`judul_forum`,`email_pengguna`,`waktu_pembuatan`),
  KEY `email_pengguna` (`email_pengguna`),
  CONSTRAINT `post_ibfk_1` FOREIGN KEY (`judul_forum`) REFERENCES `forum` (`judul_forum`),
  CONSTRAINT `post_ibfk_2` FOREIGN KEY (`email_pengguna`) REFERENCES `pengguna` (`email_pengguna`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES
('2023-06-13 10:25:54','Cold image course result prevent unit way all.','Activity positive instead.','brianjoseph906@gmail.com'),
('2023-05-26 08:08:34','Own say lose top claim upon move might partner discuss.','Any close rule investment.','larryrhonda467@gmail.com'),
('2024-01-03 03:14:26','Air tend adult feeling letter first.','Any close rule investment.','matthewjustin688@gmail.com'),
('2024-03-04 16:05:31','Building bad early whatever whose environmental help assume could.','Base drug attention.','katiedevon981@gmail.com'),
('2023-08-01 01:26:07','Require lead place fight indeed cut.','Catch join change.','brianjoseph906@gmail.com'),
('2023-08-28 11:25:19','Star here occur serious career truth minute subject yeah.','Event least.','larryrhonda467@gmail.com'),
('2023-06-17 09:54:22','Room reality cut yeah present whatever.','Finally police.','aaronjason688@gmail.com'),
('2023-09-13 05:55:26','Recent size trade create without owner order.','Finally police.','meghananna578@gmail.com'),
('2023-10-07 02:07:18','Great before mother management century pull such administration try.','Finally police.','timothycurtis437@gmail.com'),
('2023-07-29 17:07:47','Degree science change southern seem meeting institution computer star.','Have kitchen very.','aaronjason688@gmail.com'),
('2024-03-22 06:15:37','Time follow blood Mrs husband opportunity.','Have kitchen very.','christineemily332@gmail.com'),
('2023-07-11 21:23:33','Trial consider ten but themselves clear half.','Have kitchen very.','larryrhonda467@gmail.com'),
('2023-12-18 10:05:31','Prepare than because morning finish science.','Have kitchen very.','matthewjustin688@gmail.com'),
('2024-03-31 19:17:19','Myself check indeed authority staff true grow another.','His real performance.','reginadennis710@gmail.com'),
('2024-03-25 13:57:12','Build green lead pattern difference.','Level cut wear method.','saramichelle760@gmail.com'),
('2023-11-24 22:52:25','Know hour occur seek whose view race camera science chair.','Level in.','larryrhonda467@gmail.com'),
('2023-10-14 23:50:55','Power simply bar step out my join.','Level in.','matthewjustin688@gmail.com'),
('2024-04-03 18:39:42','Speech receive along agent exist stuff author both.','Lose card become.','judymelissa157@gmail.com'),
('2024-03-08 19:10:59','Some piece entire prove call if our arm home factor.','Mrs general task.','jessicadeanna988@gmail.com'),
('2023-06-29 14:52:34','Yard shoulder seem suffer red.','Note its born already.','christineemily332@gmail.com'),
('2023-10-14 21:55:13','Prove health think respond natural.','Note its born already.','reginadennis710@gmail.com'),
('2023-05-20 22:21:41','Market staff brother tough relate defense war.','Oil program.','annettetheresa166@gmail.com'),
('2023-06-11 22:38:31','Peace somebody rich day then machine network.','Oil program.','jessicadeanna988@gmail.com'),
('2024-04-27 15:56:00','Century activity himself early decision community really suffer grow.','Pattern all that.','aaronjason688@gmail.com'),
('2024-04-02 06:32:48','Strong contain recent dream behavior goal.','Pattern all that.','conniejoseph617@gmail.com'),
('2024-04-17 12:08:09','Worker exactly modern section same today popular stay.','Pattern all that.','reginadennis710@gmail.com'),
('2023-09-12 20:29:44','Check wife agree radio possible ok agency play blue piece grow.','Pay most region.','reginadennis710@gmail.com'),
('2023-10-23 03:45:28','Popular anyone really trade money budget.','Physical whether.','saramichelle760@gmail.com'),
('2024-03-02 19:30:26','Enough news however father almost whatever side real catch.','Place conference.','ronaldkenneth886@gmail.com'),
('2024-02-29 20:27:39','Team throughout budget street perhaps life sometimes art TV one contain.','Politics scene sell.','saramichelle760@gmail.com'),
('2023-08-18 19:02:36','Good form development situation easy indicate.','Politics scene sell.','shellydouglas597@gmail.com'),
('2024-01-22 11:38:24','Believe have ask dinner fight point fall.','Possible drive.','katiedevon981@gmail.com'),
('2023-05-23 04:36:36','Something social officer gas entire.','Possible drive.','shellydouglas597@gmail.com'),
('2024-03-06 18:43:14','Much rate level news be.','Should maybe.','shellydouglas597@gmail.com'),
('2024-05-01 19:43:41','Concern threat heart in director keep shake religious.','Should maybe.','timothycurtis437@gmail.com'),
('2024-03-10 01:23:21','Room difficult include manage determine line.','Smile move.','jessicadeanna988@gmail.com'),
('2024-03-05 18:25:10','Young law see bit himself hard reality.','Speak couple.','aaronjason688@gmail.com'),
('2024-02-03 02:31:40','Professional tell certainly available work people fall somebody stop yet.','Speak couple.','josephdavid518@gmail.com'),
('2023-05-22 14:27:31','Once summer bit study same provide local modern.','Standard director.','christineemily332@gmail.com'),
('2024-03-19 04:27:12','High artist high amount board speech economic couple.','Standard director.','larryrhonda467@gmail.com'),
('2023-09-12 20:21:58','Open build film find box across.','Summer reality.','matthewjustin688@gmail.com'),
('2023-08-28 04:53:22','Real party world east store employee ok themselves spend.','Support well.','gabriellekevin997@gmail.com'),
('2024-03-28 17:16:39','Current quickly party approach describe serve fill growth.','Then member.','judymelissa157@gmail.com'),
('2024-04-28 19:04:56','Analysis foreign of exist only just you face buy so.','Then member.','troykyle982@gmail.com'),
('2023-06-27 18:52:59','Experience in form weight hope or event run.','There bad bring major.','brianjoseph906@gmail.com'),
('2024-01-01 13:56:19','Bar join must near decade.','Those.','conniejoseph617@gmail.com'),
('2023-12-24 10:10:53','Sense example my fine happy whatever this political tend.','Together food music.','matthewjustin688@gmail.com'),
('2024-03-16 13:12:01','World very check light yeah.','Toward case.','annettetheresa166@gmail.com'),
('2023-09-05 18:02:11','Force coach pay whatever picture difficult teach particularly suddenly.','Toward case.','saramichelle760@gmail.com'),
('2023-07-25 18:06:08','Policy decision life we age determine daughter must cold smile situation.','Whose break.','judymelissa157@gmail.com');
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `soundtrack`
--

DROP TABLE IF EXISTS `soundtrack`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `soundtrack` (
  `judul_soundtrack` varchar(255) NOT NULL,
  PRIMARY KEY (`judul_soundtrack`),
  CONSTRAINT `soundtrack_ibfk_1` FOREIGN KEY (`judul_soundtrack`) REFERENCES `aplikasi` (`judul_aplikasi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `soundtrack`
--

LOCK TABLES `soundtrack` WRITE;
/*!40000 ALTER TABLE `soundtrack` DISABLE KEYS */;
INSERT INTO `soundtrack` VALUES
('Baba is You Soundtrack'),
('Bastion Soundtrack'),
('Bloodborne Soundtrack'),
('Crypt of the Necrodancer Soundtrack'),
('Cuphead The Delicious Last Course Soundtrack'),
('Cyberpunk 2077 Soundtrack'),
('Dark Souls III Soundtrack'),
('Death Stranding Soundtrack'),
('Devil May Cry 5 Soundtrack'),
('Disco Elysium Soundtrack'),
('Dyson Sphere Program Soundtrack'),
('Exo One Soundtrack'),
('Fez Soundtrack'),
('Final Fantasy VII Remake Soundtrack'),
('Florence Soundtrack'),
('FTL Faster Than Light Soundtrack'),
('Gris Soundtrack'),
('Hadestown (Original Broadway Cast Recording) Soundtrack'),
('Hollow Knight Soundtrack'),
('Hotline Miami Soundtrack'),
('Hyper Light Drifter Soundtrack'),
('Inside Soundtrack'),
('Journey Soundtrack'),
('Katamari Damacy Soundtrack'),
('Kentucky Route Zero Soundtrack'),
('Machinarium Soundtrack'),
('Minecraft Soundtrack'),
('Monument Valley Soundtrack'),
('Myst Soundtrack'),
('NieR Replicant ver.1.22474487139 Soundtrack'),
('Night in the Woods Soundtrack'),
('No Man\'s Sky Soundtrack'),
('Ori and the Will of the Wisps Soundtrack'),
('Outer Wilds Soundtrack'),
('Oxenfree Soundtrack'),
('Persona 5 Soundtrack'),
('Plants vs. Zombies Soundtrack'),
('Psychonauts Soundtrack'),
('Rain World Soundtrack'),
('Risk of Rain 2 Soundtrack'),
('Sable Soundtrack'),
('Sayonara Wild Hearts Soundtrack'),
('Skyrim Soundtrack'),
('Stardew Valley Soundtrack'),
('Terraria Soundtrack'),
('The Binding of Isaac Rebirth Soundtrack'),
('The Stanley Parable Soundtrack'),
('The Witcher 3 Wild Hunt Soundtrack'),
('Transistor Soundtrack'),
('Undertale Soundtrack');
/*!40000 ALTER TABLE `soundtrack` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status_pertemanan`
--

DROP TABLE IF EXISTS `status_pertemanan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `status_pertemanan` (
  `status` enum('FRIENDS','PENDING','BLOCKED') NOT NULL,
  `email_pengguna` varchar(255) NOT NULL,
  `email_teman` varchar(255) NOT NULL,
  PRIMARY KEY (`email_pengguna`,`email_teman`),
  KEY `email_pengguna` (`email_pengguna`),
  KEY `email_teman` (`email_teman`),
  CONSTRAINT `status_pertemanan_ibfk_1` FOREIGN KEY (`email_pengguna`) REFERENCES `pengguna` (`email_pengguna`),
  CONSTRAINT `status_pertemanan_ibfk_2` FOREIGN KEY (`email_teman`) REFERENCES `pengguna` (`email_pengguna`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status_pertemanan`
--

LOCK TABLES `status_pertemanan` WRITE;
/*!40000 ALTER TABLE `status_pertemanan` DISABLE KEYS */;
INSERT INTO `status_pertemanan` VALUES
('FRIENDS','aaronjason688@gmail.com','jessicadeanna988@gmail.com'),
('BLOCKED','aaronjason688@gmail.com','josephdavid518@gmail.com'),
('BLOCKED','aaronjason688@gmail.com','larryrhonda467@gmail.com'),
('PENDING','aaronjason688@gmail.com','lisacaitlin354@gmail.com'),
('PENDING','aaronjason688@gmail.com','shellydouglas597@gmail.com'),
('BLOCKED','annettetheresa166@gmail.com','aaronjason688@gmail.com'),
('FRIENDS','annettetheresa166@gmail.com','brianjoseph906@gmail.com'),
('BLOCKED','annettetheresa166@gmail.com','gabriellekevin997@gmail.com'),
('FRIENDS','annettetheresa166@gmail.com','jessicadeanna988@gmail.com'),
('PENDING','annettetheresa166@gmail.com','josephdavid518@gmail.com'),
('PENDING','annettetheresa166@gmail.com','judymelissa157@gmail.com'),
('PENDING','annettetheresa166@gmail.com','meghananna578@gmail.com'),
('FRIENDS','brianjoseph906@gmail.com','gabriellekevin997@gmail.com'),
('BLOCKED','brianjoseph906@gmail.com','ronaldkenneth886@gmail.com'),
('BLOCKED','brianjoseph906@gmail.com','saramichelle760@gmail.com'),
('FRIENDS','brianjoseph906@gmail.com','shellydouglas597@gmail.com'),
('BLOCKED','brianjoseph906@gmail.com','troykyle982@gmail.com'),
('PENDING','christineemily332@gmail.com','aaronjason688@gmail.com'),
('FRIENDS','christineemily332@gmail.com','jessicadeanna988@gmail.com'),
('PENDING','christineemily332@gmail.com','judymelissa157@gmail.com'),
('BLOCKED','christineemily332@gmail.com','lisacaitlin354@gmail.com'),
('FRIENDS','christineemily332@gmail.com','ronaldkenneth886@gmail.com'),
('BLOCKED','christineemily332@gmail.com','saramichelle760@gmail.com'),
('PENDING','conniejoseph617@gmail.com','aaronjason688@gmail.com'),
('PENDING','conniejoseph617@gmail.com','gabriellekevin997@gmail.com'),
('BLOCKED','conniejoseph617@gmail.com','jessicadeanna988@gmail.com'),
('FRIENDS','gabriellekevin997@gmail.com','annettetheresa166@gmail.com'),
('FRIENDS','gabriellekevin997@gmail.com','conniejoseph617@gmail.com'),
('FRIENDS','gabriellekevin997@gmail.com','larryrhonda467@gmail.com'),
('PENDING','gabriellekevin997@gmail.com','matthewjustin688@gmail.com'),
('FRIENDS','gabriellekevin997@gmail.com','timothycurtis437@gmail.com'),
('PENDING','gabriellekevin997@gmail.com','troykyle982@gmail.com'),
('BLOCKED','jessicadeanna988@gmail.com','annettetheresa166@gmail.com'),
('BLOCKED','jessicadeanna988@gmail.com','judymelissa157@gmail.com'),
('FRIENDS','jessicadeanna988@gmail.com','larryrhonda467@gmail.com'),
('FRIENDS','jessicadeanna988@gmail.com','matthewjustin688@gmail.com'),
('FRIENDS','jessicadeanna988@gmail.com','reginadennis710@gmail.com'),
('BLOCKED','jessicadeanna988@gmail.com','timothycurtis437@gmail.com'),
('PENDING','josephdavid518@gmail.com','brianjoseph906@gmail.com'),
('FRIENDS','josephdavid518@gmail.com','larryrhonda467@gmail.com'),
('PENDING','josephdavid518@gmail.com','meghananna578@gmail.com'),
('PENDING','josephdavid518@gmail.com','reginadennis710@gmail.com'),
('PENDING','josephdavid518@gmail.com','ronaldkenneth886@gmail.com'),
('PENDING','josephdavid518@gmail.com','timothycurtis437@gmail.com'),
('BLOCKED','judymelissa157@gmail.com','katiedevon981@gmail.com'),
('FRIENDS','judymelissa157@gmail.com','lisacaitlin354@gmail.com'),
('FRIENDS','judymelissa157@gmail.com','reginadennis710@gmail.com'),
('PENDING','katiedevon981@gmail.com','annettetheresa166@gmail.com'),
('BLOCKED','katiedevon981@gmail.com','brianjoseph906@gmail.com'),
('PENDING','katiedevon981@gmail.com','christineemily332@gmail.com'),
('BLOCKED','katiedevon981@gmail.com','conniejoseph617@gmail.com'),
('PENDING','katiedevon981@gmail.com','jessicadeanna988@gmail.com'),
('PENDING','katiedevon981@gmail.com','lisacaitlin354@gmail.com'),
('BLOCKED','katiedevon981@gmail.com','meghananna578@gmail.com'),
('PENDING','larryrhonda467@gmail.com','brianjoseph906@gmail.com'),
('FRIENDS','larryrhonda467@gmail.com','christineemily332@gmail.com'),
('FRIENDS','larryrhonda467@gmail.com','conniejoseph617@gmail.com'),
('BLOCKED','larryrhonda467@gmail.com','josephdavid518@gmail.com'),
('BLOCKED','larryrhonda467@gmail.com','katiedevon981@gmail.com'),
('PENDING','larryrhonda467@gmail.com','lisacaitlin354@gmail.com'),
('PENDING','larryrhonda467@gmail.com','meghananna578@gmail.com'),
('PENDING','larryrhonda467@gmail.com','troykyle982@gmail.com'),
('PENDING','lisacaitlin354@gmail.com','annettetheresa166@gmail.com'),
('FRIENDS','lisacaitlin354@gmail.com','christineemily332@gmail.com'),
('PENDING','lisacaitlin354@gmail.com','meghananna578@gmail.com'),
('BLOCKED','matthewjustin688@gmail.com','josephdavid518@gmail.com'),
('FRIENDS','matthewjustin688@gmail.com','timothycurtis437@gmail.com'),
('BLOCKED','meghananna578@gmail.com','annettetheresa166@gmail.com'),
('FRIENDS','meghananna578@gmail.com','katiedevon981@gmail.com'),
('PENDING','meghananna578@gmail.com','lisacaitlin354@gmail.com'),
('FRIENDS','meghananna578@gmail.com','matthewjustin688@gmail.com'),
('PENDING','reginadennis710@gmail.com','jessicadeanna988@gmail.com'),
('PENDING','reginadennis710@gmail.com','josephdavid518@gmail.com'),
('BLOCKED','reginadennis710@gmail.com','larryrhonda467@gmail.com'),
('FRIENDS','reginadennis710@gmail.com','ronaldkenneth886@gmail.com'),
('PENDING','ronaldkenneth886@gmail.com','annettetheresa166@gmail.com'),
('PENDING','ronaldkenneth886@gmail.com','christineemily332@gmail.com'),
('BLOCKED','ronaldkenneth886@gmail.com','reginadennis710@gmail.com'),
('BLOCKED','ronaldkenneth886@gmail.com','timothycurtis437@gmail.com'),
('PENDING','saramichelle760@gmail.com','conniejoseph617@gmail.com'),
('BLOCKED','saramichelle760@gmail.com','jessicadeanna988@gmail.com'),
('FRIENDS','saramichelle760@gmail.com','katiedevon981@gmail.com'),
('FRIENDS','saramichelle760@gmail.com','matthewjustin688@gmail.com'),
('BLOCKED','saramichelle760@gmail.com','reginadennis710@gmail.com'),
('PENDING','saramichelle760@gmail.com','shellydouglas597@gmail.com'),
('FRIENDS','shellydouglas597@gmail.com','annettetheresa166@gmail.com'),
('FRIENDS','shellydouglas597@gmail.com','gabriellekevin997@gmail.com'),
('FRIENDS','shellydouglas597@gmail.com','larryrhonda467@gmail.com'),
('FRIENDS','shellydouglas597@gmail.com','matthewjustin688@gmail.com'),
('BLOCKED','shellydouglas597@gmail.com','ronaldkenneth886@gmail.com'),
('PENDING','shellydouglas597@gmail.com','timothycurtis437@gmail.com'),
('BLOCKED','timothycurtis437@gmail.com','christineemily332@gmail.com'),
('FRIENDS','timothycurtis437@gmail.com','gabriellekevin997@gmail.com'),
('PENDING','timothycurtis437@gmail.com','jessicadeanna988@gmail.com'),
('FRIENDS','timothycurtis437@gmail.com','matthewjustin688@gmail.com'),
('BLOCKED','timothycurtis437@gmail.com','reginadennis710@gmail.com'),
('FRIENDS','timothycurtis437@gmail.com','ronaldkenneth886@gmail.com'),
('PENDING','timothycurtis437@gmail.com','saramichelle760@gmail.com'),
('PENDING','troykyle982@gmail.com','annettetheresa166@gmail.com'),
('PENDING','troykyle982@gmail.com','timothycurtis437@gmail.com');
/*!40000 ALTER TABLE `status_pertemanan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `video_game`
--

DROP TABLE IF EXISTS `video_game`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `video_game` (
  `judul_vidgame` varchar(255) NOT NULL,
  `publisher` varchar(255) NOT NULL,
  PRIMARY KEY (`judul_vidgame`),
  CONSTRAINT `video_game_ibfk_1` FOREIGN KEY (`judul_vidgame`) REFERENCES `aplikasi` (`judul_aplikasi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `video_game`
--

LOCK TABLES `video_game` WRITE;
/*!40000 ALTER TABLE `video_game` DISABLE KEYS */;
INSERT INTO `video_game` VALUES
('7 Days to Die','The Fun Pimps'),
('ARK: Survival Evolved','Studio Wildcard (Snail Games)'),
('Assetto Corsa Competizione','Kunos Simulazioni'),
('Borderlands 3','Gearbox Software (2K Games)'),
('Cities: Skylines','Paradox Interactive'),
('Conan Exiles','Funcom'),
('Dead by Daylight','Behaviour Interactive'),
('Dead Cells','Motion Twin'),
('Deep Rock Galactic','Coffee Stain Publishing'),
('Destiny 2','Bungie'),
('Disco Elysium - The Final Cut','ZA/UM'),
('Divinity: Original Sin 2 - Definitive Edition','Larian Studios'),
('Don\'t Starve','Klei Entertainment'),
('Don\'t Starve Together','Klei Entertainment'),
('Dota 2','Valve'),
('Euro Truck Simulator 2','SCS Software'),
('Europa Universalis IV','Paradox Interactive'),
('Factorio','Wube Software'),
('Grand Theft Auto V','Rockstar Games'),
('GRIS','Devolver Digital'),
('Hades','Supergiant Games'),
('Hearts of Iron IV','Paradox Interactive'),
('Hitman 3','IO Interactive'),
('Hollow Knight','Team Cherry'),
('Kerbal Space Program','Private Division (Take-Two Interactive)'),
('Monster Hunter: World','Capcom'),
('Oxygen Not Included','Klei Entertainment'),
('Path of Exile','Grinding Gear Games'),
('Payday 2','Overkill Software (Starbreeze Studios)s'),
('Planet Coaster','Frontier Developments'),
('Planet Zoo','Frontier Developments'),
('Portal 2','Valve'),
('Project Zomboid','The Indie Stone'),
('RimWorld','Ludeon Studios'),
('Risk of Rain 2','Hopoo Games'),
('Rust','Facepunch Studios'),
('Sid Meier\'s Civilization VI','Firaxis Games (2K Games)'),
('Slay the Spire','Mega Crit Games'),
('Stardew Valley','ConcernedApe'),
('Stellaris','Paradox Interactive'),
('Subnautica','Unknown Worlds Entertainment'),
('Team Fortress 2','Valve'),
('Terraria','Re-Logic'),
('The Elder Scrolls V: Skyrim','Bethesda Softworks'),
('The Sims 4','Electronic Arts'),
('The Witcher 3: Wild Hunt','CD Projekt Red'),
('Total War: Warhammer II','Creative Assembly (SEGA)'),
('Valheim','Coffee Stain Publishing'),
('Warframe','Digital Extremes'),
('XCOM 2','Firaxis Games');
/*!40000 ALTER TABLE `video_game` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vidgame_genre`
--

DROP TABLE IF EXISTS `vidgame_genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vidgame_genre` (
  `judul_vidgame` varchar(255) NOT NULL,
  `genre` varchar(255) NOT NULL,
  PRIMARY KEY (`judul_vidgame`,`genre`),
  CONSTRAINT `vidgame_genre_ibfk_1` FOREIGN KEY (`judul_vidgame`) REFERENCES `aplikasi` (`judul_aplikasi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vidgame_genre`
--

LOCK TABLES `vidgame_genre` WRITE;
/*!40000 ALTER TABLE `vidgame_genre` DISABLE KEYS */;
INSERT INTO `vidgame_genre` VALUES
('7 Days to Die','Base Building'),
('7 Days to Die','Craftings'),
('7 Days to Die','Open-World'),
('7 Days to Die','Survival Horror'),
('ARK: Survival Evolved','Action-Adventure'),
('ARK: Survival Evolved','Open-World'),
('ARK: Survival Evolved','Survival'),
('Assetto Corsa Competizione','Sim Racing'),
('Borderlands 3','Action RPG'),
('Borderlands 3','First-person Shooter'),
('Borderlands 3','Looter Shooter'),
('Cities: Skylines','City Builder'),
('Cities: Skylines','Simulation'),
('Conan Exiles','Action RPG'),
('Conan Exiles','Open-World'),
('Conan Exiles','Sandbox'),
('Conan Exiles','Survival'),
('Dead by Daylight','Asymmetrical Multiplayer'),
('Dead by Daylight','Survival Horror'),
('Dead Cells','Action Platformer'),
('Dead Cells','Metroidvania'),
('Dead Cells','Roguelite'),
('Deep Rock Galactic','Co-op'),
('Deep Rock Galactic','First-person Shooter'),
('Deep Rock Galactic','Mining'),
('Destiny 2','First-person Shooter'),
('Destiny 2','MMO'),
('Destiny 2','Sci-fi'),
('Disco Elysium - The Final Cut','Detective'),
('Disco Elysium - The Final Cut','RPG'),
('Divinity: Original Sin 2 - Definitive Edition','RPG'),
('Divinity: Original Sin 2 - Definitive Edition','Turn-Based'),
('Don\'t Starve','Action-Adventure'),
('Don\'t Starve','Roguelike'),
('Don\'t Starve','Survival'),
('Don\'t Starve Together','Crafting'),
('Don\'t Starve Together','Survival'),
('Dota 2','MOBA'),
('Dota 2','Strategy'),
('Euro Truck Simulator 2','Driving'),
('Euro Truck Simulator 2','Simulation'),
('Europa Universalis IV','Grand Strategy'),
('Europa Universalis IV','Historical'),
('Factorio','Automation'),
('Factorio','BaseBuilding'),
('Factorio','Management'),
('Grand Theft Auto V','Action-Adventure'),
('Grand Theft Auto V','Open-World'),
('GRIS','Adventure'),
('GRIS','Platformer'),
('GRIS','Puzzle'),
('Hades','Action'),
('Hades','Dungeon'),
('Hades','Roguelike'),
('Hearts of Iron IV','Grand Strategy'),
('Hearts of Iron IV','Historical'),
('Hearts of Iron IV','War'),
('Hitman 3','Sandbox'),
('Hitman 3','Stealth'),
('Hollow Knight','Action Platformer'),
('Hollow Knight','Metroidvania'),
('Hollow Knight','Souls-like'),
('Kerbal Space Program','Sandbox'),
('Kerbal Space Program','Simulation'),
('Kerbal Space Program','Space'),
('Monster Hunter: World','Action RPG'),
('Monster Hunter: World','Hunting'),
('Oxygen Not Included','Base-Building'),
('Oxygen Not Included','Colony Sim'),
('Oxygen Not Included','Survival'),
('Path of Exile','Action RPG'),
('Path of Exile','Hack-and-Slash'),
('Path of Exile','Isometric'),
('Payday 2','Co-op'),
('Payday 2','First-person Shooter'),
('Payday 2','Heist'),
('Payday 2','Stealth'),
('Planet Coaster','Management'),
('Planet Coaster','Simulation'),
('Planet Coaster','Theme Park'),
('Planet Zoo','Building'),
('Planet Zoo','Management'),
('Planet Zoo','Simulation'),
('Portal 2','First-person Puzzle'),
('Project Zomboid','Sandbox'),
('Project Zomboid','Survival'),
('Project Zomboid','Zombie'),
('RimWorld','Colony Sim'),
('RimWorld','Sci-fi'),
('RimWorld','Strategy'),
('Risk of Rain 2','Roguelike'),
('Risk of Rain 2','Third-person shooter'),
('Rust','Base Building'),
('Rust','Crafting'),
('Rust','Multiplayers'),
('Rust','Open-World'),
('Rust','Survival'),
('Sid Meier\'s Civilization VI','Historical'),
('Sid Meier\'s Civilization VI','Turn-based Strategy'),
('Slay the Spire','Card Game'),
('Slay the Spire','Deck-Building'),
('Slay the Spire','Roguelike'),
('Stardew Valley','Farming'),
('Stardew Valley','RPG'),
('Stardew Valley','Simulation'),
('Stellaris','GrandStrategy'),
('Stellaris','Sci-fi'),
('Stellaris','Space'),
('Subnautica','Adventure'),
('Subnautica','Open-World'),
('Subnautica','Survival'),
('Team Fortress 2','Class-based'),
('Team Fortress 2','First-person Shooter'),
('Team Fortress 2','Multiplayer'),
('Terraria','2D'),
('Terraria','Adventure'),
('Terraria','Sandbox'),
('The Elder Scrolls V: Skyrim','Action RPG'),
('The Elder Scrolls V: Skyrim','Open-World'),
('The Sims 4','Life Simulation'),
('The Witcher 3: Wild Hunt','Action RPG'),
('Total War: Warhammer II','Grand Strategys'),
('Total War: Warhammer II','Real-Time Tactics'),
('Total War: Warhammer II','Turn-Based Strategy'),
('Valheim','Open-World'),
('Valheim','Sandbox'),
('Valheim','Survival'),
('Warframe','Action'),
('Warframe','Sci-fi'),
('Warframe','Third-person shooter'),
('XCOM 2','Strategy'),
('XCOM 2','Turn-based Tactics');
/*!40000 ALTER TABLE `vidgame_genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vote_forum`
--

DROP TABLE IF EXISTS `vote_forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vote_forum` (
  `tipe_vote` enum('UP','DOWN') NOT NULL,
  `judul_forum` varchar(255) NOT NULL,
  `email_pengguna` varchar(255) NOT NULL,
  PRIMARY KEY (`judul_forum`,`email_pengguna`),
  KEY `email_pengguna` (`email_pengguna`),
  CONSTRAINT `vote_forum_ibfk_1` FOREIGN KEY (`judul_forum`) REFERENCES `forum` (`judul_forum`),
  CONSTRAINT `vote_forum_ibfk_2` FOREIGN KEY (`email_pengguna`) REFERENCES `pengguna` (`email_pengguna`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vote_forum`
--

LOCK TABLES `vote_forum` WRITE;
/*!40000 ALTER TABLE `vote_forum` DISABLE KEYS */;
INSERT INTO `vote_forum` VALUES
('UP','Air figure.','larryrhonda467@gmail.com'),
('UP','Article reduce.','ronaldkenneth886@gmail.com'),
('UP','Base drug attention.','aaronjason688@gmail.com'),
('DOWN','Base drug attention.','katiedevon981@gmail.com'),
('DOWN','Catch join change.','meghananna578@gmail.com'),
('DOWN','Dinner model.','brianjoseph906@gmail.com'),
('DOWN','Event least.','meghananna578@gmail.com'),
('UP','Evidence author affect.','meghananna578@gmail.com'),
('DOWN','Have kitchen very.','larryrhonda467@gmail.com'),
('UP','Have kitchen very.','lisacaitlin354@gmail.com'),
('DOWN','Level in.','katiedevon981@gmail.com'),
('DOWN','Level in.','larryrhonda467@gmail.com'),
('UP','Lose card become.','reginadennis710@gmail.com'),
('UP','Lot.','conniejoseph617@gmail.com'),
('DOWN','Material project then.','matthewjustin688@gmail.com'),
('UP','Maybe poor.','gabriellekevin997@gmail.com'),
('UP','Maybe poor.','katiedevon981@gmail.com'),
('DOWN','Maybe poor.','lisacaitlin354@gmail.com'),
('DOWN','Mention trial.','meghananna578@gmail.com'),
('UP','Mrs general task.','reginadennis710@gmail.com'),
('UP','Mrs general task.','troykyle982@gmail.com'),
('UP','Nature its technology.','ronaldkenneth886@gmail.com'),
('UP','Note its born already.','timothycurtis437@gmail.com'),
('UP','Pay most region.','saramichelle760@gmail.com'),
('UP','Physical whether.','judymelissa157@gmail.com'),
('DOWN','Place conference.','annettetheresa166@gmail.com'),
('UP','Possible drive.','aaronjason688@gmail.com'),
('DOWN','Possible drive.','annettetheresa166@gmail.com'),
('UP','Possible drive.','matthewjustin688@gmail.com'),
('DOWN','Possible drive.','troykyle982@gmail.com'),
('UP','Prevent compare Mrs.','ronaldkenneth886@gmail.com'),
('DOWN','Prevent compare Mrs.','saramichelle760@gmail.com'),
('UP','Question.','judymelissa157@gmail.com'),
('DOWN','Significant leg too.','gabriellekevin997@gmail.com'),
('UP','Significant leg too.','reginadennis710@gmail.com'),
('UP','Significant leg too.','ronaldkenneth886@gmail.com'),
('UP','Smile move.','conniejoseph617@gmail.com'),
('UP','Standard director.','brianjoseph906@gmail.com'),
('UP','Standard director.','matthewjustin688@gmail.com'),
('DOWN','Statement memory.','brianjoseph906@gmail.com'),
('UP','Summer reality.','brianjoseph906@gmail.com'),
('DOWN','Support well.','jessicadeanna988@gmail.com'),
('UP','Then member.','meghananna578@gmail.com'),
('DOWN','There bad bring major.','annettetheresa166@gmail.com'),
('UP','Those.','saramichelle760@gmail.com'),
('DOWN','Together food music.','jessicadeanna988@gmail.com'),
('UP','Toward case.','shellydouglas597@gmail.com'),
('UP','Under move rise.','jessicadeanna988@gmail.com'),
('UP','Under move rise.','larryrhonda467@gmail.com'),
('UP','Under move rise.','lisacaitlin354@gmail.com');
/*!40000 ALTER TABLE `vote_forum` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-17 21:59:53
