-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 19, 2021 at 10:38 AM
-- Server version: 10.5.8-MariaDB-log
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quizz-app`
--

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `question_category` varchar(150) NOT NULL,
  `theme_id` int(11) NOT NULL,
  `question_cat_id` int(11) NOT NULL,
  `question_type` enum('V-F','QCM') DEFAULT NULL,
  `question` varchar(255) NOT NULL,
  `option1` varchar(150) NOT NULL,
  `option2` varchar(150) NOT NULL,
  `option3` varchar(150) DEFAULT NULL,
  `option4` varchar(150) DEFAULT NULL,
  `answer` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question_category`, `theme_id`, `question_cat_id`, `question_type`, `question`, `option1`, `option2`, `option3`, `option4`, `answer`) VALUES
(1, 'Géographie', 1, 1, 'QCM', 'Quelle est la plus importante étendue d\'eau en Inde ?', 'Lac Chilka', 'Lac Connemara', 'Lac Assa', NULL, 'Lac Chilka'),
(2, 'Géographie', 1, 1, 'QCM', 'L\'Inde est bordée à l\'Ouest par la mer d\'Arabie et à l\'Est par ?', 'L\'Himalaya', 'Le Golf du Bengal', 'La Chine', NULL, 'Le Golf du Bengal'),
(3, 'Divertissement', 1, 2, 'QCM', 'Que fêtent les indiens le 2 octobre ?', 'Gandhi Jayanti', 'Gounda', 'Kiristi', NULL, 'Gandhi Jayanti'),
(4, 'Divertissement', 1, 2, 'QCM', 'Quel est le volume quotidien de spectateurs en salles ?', '200 millions', '50 millions', '30 millions', NULL, '30 millions'),
(5, 'Histoire', 1, 3, 'QCM', 'Combien de langues officielles possède l\'Inde ?', '23', '29', '12', NULL, '23'),
(6, 'Histoire', 1, 3, 'QCM', 'L\'Etat se nomme ?', 'L\'Union Indiene', 'La République populaire Indienne', 'La République démocratique indienne', NULL, 'L\'Union Indiene'),
(7, 'Art littéraire', 1, 4, 'QCM', 'Quel est le livre de Vikas Swarup ?', 'Les fabuleuses aventures d\'un indien malchanceux qui devint milliardaire', 'aux bords du gange', 'un garçon convenable', NULL, 'Les fabuleuses aventures d\'un indien malchanceux qui devint milliardaire'),
(8, 'Art littéraire', 1, 4, 'QCM', 'De qui est \"mes sacrées tantes\" ?', ' Bulbul Sherma', 'Vikram Seth', 'Vikas Swarup', NULL, ' Bulbul Sherma'),
(9, 'Science et Nature', 1, 5, 'QCM', 'Lequel de ces fleuves prend sa source en Inde ?', 'Brahmapoutre', 'L\'Indus', 'Yamunâ', NULL, 'Yamunâ'),
(10, 'Science et Nature', 1, 5, 'QCM', 'Race de singe dominante ?', ' babouins', 'Semnopithèque entelle', 'macaques', NULL, 'Semnopithèque entelle'),
(11, 'Sport et Loisir ', 1, 6, 'QCM', 'Les sports pratiqués sont ?', 'Cricket', 'Hockey sur glace', 'Basketball', NULL, 'Cricket'),
(12, 'Sport et Loisir ', 1, 6, 'QCM', 'Ou faire du parapente en Inde ?', 'Himalaya', 'Mont Blanc', 'Everest', NULL, 'Himalaya'),
(13, 'Géographie', 7, 1, 'QCM', 'Où se situe la Corée du Nord?', 'Au Nord de la Corée duSud', 'Grandline', 'A l\'est', 'A l\'Ouest', 'Au Nord de la Corée duSud'),
(14, 'Géographie', 7, 1, 'QCM', 'La capitale de la Corée du Nord', 'Pyongyang', 'Kangdong', 'Wonsan', 'Pyongdong', 'Pyongyang'),
(15, 'Divertissement ', 7, 2, 'QCM', 'Quel activité n\'est pas sous le contrôle de l\'Etat?', 'Aucune', 'La musique', 'Le cinéma', 'La politique', 'Aucune'),
(16, 'Divertissement', 7, 2, 'QCM', 'Depuis quelle année est organisée le Festival international du film de Pyongyang', '1987', '2001', '1997', '1929', '1987'),
(17, 'Histoire', 7, 3, 'QCM', 'Quand a eu lieu la scission entre les 2 Corée?', '1945', '2010', '1820', '2022', '1945'),
(18, 'Histoire', 7, 3, 'QCM', 'Quand est entré en fonction Kim Jong-Un?', '2011', '2020', '1900', '1962', '2011'),
(19, 'Art littéraire', 7, 4, 'QCM', 'Contre quoi ont lutté les premiers écrivains nord-coréen ?', 'L\'occupation japonaise', 'Capitalisme', 'Obésité', 'Ecologie', 'L\'occupation japonaise'),
(20, 'Art littéraire', 7, 4, 'QCM', 'Comment s\'appelle l\'idéologie du régime Nord-coréen ?', 'Juche', 'Communisme', 'Fascisme', 'Egalitarisme', 'Juche'),
(21, 'Science et nature', 7, 5, 'QCM', 'Quel est l\'objectif principal de la Corée du Nord en termes de technologie ?', 'La conquête spatiale', 'Les missiles ballistiques', 'Les énergies renouvelables', 'Le piratage informatique', 'La conquête spatiale Les missiles ballistiques'),
(22, 'Science et nature', 7, 5, 'QCM', 'Est-ce qu\'internet est accessible à tous les Nord-Coréens?', 'Non', 'Oui', 'Peut-être', 'Certainement', 'Non'),
(23, 'Sport et loisirs', 7, 6, 'QCM', 'Le sport national de la Corée du Nord?', 'Taekwondo', 'Natation', 'Athlétisme', 'Golf', 'Taekwondo'),
(24, 'Sport et loisirs', 7, 6, 'QCM', 'Depuis quand la Corée du Nord participe aux JO?', '1964', '1789', '1996', '2004', '1964'),
(25, 'Géographie', 6, 1, 'QCM', 'Quelle est la capitale du Japon ?', 'Tokyo', 'Osaka', 'Kyoto', NULL, 'Tokyo'),
(26, 'Géographie', 6, 1, 'QCM', 'Quel Mont emblématique est au japon ? ', 'Mont Fuji', 'Mont pays', ' Mont Saint Michel', 'Mont blanc', 'Mont Fuji'),
(27, 'Divertissement', 6, 2, 'QCM', 'Quelle célèbre jeu de carte qui est également un jeu vidéo est originaire du japon : ', 'Pokemon', 'Belotte', 'Pouilleux', 'Uno', 'Pokemon'),
(28, 'Divertissement', 6, 2, 'QCM', 'Laquelle de ces société est japonaise : ', 'Sony', 'Renault', 'Total', 'Ubisoft', 'Sony'),
(29, 'Histoire', 6, 3, 'V-F', 'L\'ère EDO est une des ere emblématique des samouraïs : ', 'Vrai', 'Faux', NULL, NULL, ''),
(30, 'Histoire', 6, 3, NULL, 'Qui opposait les japonais lors de la IIWW : ', 'Alliés', 'Godzilla', ' Epéeiste de la claire lune ', NULL, 'Alliés'),
(31, 'Art littéraire', 6, 4, 'QCM', 'Quel style semblable à la BD est originaire du japon ? ', 'Manga', 'BD', 'Roman', 'Poème', 'Manga'),
(32, 'Art littéraire', 6, 4, 'V-F', 'L\"attaque dest titans est le meilleur manga de tout les temps', 'Vrai', 'Faux', NULL, NULL, 'Vrai'),
(33, 'Science et nature', 6, 5, 'V-F', 'Le Japon est une ile volcanique ?', 'Vrai', 'Faux', NULL, NULL, 'Vrai'),
(34, 'Science et nature', 6, 5, 'QCM', 'Quel est le moyen de relaxation issu des monts volcaniques de l\'île? ', 'Onsen', 'Bain public', 'eruptions', 'Dinosaure', 'Bain public, Onsen'),
(35, 'Sport et loisir', 6, 6, 'V-F', 'Le sumo est-il un sport emblématique du japon ?', 'Vrai', 'Faux', NULL, NULL, 'Vrai'),
(36, 'Sport et loisir', 6, 6, 'QCM', 'Quel est le sport numéro 1 au japon : ', 'Baseball', 'Badminton', 'Tennis', 'Attrape Poule', 'Baseball'),
(37, 'Géographie', 4, 1, 'QCM', 'Quels sont les pays limitrophes de la Pologne ?', 'Russie/Biélorussie/Ukraine/Allemagne', 'Allemagne/Biélorussie/Russie/Slovaquie', 'Allemagne/Autriche/Ukraine/Russie', 'Allemagne/Belgique/Suisse/Marseille', 'Russie/Biélorussie/Ukraine/Allemagne'),
(38, 'Géographie', 4, 1, 'QCM', 'Quelle est la capitale de la Pologne ?', 'Cracovie', 'Katowice', 'Varsovie', 'Berlin', 'Varsovie'),
(39, 'Divertissement', 4, 2, 'QCM', 'Quel est le salaire moyen des Polonais ?', '900€ brut/mois', '1500€ brut/mois', '1200€ brut/mois', '2000€ brut/mois', '1200€ brut/mois'),
(40, 'Divertissement', 4, 2, 'QCM', 'Quel est le plat national Polonais ?', 'Barczsz', 'Kloweisc', 'Bigos', 'PLK', 'Bigos'),
(41, 'Histoire', 4, 3, 'QCM', 'Suite à quelle période y a-t-il eu une immigration polonaise en France ?', 'Seconde Guerre Mondiale', 'Guerre Froide', 'Première Guerre mondiale', 'Krack Boursier de 1929', 'Première Guerre mondiale'),
(42, 'Histoire', 4, 3, 'QCM', 'Quel Polonais a eu un prix nobel de la Paix ?', 'Frédéric Chopin', 'Lech Walesa', 'Nicola Copernic', 'Jarosław Jarząbkowski', 'Lech Walesa'),
(105, 'Géographie ', 2, 1, 'QCM', 'Quel est le nom du fleuve qui traverse l\'Egypte ?', 'Le Nil ', ' La Loire ', 'Le Tibre', 'La Seine ', 'Le Nil'),
(106, 'Geographie', 2, 1, 'QCM', 'Capital du Maroc', 'Marrakech ', ' Rabat', 'Tanger', 'Fes', ' Rabat '),
(107, 'Géographie', 2, 1, 'QCM', 'Sur combien de pays s\'étend le désert du Sahara ?', '3', '10 ', ' 22 ', '47', '10'),
(108, 'Arts littéraire', 2, 4, 'QCM', 'Quelle est l\'écriture des Egyptiens ?', 'Le français ', ' les cunéiformes', ' Les Hiéroglyphes ', 'Les pictogrammes ', ' Les Hiéroglyphes '),
(109, 'Histoire', 2, 3, 'QCM', 'Quelle ville est surnommée la \'Perle du Sud\' ?', 'Ouarzazate ', ' Marrakech ', ' Agadir', 'Bordeaux', 'Marrakech '),
(110, 'Histoire', 2, 3, 'QCM', 'Quelle est la monnaie du Maroc ?', 'Le franc', 'Livre Marocaine ', ' Dinar Marocain ', ' Dirham Marocain', ' Dirham Marocain'),
(111, 'Sports et loisirs ', 2, 6, 'QCM', 'Quelle tradition équestre est pratiquer essentiellement au Maghreb ?', 'Le rodéo ', ' La fantasia ', ' Le polo ', 'le hip-hop', ' La fantasia '),
(112, 'Science et nature', 2, 5, 'QCM', 'Quelle est la plus grande des pyramide d\'egypte ?', 'Khéops ', ' Khéphren ', ' Mykérinos', 'Kédisky', 'Khéops'),
(113, 'Science et nature', 2, 5, 'QCM', 'Combien le Maroc a t il envoyer de satellite ?', '8', '4', '2', '0', '2'),
(114, 'Géographie', 3, 1, 'QCM', 'Combien d\'habitants en Iran ?', '82,91 millions', '67.54 millions', '54.22 millions', '78.98 millions', '82,91 millions'),
(115, 'Géographie', 3, 1, 'QCM', 'Climat en Iran ?', 'Continental ', 'Aride', 'Tempéré', 'Tropico', 'Continental '),
(116, 'Géographie', 3, 1, 'QCM', 'Capitale de l\' Iran ?', 'Téhéran ', 'Alger', 'Casablanca ', 'Le Caire', 'Téhéran '),
(117, 'Sports et Loisirs', 3, 6, 'QCM', 'Quel sport n\'est pas pratiqué avec la charia islamique ?', 'Le patinage artistique', 'La Boxe', 'Le Bowling', 'Le Golf', 'Le patinage artistique'),
(118, 'Sports et Loisirs ', 3, 6, 'QCM', 'Le sport populaire en Iran ?', 'le Varzesh-e Pahlavani ', 'La danse', 'Le rugby', 'La course ', 'le Varzesh-e Pahlavani '),
(119, 'Sports et Loisirs', 3, 6, 'QCM', 'Dans quel sport l\'Iran excelle t-elle aux J.O ?', 'Tennis', 'Natation', 'Saut en hauteur', 'Lutte', 'Lutte'),
(120, 'Histoire', 3, 3, 'QCM', 'Début de la république Islamique d\' Iran ?', '1er avril ', '10 Juin', '17 Février', '11 Décembre', '1er avril '),
(121, 'Histoire', 3, 3, NULL, 'Election de Bani-Sadr en tant que président de la république ?', '1980', '2001', '1978', '1996', '1980'),
(122, 'Histoire', 3, 3, 'QCM', 'Quel pays a appliqué une sanction économique sur l\'Iran ?', 'Etats-Unis', 'La France', 'La Russie', 'L\'Allemagne', 'Etats-Unis'),
(123, 'Divertissement ', 3, 2, 'QCM', 'Quel pays est aussi sécurisé que l\'Iran ?', 'Le Danemark ', 'L\'Italie ', 'Marine ford', ' Les Etats-Unis', 'Le Danemark '),
(124, 'Géographie', 8, 1, 'QCM', 'Comment Appelle-t-on les habitants de l\'Amérique du Sud ?', 'Sud Américains ', 'sudain amériques ', 'les sudistes de l\'amériques ', 'les américains du sud', 'Sud Américains'),
(125, 'Géographie', 8, 1, 'QCM', 'Quel est le pays le plus au sud de l\'Amérique du Sud ?', 'Brésil  ', ' Colombie ', ' Pérou ', 'France', 'Brésil  '),
(126, 'Divertissement', 8, 2, 'V-F', 'Le Carnaval est la fête la plus populaire du Brésil ?', 'Vrai', 'Faux', NULL, NULL, 'Vrai'),
(127, 'Divertissement', 8, 2, 'QCM', 'Combien de touristes  internationaux visite l\'argentine par an ?', '6.9 millions ', ' 2 millions ', ' 900 000 ', ' 2', '6.9 millions'),
(128, 'Histoire', 8, 3, 'QCM', 'Quelle a été la première population en Amériques du sud ?', 'Les Mayas ', ' les Espagnoles ', 'les Anglais ', ' les Aliens', 'Les Mayas '),
(129, 'Histoire', 8, 3, 'V-F', 'L\'idée de quête d\'indépendance en Amériques du sud est arrivée vers 1800 ?', 'Vrai ', ' faux', NULL, NULL, 'Vrai'),
(130, 'Art littéraire', 8, 4, 'V-F', 'En 1945 , Gabriela Mistral , une chilienne à obtenu un prix Nobel de la paix ?', 'Vrai', 'Faux', NULL, NULL, 'Vrai'),
(131, 'Art littéraire', 8, 4, NULL, 'Miguel Ángel Asturias est lauréat du prix Nobel de littérature en 1967 mais aussi :', 'président du jury du festival de Cannes en 1970 ', ' photographe', ' maitre nageur ', ' président du guatemala ', 'président du jury du festival de Cannes en 1970 '),
(132, 'Science et nature', 8, 5, NULL, 'Le 23 juin 2020 , une étudiante décrit 18 nouvelles espèces  de :', 'coléoptères ', ' zèbres ', ' poissons ', ' humains ', 'coléoptères '),
(133, 'Science et nature', 8, 5, 'V-F', 'Les premiers chiens d\'Amérique ont disparu lors de la colonisation ?', 'Vrai ', 'Faux', NULL, NULL, 'Vrai'),
(134, 'Sports et loisirs', 8, 6, 'V-F', 'Le tejo est le plus récent sport  en Amériques du sud ? ', 'Vrai', 'Faux', NULL, NULL, 'Faux'),
(135, 'Sport et loisirs', 8, 6, 'QCM', 'Lionel Messi est :', 'argentin', 'polonais', 'canadien', 'ukrainien', 'argentin'),
(136, 'Géographie', 1, 1, 'QCM', 'Quelle est la plus importante étendue d\'eau en Inde ?', 'Lac Chilka', 'Lac Connemara', 'Lac Assa', NULL, 'Lac Chilka'),
(137, 'Géographie', 1, 1, 'QCM', 'L\'Inde est bordée à l\'Ouest par la mer d\'Arabie et à l\'Est par ?', 'L\'Himalaya', 'Le Golf du Bengal', 'La Chine', NULL, 'Le Golf du Bengal'),
(138, 'Divertissement', 1, 2, 'QCM', 'Que fêtent les indiens le 2 octobre ?', 'Gandhi Jayanti', 'Gounda', 'Kiristi', NULL, 'Gandhi Jayanti'),
(139, 'Divertissement', 1, 2, 'QCM', 'Quel est le volume quotidien de spectateurs en salles ?', '200 millions', '50 millions', '30 millions', NULL, '30 millions'),
(140, 'Histoire', 1, 3, 'QCM', 'Combien de langues officielles possède l\'Inde ?', '23', '29', '12', NULL, '23'),
(141, 'Histoire', 1, 3, 'QCM', 'L\'Etat se nomme ?', 'L\'Union Indiene', 'La République populaire Indienne', 'La République démocratique indienne', NULL, 'L\'Union Indiene'),
(142, 'Art littéraire', 1, 4, 'QCM', 'Quel est le livre de Vikas Swarup ?', 'Les fabuleuses aventures d\'un indien malchanceux qui devint milliardaire', 'aux bords du gange', 'un garçon convenable', NULL, 'Les fabuleuses aventures d\'un indien malchanceux qui devint milliardaire'),
(143, 'Art littéraire', 1, 4, 'QCM', 'De qui est \"mes sacrées tantes\" ?', ' Bulbul Sherma', 'Vikram Seth', 'Vikas Swarup', NULL, ' Bulbul Sherma'),
(144, 'Science et Nature', 1, 5, 'QCM', 'Lequel de ces fleuves prend sa source en Inde ?', 'Brahmapoutre', 'L\'Indus', 'Yamunâ', NULL, 'Yamunâ'),
(145, 'Race de singe dominante ?', 1, 5, 'QCM', 'Race de singe dominante ?', ' babouins', 'Semnopithèque entelle', 'macaques', NULL, 'Semnopithèque entelle'),
(146, '', 1, 6, 'QCM', 'Les sports pratiqués sont ?', 'Cricket', 'Hockey sur glace', 'Basketball', NULL, 'Cricket'),
(147, 'Sport et Loisir ', 1, 6, 'QCM', 'Ou faire du parapente en Inde ?', 'Himalaya', 'Mont Blanc', 'Everest', NULL, 'Himalaya'),
(148, 'Géographie', 7, 1, 'QCM', 'Où se situe la Corée du Nord?', 'Au Nord de la Corée duSud', 'Grandline', 'A l\'est', 'A l\'Ouest', 'Au Nord de la Corée duSud'),
(149, 'Histoire', 5, 3, 'QCM', 'Quel est le peuple a envahi l\'Europe au début du Moyen-Age ?', 'viking', 'curde', 'franc', 'huns', 'viking'),
(150, 'Histoire', 5, 3, 'QCM', 'Quel est le premier roi de Norvège ?', 'Harald I', 'Harald 6', 'Xavier 1', 'Jean-Paul 2', 'Harald I'),
(151, 'Géographie', 5, 1, 'QCM', 'Quelle est la capitale de la Suède ?', 'Stockolm', 'Copenhague', 'Paris', 'Ikea', 'Stockholm'),
(152, 'Géographie', 5, 1, 'QCM', 'Quelle mer borde la Normandie, L\'angleterre et le Danemark ?', 'mer noir', 'mer du nord', 'mer rouge', 'mer méditerranée', 'mer du nord'),
(153, 'Sport et loisir', 5, 6, 'QCM', 'Quel sport est d\'origine Finlandaise ?', 'molkky', 'moka', 'polka', 'PLK', 'molkky'),
(154, 'Sport et loisir', 5, 6, 'QCM', 'Quel sport est le plus pratiqué en Suède ?', 'football', 'curling', 'golf', 'luge sur le sable', 'football'),
(155, 'Art littéraire', 5, 4, 'QCM', 'Quelle est la saga la plus célèbre ?', 'Heimskringla', 'patebolo', 'jusgriker', 'olajsépa', 'Heimskringla'),
(156, 'Art littéraire', 5, 4, 'QCM', 'Qui est l\'auteur de Kurt Wallander ?', 'Henning Mankel', 'Kurt Wallander', 'Ystad', 'Göteborg', 'Henning Mankel'),
(157, 'Histoire', 5, 3, 'QCM', 'En quelle année August Svante Arrhenius a obtenu le prix nobel de chimie ?', '1903', '500', '2021', '2548', '1903'),
(158, 'Divertissement', 5, 2, 'QCM', 'Quel est la durée du \"soleil de minuit\" (période) ou le soleil ne se couche pas ?', '30', '45', '15', '365', '30'),
(159, 'Sport et loisir', 5, 6, 'QCM', 'Quel est le joueur de Foot Suèdois le plus titré ?', 'Zlatan', 'Dafalgan', 'Dolipran', 'Malocran', 'Zlatan'),
(160, 'Sport et loisir', 5, 6, 'QCM', 'Quel est le surnom de l\'èquipe national de Suède ?', 'Blågult', 'Ghzhsya', 'Yojépapqjsuislà', 'oulajsépa', 'Blågult'),
(161, 'Sport et loisirs', 5, 6, 'QCM', 'Quel est le joueur de Foot Suèdois le plus titré ?', 'Zlatan', 'Dafalgan', 'Dolipran', 'Malocran', 'Zlatan'),
(162, 'Sport et loisirs', 5, 6, 'QCM', 'Quel est le surnom de l\'èquipe national de Suède ?', 'Blågult', 'Ghzhsya', 'Yojépapqjsuislà', 'oulajsépa', 'Blågult');

-- --------------------------------------------------------

--
-- Table structure for table `scores`
--

CREATE TABLE `scores` (
  `id` int(11) NOT NULL,
  `nickname` varchar(255) NOT NULL,
  `scorevalue` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `themes`
--

CREATE TABLE `themes` (
  `theme_id` int(11) NOT NULL,
  `theme` varchar(150) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `themes`
--

INSERT INTO `themes` (`theme_id`, `theme`, `description`) VALUES
(1, 'Inde', ''),
(2, 'Afrique du Nord\r\n', ''),
(3, 'Iran', ''),
(4, 'Europe de l\'Est', ''),
(5, 'Europe du Nord', ''),
(6, 'Japon', ''),
(7, 'Corée du Nord', ''),
(8, 'Amérique du Sud', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_theme_id` (`theme_id`);

--
-- Indexes for table `themes`
--
ALTER TABLE `themes`
  ADD PRIMARY KEY (`theme_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;

--
-- AUTO_INCREMENT for table `themes`
--
ALTER TABLE `themes`
  MODIFY `theme_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `FK_theme_id` FOREIGN KEY (`theme_id`) REFERENCES `themes` (`theme_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
