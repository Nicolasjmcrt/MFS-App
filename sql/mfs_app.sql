-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le : ven. 17 fév. 2023 à 08:58
-- Version du serveur : 5.7.39
-- Version de PHP : 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `mfs_app`
--

-- --------------------------------------------------------

--
-- Structure de la table `airport`
--

CREATE TABLE `airport` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `updated_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `airport`
--

INSERT INTO `airport` (`id`, `name`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Hartsfield-Jackson Atlanta International Airport (ATL)', '<div>L’<strong>aéroport international Hartsfield-Jackson</strong> (<a href=\"https://fr.wikipedia.org/wiki/Code_IATA_des_a%C3%A9roports\">code IATA</a> : <strong>ATL</strong> • <a href=\"https://fr.wikipedia.org/wiki/Code_OACI_des_a%C3%A9roports\">code OACI</a> : <strong>KATL</strong>) est un <a href=\"https://fr.wikipedia.org/wiki/A%C3%A9roport_international\">aéroport international</a> majeur à <a href=\"https://fr.wikipedia.org/wiki/Atlanta\">Atlanta</a> en <a href=\"https://fr.wikipedia.org/wiki/G%C3%A9orgie_(%C3%89tats-Unis)\">Géorgie</a> (<a href=\"https://fr.wikipedia.org/wiki/%C3%89tats-Unis\">États-Unis</a>). Plus grand <a href=\"https://fr.wikipedia.org/wiki/A%C3%A9roport\">aéroport</a> des <a href=\"https://fr.wikipedia.org/wiki/%C3%89tats-Unis\">États-Unis</a> et <a href=\"https://fr.wikipedia.org/wiki/Liste_des_a%C3%A9roports_les_plus_fr%C3%A9quent%C3%A9s_du_monde_par_nombre_de_passagers\">du monde par nombre de passagers</a> (110,531 millions de passagers en 2019) il l\'est également par le nombre de <a href=\"https://fr.wikipedia.org/wiki/A%C3%A9roports_les_plus_fr%C3%A9quent%C3%A9s_du_monde_par_des_mouvements_d%27a%C3%A9ronefs\">mouvements d\'aéronefs</a>.<br><br></div><div>Son nom vient des anciens maires d\'Atlanta <a href=\"https://fr.wikipedia.org/wiki/William_B._Hartsfield\">William B. Hartsfield</a> (1890-1971) (qui a participé à la transformation de l\'aéroport) et <a href=\"https://fr.wikipedia.org/wiki/Maynard_Jackson\">Maynard Jackson</a> (1938-2003) (premier maire <a href=\"https://fr.wikipedia.org/wiki/Afro-Am%C3%A9ricains\">afro-américain</a> de la ville, qui a participé à la modernisation de l\'aéroport).<br><br>En 1909, Hartsfield était un circuit de course automobile qui appartenait au fondateur de la <a href=\"https://fr.wikipedia.org/wiki/The_Coca-Cola_Company\"><em>Coca-Cola Company</em></a>, <a href=\"https://fr.wikipedia.org/wiki/Asa_Griggs_Candler\">Asa Griggs Candler</a>. Celui-ci avait acheté les rares terrains plats de la ville, il deviendra plus tard le maire d\'Atlanta, de 1916 à 1919.<br><br></div><div>L\'aéroport est ensuite devenu municipal. Mais c\'est surtout à la fin des années <a href=\"https://fr.wikipedia.org/wiki/1970\">1970</a> qu\'il a pris son essor. Une étude ayant montré que les vents de travers ne soufflaient intensément que quelques heures par an, l\'architecte a proposé de supprimer les pistes transversales. Cela a permis de n\'avoir que des pistes parallèles les unes aux autres. Grâce à cette configuration, l\'aéroport a pu s\'étendre. C\'est le premier aéroport du monde où tous les avions sont au contact avec le terminal, c\'est-à-dire que les passagers n\'ont pas besoin d\'emprunter un bus ou une navette à la sortie de l\'appareil.<br><br></div><div>Entre les terminaux, l\'architecte a ajouté un train. Il est pourvu d\'une voix qui énonce l\'alphabet pour que personne n\'oublie de descendre à son terminal : B comme Bravo, C comme Charlie.<br><br></div><div>La mondialisation a atteint doucement <a href=\"https://fr.wikipedia.org/wiki/Atlanta\">Atlanta</a>. En <a href=\"https://fr.wikipedia.org/wiki/1978\">1978</a>, la compagnie nationale belge <a href=\"https://fr.wikipedia.org/wiki/Sabena\">Sabena</a> a été la première compagnie étrangère à être représentée. <a href=\"https://fr.wikipedia.org/wiki/Jimmy_Carter\">Jimmy Carter</a>, le nouveau président, était un ami du consul général de <a href=\"https://fr.wikipedia.org/wiki/Belgique\">Belgique</a>.<br><br></div>', '9b37a6cf8f908610b8c198239348780762e9409a.png', '2023-02-11 12:13:22', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `company`
--

CREATE TABLE `company` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `updated_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)',
  `code` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_letter_id` int(11) NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `company`
--

INSERT INTO `company` (`id`, `name`, `description`, `image`, `created_at`, `updated_at`, `code`, `first_letter_id`, `logo`, `slug`) VALUES
(3, 'American Airlines', '<div><strong>American Airlines</strong> (<a href=\"https://fr.wikipedia.org/wiki/Liste_des_codes_AITA_des_compagnies_a%C3%A9riennes\">Code AITA</a> : <strong>AA</strong> ; <a href=\"https://fr.wikipedia.org/wiki/Organisation_de_l%27aviation_civile_internationale\">code OACI</a> : <strong>AAL</strong>) est une <a href=\"https://fr.wikipedia.org/wiki/Compagnie_a%C3%A9rienne\">compagnie aérienne</a> continentale nord américaine. Elle exploite des vols intérieurs et internationaux depuis ses nombreux <a href=\"https://fr.wikipedia.org/wiki/Plate-forme_de_correspondance\"><em>hubs</em></a> (plates-formes) basés aux <a href=\"https://fr.wikipedia.org/wiki/%C3%89tats-Unis\">États-Unis</a>. En <a href=\"https://fr.wikipedia.org/wiki/2018\">2018</a>, c\'est la plus grande compagnie aérienne au monde. Elle dessert, avec sa filiale régionale <a href=\"https://fr.wikipedia.org/wiki/American_Eagle_(compagnie_a%C3%A9rienne)\">American Eagle</a> plus de 350 destinations dans plus de 50 pays et territoires avec plus de 6700 vols quotidiens. Elle est contrôlée par <a href=\"https://fr.wikipedia.org/wiki/AMR_(entreprise)\">AMR Corporation</a> dont le siège social se trouve à <a href=\"https://fr.wikipedia.org/wiki/Fort_Worth\">Fort Worth</a>, aux <a href=\"https://fr.wikipedia.org/wiki/%C3%89tats-Unis\">États-Unis</a> dans l\'état du <a href=\"https://fr.wikipedia.org/wiki/Texas\">Texas</a>. En <a href=\"https://fr.wikipedia.org/wiki/2019\">2019</a>, elle est au 68e rang du <a href=\"https://fr.wikipedia.org/wiki/Fortune_500\">Fortune 500</a><a href=\"https://fr.wikipedia.org/wiki/American_Airlines#cite_note-5\">5</a>. American Airlines est membre fondateur de l\'alliance <a href=\"https://fr.wikipedia.org/wiki/Oneworld\">Oneworld</a>. En 2013, celle-ci a fusionné avec la compagnie <a href=\"https://fr.wikipedia.org/wiki/US_Airways\">US Airways</a> afin de former la plus grande compagnie aérienne au monde.</div>', 'bdc826bbeb11525cdd88316ac1148588a69586ab.jpg', '2023-02-12 15:40:53', '2023-02-14 17:22:50', 'AA', 1, '26d0fe463a7e1bef4f3b26b4eba73287e3c52959.jpg', 'american-airlines'),
(4, 'Delta Air Lines', '<div><strong>Delta Air Lines</strong>, (<a href=\"https://fr.wikipedia.org/wiki/Liste_des_codes_AITA_des_compagnies_a%C3%A9riennes\">Code AITA</a> : <strong>DL</strong> ; <a href=\"https://fr.wikipedia.org/wiki/Organisation_de_l%27aviation_civile_internationale\">code OACI</a> : <strong>DAL</strong>) est une <a href=\"https://fr.wikipedia.org/wiki/Compagnie_a%C3%A9rienne\">compagnie aérienne</a> <a href=\"https://fr.wikipedia.org/wiki/%C3%89tats-Unis\">américaine</a> opérant sur des vols réguliers aux États-Unis et dans le monde. Delta, dont le siège est à <a href=\"https://fr.wikipedia.org/wiki/Atlanta\">Atlanta</a>, est régie par les lois du <a href=\"https://fr.wikipedia.org/wiki/Delaware\">Delaware</a>.</div><div><br></div><div>Ayant fusionné depuis le <a href=\"https://fr.wikipedia.org/wiki/29_octobre\">29</a> <a href=\"https://fr.wikipedia.org/wiki/Octobre_2008\">octobre</a> <a href=\"https://fr.wikipedia.org/wiki/2008\">2008</a> avec <a href=\"https://fr.wikipedia.org/wiki/Northwest_Airlines\">Northwest Airlines</a>, Delta est l\'une des principales compagnies au monde, avec 75 000 employés, desservant 375 destinations dans 66 pays. Son chiffre d\'affaires est de 41 milliards de dollars USD (2017).</div><div><br></div><div>Au <a href=\"https://fr.wikipedia.org/wiki/1er_novembre\">1er</a> <a href=\"https://fr.wikipedia.org/wiki/Novembre_2004\">novembre</a> <a href=\"https://fr.wikipedia.org/wiki/2004\">2004</a>, Delta (en incluant ses participations à 100 % comme <a href=\"https://fr.wikipedia.org/wiki/Atlantic_Southeast_Airlines\">Atlantic Southeast Airlines</a>, Inc. et <a href=\"https://fr.wikipedia.org/wiki/Comair_(entreprise)\">Comair Inc.</a>) dessert 211 villes américaines dans 46 États, le <a href=\"https://fr.wikipedia.org/wiki/Washington_(district_de_Columbia)\">District de Columbia</a>, <a href=\"https://fr.wikipedia.org/wiki/Porto_Rico\">Porto Rico</a> et les <a href=\"https://fr.wikipedia.org/wiki/%C3%8Eles_Vierges_am%C3%A9ricaines\">îles Vierges américaines</a> ainsi que 51 villes à l\'étranger dans 33 pays. Delta en service intérieur et international, <a href=\"https://fr.wikipedia.org/w/index.php?title=(compagnie_a%C3%A9rienne)&amp;action=edit&amp;redlink=1\">(compagnie aérienne)</a>, <a href=\"https://fr.wikipedia.org/w/index.php?title=Delta_Shuttle&amp;action=edit&amp;redlink=1\">Delta Shuttle</a> <a href=\"https://en.wikipedia.org/wiki/Delta_Shuttle\"><strong>(en)</strong></a>, <a href=\"https://fr.wikipedia.org/wiki/Delta_Connection\">Delta Connection</a>, <a href=\"https://fr.wikipedia.org/w/index.php?title=Delta_SkyTeam&amp;action=edit&amp;redlink=1\">Delta SkyTeam</a> ainsi que ses partenaires à travers le monde effectuent chaque jour 7 615 vols vers 496 aéroports dans 88 pays. Ses principaux <a href=\"https://fr.wikipedia.org/wiki/Plate-forme_de_correspondance_a%C3%A9roportuaire\">hubs</a> sont <a href=\"https://fr.wikipedia.org/wiki/Atlanta\">Atlanta</a>, <a href=\"https://fr.wikipedia.org/wiki/Cincinnati\">Cincinnati</a>, <a href=\"https://fr.wikipedia.org/wiki/Salt_Lake_City\">Salt Lake City</a>, <a href=\"https://fr.wikipedia.org/wiki/New_York\">New York</a>, <a href=\"https://fr.wikipedia.org/wiki/Memphis_(Tennessee)\">Memphis</a>, <a href=\"https://fr.wikipedia.org/wiki/D%C3%A9troit_(Michigan)\">Détroit</a> et <a href=\"https://fr.wikipedia.org/wiki/Minneapolis\">Minneapolis</a>. En 2021, Delta Air Lines était la compagnie aérienne qui a accueilli le plus de passagers au monde. En effet, environ 260 millions de passagers ont voyagé à bord des agents de la compagnie.</div>', '3943042a638c42403ba53d81725e9fba6579b7c9.jpg', '2023-02-12 15:42:04', '2023-02-14 17:23:07', 'DL', 2, '0850b0fcdf1353b36e4c57ce8f2303ff8eb87a07.jpg', 'delta-air-lines'),
(5, 'United Airlines', '<div>United Airlines, qui a sa base à Chicago, a été fondée en 1926 par Walter Varney. Il l\'appela Varney Air Lines (le nom changea en 1934). En 2010, United a fusionné avec Continental, une autre compagnie aérienne créée à l\'origine par Walter Varney.</div>', 'de367709820ec03ec3682d3f2cbd99cb540aae71.jpg', '2023-02-12 15:53:34', '2023-02-14 17:23:18', 'UA', 3, 'b1835f15fb7aa72703ea0c29fa419f5cf2b97083.jpg', 'united-airlines'),
(6, 'Lufthansa', '<div>Lufthansa, le porte-drapeau de l\'Allemagne, a commencé à voler en 1953. L\'une des compagnies aériennes les plus importantes et les plus prestigieuses au monde, largement connue pour ses services haut de gamme.</div>', 'f4876e8b9a37a3da519df15420e6ca76581cd698.jpg', '2023-02-12 15:59:50', '2023-02-14 17:23:31', 'LH', 4, '37a39d9bfded7be6bd87ce0a52104cc451f7ca6f.jpg', 'lufthansa'),
(7, 'Air France', '<div>Air France a vu le jour en 1933 lorsque cinq petites compagnies aériennes ont fusionné. En 1976, elle a commencé à opérer des vols supersoniques Concorde à travers l\'Atlantique. En 2003, la compagnie aérienne a fusionné avec KLM, après quoi elle a opéré en tant que filiale du groupe Air France KLM.</div>', 'b4601a63117ea5d859a151c3bfa59dedb20ac19a.jpg', '2023-02-12 16:02:10', '2023-02-14 17:23:41', 'AF', 1, '23797ebe66dfa71c2b1bb87472e882138c938c6f.jpg', 'air-france'),
(8, 'British Airways', '<div>British Airways a été créée en 1973 lorsque la BOAC et la BEA ont fusionné pour former une seule compagnie aérienne. En 1987, elle est devenue une société privée. En 2011, British Airways a fusionné avec Iberia pour faire partie du groupe International Airlines.</div>', 'f8247d8f5bb68a638b2d7322a9b5572dce85c3fd.jpg', '2023-02-12 16:04:05', '2023-02-14 17:23:55', 'BA', 5, 'a355801a3c09214109ddd7cbf83df524eb3ba739.jpg', 'british-airways'),
(9, 'Emirates', '<div>Emirates a commencé à voler en 1985 avec seulement deux avions. La compagnie aérienne a grandi rapidement. Au salon aéronautique de Dubaï en 2007, il a passé des commandes pour 143 avions. Quatre ans plus tard, Boeing a passé sa plus grosse commande en termes de valeur.</div>', '4ef9fcfbae23d367a82faa87acac82abcc935cc3.jpg', '2023-02-12 16:06:09', '2023-02-14 17:24:04', 'EK', 6, 'e63677736fdf524e7961692a2c60f294c673cd24.jpg', 'emirates'),
(10, 'Etihad Airways', '<div>Etihad Airways est la compagnie aérienne nationale des Emirats Arabes Unis. Elle a été créée par arrêté royal en 2003 et a depuis pris des participations dans plusieurs autres compagnies aériennes mondiales. \'Etihad\' est le mot arabe pour \'union\'.</div>', '6d6ee6ac56697db9ac00037e727abab9ee8a3fc4.jpg', '2023-02-12 16:08:24', '2023-02-14 17:24:21', 'EY', 6, 'd4e4dd45f8f5c8dec54d55044169837a7e07a84d.jpg', 'etihad-airways'),
(11, 'Eurowings', '<div>Eurowings a été créée en février 1993 et ​​dessert un réseau de liaisons nationales et européennes, ainsi que certaines destinations long-courriers. C\'est une filiale du groupe Lufthansa et exploite un certain nombre de routes autrefois desservies par Germanwings.</div>', 'd8d7dae2ee1c80ee0ba6edf5aa2c2dea99720780.jpg', '2023-02-12 16:10:17', '2023-02-14 17:24:31', 'EW', 6, '71dc58ae276ac11195961cd2c6a42f5f437256e3.jpg', 'eurowings'),
(12, 'Aeromexico', '<div>Bien qu\'Aeromexico remonte à 1934, la compagnie aérienne moderne a vu le jour en 1988 après sa privatisation. Le symbole d\'Aeromexico est le chevalier de l\'aigle, membre d\'une ancienne classe de guerriers aztèques qui s\'habillait de manteaux de plumes.</div>', '29ca7c0ed925b3e4c0a470477daf3aca011fa892.jpg', '2023-02-12 16:16:25', '2023-02-14 17:24:49', 'AM', 1, 'fe5e36fcc4f97f847989aea56a074b0c6d3dbbb2.jpg', 'aeromexico'),
(13, 'Air Canada', '<div>Lorsqu\'Air Canada a commencé à voler en 1937, elle disposait d\'une flotte de trois appareils, dont l\'un avait déjà été utilisé pour la pulvérisation des cultures. La compagnie aérienne a changé son nom de Trans-Canada Airlines à Air Canada en 1954.</div>', '69950e32d1e8ddce3420862d47262d9795029c87.jpg', '2023-02-12 16:18:46', '2023-02-14 17:25:01', 'AC', 1, 'fcbd6bb64e80bee02c91a2cdeb4e0ca538b5c7d6.jpg', 'air-canada'),
(14, 'Air China', '<div>Air China était l\'une des six compagnies aériennes créées par le gouvernement chinois en 1988. Depuis lors, elle est devenue le porte-drapeau exclusif de l\'aviation civile. Le rouge chinois traditionnel du logo symbolise le bon augure, l\'achèvement, la paix et le bonheur.</div>', 'b1b6640359433601471e183ff96aa46d5314d7e0.jpg', '2023-02-12 16:22:16', '2023-02-14 17:25:14', 'CA', 1, 'f539e9cd2592e6b9d63613fa81908fb7591e32cc.jpg', 'air-china'),
(15, 'ANA', '<div>All Nippon Airways a débuté en 1952 sous le nom de Japan Helicopter &amp; Airplane Transports Co. Cinq ans plus tard, elle est devenue All Nippon Airways. La compagnie aérienne a commencé des vols internationaux réguliers en exploitant un service entre Tokyo et Guam.</div>', '184649c31f07054fa1f4cecb74d2afa9131aab28.jpg', '2023-02-12 16:23:54', '2023-02-14 17:25:27', 'NH', 1, '51afda4c551fec2045ded5b59a7587fd427b1230.jpg', 'ana'),
(16, 'Avianca', '<div>Avianca, la compagnie nationale colombienne, a été fondée en 1919. Elle est devenue membre de la Star Alliance en 2012 et a lancé des vols directs entre Heathrow et Bogotá en 2014. Elle dispose d\'un hub à l\'aéroport international El Dorado de Bogotá.</div>', '8a00a1a7363301148e9c7d65277a0c87f3b79b94.jpg', '2023-02-12 16:25:46', '2023-02-14 17:25:37', 'AV', 1, '17ef66468cc5a2046b8da5fe90e5b56e81b213d3.jpg', 'avianca'),
(17, 'Beijing Capital Airlines', '<div>Beijing Capital Airlines a été créée en 2010 à partir de la division de Deer Jet Airlines. Elle est membre du groupe HNA et est basée à Pékin. Les vols entre Heathrow et Qingdao, dans la province du Shandong, ont commencé en 2017.</div>', 'a4b1551d7a287ad1ca032acd31bd7c19e765c400.jpg', '2023-02-12 16:27:22', '2023-02-14 17:25:59', 'JD', 5, '1fba5f5069420f5bea2e49d2dc94fe6728521b52.jpg', 'beijing-capital-airlines'),
(18, 'China Airlines', '<div>China Airlines a été créée en 1959 et est le transporteur national de Taïwan. China Airlines démarre ses opérations à Heathrow dans les mois à venir avec des liaisons directes vers Taipei.</div>', 'dafaa1bd78581be7e06f5d6745006a0e88618a64.jpg', '2023-02-12 16:39:44', '2023-02-14 17:28:58', 'CI', 7, '3763420db780075178c9adacac7604ca3b3b5269.jpg', 'china-airlines'),
(19, 'China Southern', '<div>L\'emblème de la fleur de kapok rouge brillant de China Southern Airlines montre son affiliation avec sa ville natale de Guangzhou. La compagnie aérienne, qui a été créée en 1988, a remporté de nombreux prix, notamment en étant nommée meilleure compagnie aérienne en Chine.</div>', 'bc8f36c0ad89b9282440aa8caca42a7de56e9d68.jpg', '2023-02-12 16:43:53', '2023-02-14 17:29:11', 'CZ', 7, '566523ba324fde6aad6ac5b29c0b80b20f893de3.jpg', 'china-southern'),
(20, 'Egyptair', '<div>Egyptair a débuté en 1932. Pendant 11 ans, lors d\'une fusion avec Syrian Airlines, elle était connue sous le nom de United Arab Airlines. Lorsque les deux se sont séparés en 1971, il est revenu à son nom d\'origine.</div>', '4c6bd6e9702095dc9d528d321644b11842af2013.jpg', '2023-02-12 16:55:29', '2023-02-14 17:29:24', 'MS', 6, 'e115b349f1b70a60a62013d7648c923611031654.jpg', 'egyptair'),
(21, 'El Al', '<div>Avec son vol inaugural en 1948, El Al a ramené le premier président d\'Israël de Genève. En moins de deux ans, il assurait un service régulier vers Londres. En 2005, le gouvernement a renoncé à sa participation majoritaire dans la compagnie aérienne.</div>', 'bcb74d25289274174235849e56aa15ca9a5f8e30.jpg', '2023-02-12 16:56:40', '2023-02-14 17:29:40', 'LY', 6, 'b329c67bfc2d9a759ae42b6619f6b4ba1936fe40.jpg', 'el-al'),
(22, 'Flybe', '<div>Flybe operates to Belfast City, Leeds/Bradford and Amsterdam</div>', '9f21e2f332d2905f2d3f0b9d06d3f3e9fa5f540c.jpg', '2023-02-12 17:32:15', '2023-02-14 17:29:50', 'BE', 8, '70829b31ae456a4e2dd98e50eb63fe2cd0dcb602.jpg', 'flybe'),
(23, 'Garuda Indonesia', '<div>Garuda Indonesia est la compagnie aérienne porte-drapeau de l\'Indonésie, du nom de l\'oiseau sacré de l\'hindouisme - l\'emblème national indonésien. La compagnie aérienne a commencé à voler en 1949 sous le nom de KLM Interinsulair Bedrijf. En 2014, il est devenu le 20e membre de l\'alliance mondiale des compagnies aériennes SkyTeam.</div>', '3f710053832362c2da10152daf16a3c8e0fb2fec.jpg', '2023-02-12 17:33:55', '2023-02-14 17:30:09', 'GA', 9, '992115108d9dd3405b40598c76e1454f50d07385.jpg', 'garuda-indonesia'),
(24, 'Gulf Air', '<div>A British pilot set up Gulf Air in 1950 as the Gulf Aviation Company. In 1974 the airline became the flag carrier for a group of four Gulf states. In 2007 it became wholly owned by the Kingdom of Bahrain.</div>', '27eccdb2b221067df24356fcb68ad531d9cdb58d.jpg', '2023-02-12 17:35:54', '2023-02-14 17:30:21', 'GF', 9, '78f51abed2a0066b76637fbfe829be43d463527c.jpg', 'gulf-air'),
(25, 'Hainan Airlines', '<div>Hainan Airlines a été fondée en janvier 1993 dans la province de Hainan, la plus grande zone économique spéciale de Chine. En tant que l\'une des compagnies aériennes qui se développe le plus rapidement en Chine, Hainan Airlines s\'engage à fournir aux passagers un service holistique, transparent et de haute qualité.</div>', '8317104efff1158e720f4767072d61f6f727360d.jpg', '2023-02-12 17:37:23', '2023-02-14 17:30:35', 'HU', 10, '4a35b54d461129767ee856e406eabf1b9352b617.jpg', 'hainan-airlines'),
(26, 'Iberia', '<div>Iberia, fondée en 1927, a été la première compagnie aérienne espagnole et la première à voler entre l\'Europe et l\'Amérique du Sud. La compagnie aérienne a été privatisée en 2001. En 2011, Iberia a fusionné avec British Airways pour former le groupe International Airlines.</div>', 'ce5921829c0e4b2a36c201f4f0bbd8308b81d007.jpg', '2023-02-12 17:40:18', '2023-02-14 17:30:44', 'IB', 11, '1739582a817a57f42071c38d23bcd641e55b7953.jpg', 'iberia'),
(27, 'ITA Airways', '<div>ITA Airways est la compagnie aérienne nationale italienne. La compagnie aérienne appartient entièrement au gouvernement italien via son ministère de l\'Économie et des Finances. En tant que successeur du défunt porte-drapeau de l\'Italie.</div>', '432b86753b711b356b8133cfbca5164dc92b4d6b.jpg', '2023-02-12 17:44:05', '2023-02-14 17:30:56', 'AZ', 11, 'b6c79a1c25e39671fa86d8680d92fc8c1c4ccb36.jpg', 'ita-airways'),
(28, 'Japan Airlines', '<div>Japan Airlines was set up in 1951. In 1954 it began its first international service to San Francisco. The airline was privatised in 1987. Its emblem is a crane with its wings raised in a circle over its head.</div>', 'd8c4e4a5aa94be5b11857aa7491763f8f38b2a18.jpg', '2023-02-12 17:45:38', '2023-02-14 17:31:07', 'JL', 12, 'b208e04f8d67171d1d5d6e45cd6da8215dcabe6e.jpg', 'japan-airlines'),
(29, 'Jazeera', '<div>Jazeera Airways est la première compagnie aérienne privée du Moyen-Orient. Notre compagnie aérienne basée au Koweït exploite son propre terminal à l\'aéroport international de Koweït, garantissant une expérience passager améliorée. Commençant nos opérations de vol en 2005, nous avons étendu notre portée à plus de 44 destinations passionnantes.</div>', 'a2310cec13d61bd5da86e17835bb97763638e374.jpg', '2023-02-12 17:47:14', '2023-02-14 17:31:17', 'J9', 12, 'e5ba072df857d09a25bde0968f0b04ae5b563a68.jpg', 'jazeera'),
(30, 'JetBlue', '<div>Née à New York JFK en 1999, JetBlue est la compagnie aérienne de New York et est aujourd\'hui l\'un des principaux transporteurs à Boston, Fort Lauderdale et dans le sud de la Floride, Orlando, Los Angeles et San Juan, desservant plus de 100 destinations aux États-Unis, en Amérique latine, dans les Caraïbes et Londres avec des tarifs bas et un service primé. L\'expérience JetBlue comprend le plus d\'espace pour les jambes dans l\'autocar, une connexion Wi-Fi haut débit gratuite, la télévision et des films en direct gratuits à chaque siège, ainsi que des collations et des boissons de marque gratuites. Mint - la version rafraîchissante de JetBlue pour une expérience de voyage haut de gamme - est disponible sur certains itinéraires d\'un océan à l\'autre et internationaux, et propose des sièges et des suites entièrement inclinables, un menu de petites assiettes et un service de boissons organisé par nos restaurants partenaires de New York, des tonnes de des divertissements en vol gratuits, des kits de bien-être uniques et bien plus encore.</div>', 'c33f79560d5f5bafffe76bab7a8f691ac70afa8a.jpg', '2023-02-12 17:49:03', '2023-02-14 17:31:31', 'B6', 12, 'bf06e083f1c0098698a47197316c235c6d73ae01.jpg', 'jetblue'),
(31, 'Kenya Airways', '<div>Kenya Airways, Kenya\'s flag carrier, was founded in 1977. Until 1995 and privatisation, it was fully owned by the Kenyan government. Afterwards the government had a minority stake; the other large shareholder was KLM.</div>', '542ad40fdc60024ccc92bd515914291df37173d2.jpg', '2023-02-12 17:50:24', '2023-02-14 17:31:45', 'KQ', 13, '22a269f6450d3a9fa2bcbd4bfc1ab42241ba3561.jpg', 'kenya-airways'),
(32, 'KLM - Royal Dutch Airlines', '<div>KLM a acquis sa désignation royale en 1919. Plus de 90 ans plus tard, elle conserve son nom d\'origine. En 2004, KLM fusionne avec Air France. KLM est l\'abréviation de Koninklijke Luchtvaart Maatschappij, le nom néerlandais de la compagnie aérienne.</div>', 'c4b7dc1464976c9f8c2062d23c95ffce0f0428cb.jpg', '2023-02-12 17:52:04', '2023-02-14 17:31:54', 'KL', 13, '5acf3bda40d457f41636b6b734a731479d9d066a.jpg', 'klm'),
(33, 'Korean Air', '<div>Korean Air, la compagnie aérienne nationale sud-coréenne, a été créée en 1969. À l\'époque, elle s\'appelait Korean Air Lines. Le changement de nom et une nouvelle livrée ont eu lieu en 1984. En 2013, Korean Air a acquis une participation substantielle dans Czech Airlines.</div>', '4dc12dde8d07b611ad24c8ed987e8ae400bf768a.jpg', '2023-02-12 17:53:24', '2023-02-14 17:32:05', 'KE', 13, 'a7e8cb2ec4216b4c92fb2a55e9e7c16ac7cfd2d6.jpg', 'korean-air'),
(34, 'Kuwait Airways', '<div>Kuwait Airways a débuté en 1954 en tant que compagnie aérienne privée. Après des difficultés financières au début, le gouvernement koweïtien a pris une participation de 50%, puis le contrôle total en 1963. Au lendemain de l\'invasion irakienne, la compagnie aérienne a été relancée avec de nouveaux locaux et avions.</div>', 'ddad7ef174ecb2920542a4fbf261c023406fce3b.jpg', '2023-02-12 17:54:35', '2023-02-14 17:32:23', 'KU', 13, '3529f83a0230e7310c4cb7f28024fded3617b0df.jpg', 'kuwait-airways');

-- --------------------------------------------------------

--
-- Structure de la table `company_first_letter`
--

CREATE TABLE `company_first_letter` (
  `id` int(11) NOT NULL,
  `letter` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `company_first_letter`
--

INSERT INTO `company_first_letter` (`id`, `letter`) VALUES
(1, 'A'),
(2, 'D'),
(3, 'U'),
(4, 'L'),
(5, 'B'),
(6, 'E'),
(7, 'C'),
(8, 'F'),
(9, 'G'),
(10, 'H'),
(11, 'I'),
(12, 'J'),
(13, 'K'),
(14, 'M'),
(15, 'O'),
(16, 'P'),
(17, 'Q'),
(18, 'R'),
(19, 'S'),
(20, 'T'),
(21, 'V'),
(22, 'W');

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `messenger_messages`
--

INSERT INTO `messenger_messages` (`id`, `body`, `headers`, `queue_name`, `created_at`, `available_at`, `delivered_at`) VALUES
(1, 'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:21:\\\"messenger.bus.default\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:51:\\\"Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\\":2:{s:60:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0message\\\";O:39:\\\"Symfony\\\\Bridge\\\\Twig\\\\Mime\\\\TemplatedEmail\\\":4:{i:0;s:25:\\\"emails/register.html.twig\\\";i:1;N;i:2;a:1:{s:4:\\\"user\\\";O:15:\\\"App\\\\Entity\\\\User\\\":9:{s:19:\\\"\\0App\\\\Entity\\\\User\\0id\\\";i:4;s:22:\\\"\\0App\\\\Entity\\\\User\\0email\\\";s:23:\\\"jumeaucourtmx@gmail.com\\\";s:22:\\\"\\0App\\\\Entity\\\\User\\0roles\\\";a:0:{}s:25:\\\"\\0App\\\\Entity\\\\User\\0password\\\";s:60:\\\"$2y$13$MEsqli3AQv.DR3w0JCaQx.Q9xbI/FPDcbjJIO5djdUStJc9s5y./K\\\";s:25:\\\"\\0App\\\\Entity\\\\User\\0lastname\\\";s:11:\\\"Jumeaucourt\\\";s:26:\\\"\\0App\\\\Entity\\\\User\\0firstname\\\";s:6:\\\"Maxime\\\";s:23:\\\"\\0App\\\\Entity\\\\User\\0avatar\\\";N;s:27:\\\"\\0App\\\\Entity\\\\User\\0created_at\\\";O:17:\\\"DateTimeImmutable\\\":3:{s:4:\\\"date\\\";s:26:\\\"2023-02-13 15:43:03.303977\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}s:28:\\\"\\0App\\\\Entity\\\\User\\0is_verified\\\";b:0;}}i:3;a:6:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;a:0:{}i:5;a:2:{i:0;O:37:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\\":2:{s:46:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0headers\\\";a:3:{s:4:\\\"from\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:4:\\\"From\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:20:\\\"no-reply@mfs-app.net\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:0:\\\"\\\";}}}}s:2:\\\"to\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:2:\\\"To\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:23:\\\"jumeaucourtmx@gmail.com\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:0:\\\"\\\";}}}}s:7:\\\"subject\\\";a:1:{i:0;O:48:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:7:\\\"Subject\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:55:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\0value\\\";s:38:\\\"Activation de votre compte sur MFS App\\\";}}}s:49:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0lineLength\\\";i:76;}i:1;N;}}}s:61:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0envelope\\\";N;}}', '[]', 'default', '2023-02-13 15:43:03', '2023-02-13 15:43:03', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `plane`
--

CREATE TABLE `plane` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)',
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `max_speed` int(11) DEFAULT NULL,
  `cruising_speed` int(11) DEFAULT NULL,
  `engine` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_elevation` int(11) DEFAULT NULL,
  `empty_weight` int(11) DEFAULT NULL,
  `max_weight` int(11) DEFAULT NULL,
  `range_of_action` int(11) DEFAULT NULL,
  `fuel_capacity` int(11) DEFAULT NULL,
  `length` int(11) DEFAULT NULL,
  `wingspan` int(11) DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `plane`
--

INSERT INTO `plane` (`id`, `category_id`, `name`, `description`, `image`, `updated_at`, `created_at`, `max_speed`, `cruising_speed`, `engine`, `max_elevation`, `empty_weight`, `max_weight`, `range_of_action`, `fuel_capacity`, `length`, `wingspan`, `slug`) VALUES
(1, 1, 'Bell Model 407', '<div>Le 407 est un hélicoptère utilitaire monomoteur polyvalent produit par Bell Helicopter aux États-Unis.</div><div>Il est dérivé du 206L-3 LongRanger III de Bell, un appareil ayant connu un grand succès. Comme son prédécesseur, le 407 n\'est piloté que par un seul membre d\'équipage et peut accueillir jusqu\'à six passagers. Aujourd\'hui, l\'hélicoptère est l\'un des giravions les plus polyvalents et les plus avancés. Il utilise un système de rotor principal composite à quatre pales et une variante « soft-in-plane » avec un moyeu entièrement articulé et des roulements en élastomère. Le rotor de queue anticouple possède deux pales. L\'appareil a effectué son vol inaugural le 29 juin 1995 et a été mis en service en 1996. Plus de 1 500 appareils ont été produits à ce jour, et la cellule répond à un large éventail de besoins, notamment dans les domaines suivants : affaires, application de la loi, ambulance aérienne, recherche, médias, commerce, opérations spéciales, foresterie et armée. Le 407 mesure 12,7 mètres de long et 3,6 mètres de hauteur. Son système de rotor principal possède un diamètre de 10,7 mètres. L\'hélicoptère est équipé d\'un seul turbomoteur Rolls-Royce/Allison modèle 250-C47B qui fournit 650 chevaux pour le décollage et 600 chevaux en régime continu pour des opérations.</div><div><br></div><div>Le 407 a une autonomie de quatre heures, un plafond de vol stationnaire de 4 130 mètres au-dessus du niveau de la mer hors effet de sol, un plafond de vol stationnaire de 3 639 mètres au-dessus du niveau de la mer avec effet de sol et une vitesse de croisière maximale de 246 km/h.</div><div>Dans l\'univers des giravions, le Bell 407 est réputé pour sa maniabilité, sa fiabilité et ses hautes performances. Après des décennies de recherche, d\'améliorations et de perfectionnements, cet hélicoptère est l\'un des favoris des aviateurs, et répond à toute une gamme de besoins généraux et spécialisés.&nbsp;</div>', '61a2f3f9d4c98bc96dd5ba6dfe50b054b8a926dc.webp', '2023-02-14 17:11:28', '2023-02-03 14:07:57', 259, 185, '1 Moteur à réaction', 6096, 1202, 2268, 556, 492, NULL, NULL, 'bell-model-407'),
(2, 1, 'Guimbal G-2 Cabri', '<div>Le <strong>Guimbal Cabri G2</strong> est un hélicoptère léger biplace et monomoteur conçu et produit par la société française Hélicoptères Guimbal. Relativement nouveau dans le monde des giravions, le G2 a effectué son premier vol le 31 mars 2005 et est entré en service en 2008.&nbsp;</div><div>L\'hélicoptère est une vitrine de la technologie aérospatiale moderne, notamment son corps tout en composite, son ensemble de trains d\'atterrissage à patins, son avionique et ses commandes de vol, ainsi que ses systèmes de rotor.</div><div>Plus de 220 ont été livrés, la plupart étant utilisés à des fins de formation. Sa conception lui permet également d\'être facilement adapté à un véhicule aérien sans pilote, avec un large éventail d\'utilisations possibles.</div><div>Le Guimbal Cabri G2 est équipé d\'un système de rotor principal à 3 pales, entièrement articulé, de construction composite, d\'un diamètre de 7,1 mètres et d\'un Fenestron à 7 pales pour un rotor de queue anti-couple.</div><div>Ses patins d\'atterrissage sont fixés au corps par des polymères absorbant les vibrations et amortissant les chocs.</div><div>Le cockpit dispose de sièges côte à côte et d\'un poste de pilotage en verre avec une avionique, des commandes et un système de gestion de vol avancés.</div><div><br></div><div>L\'hélicoptère est propulsé par un seul moteur à piston Textron Lycoming 0360-J2A à 4 cylindres qui développe jusqu\'à 160 chevaux.</div><div>Le G2 peut voler en stationnaire hors de l\'effet de sol jusqu\'à 2286 mètres au-dessus du niveau de la mer, a une autonomie de 703 kilomètres et une endurance maximale de 5 heures et 40 minutes.</div><div>Il a une vitesse de croisière de 167 km/h et une vitesse maximale de vol en palier de 185 km/h.</div><div>La haute fiabilité et la haute performance définissent le Guimbal Cabri G2.</div><div>Développé sur plus d\'une décennie, cet hélicoptère élégant est une plateforme idéale pour l\'introduction au vol à voilure tournante, et c\'est aussi un engin exceptionnel pour faire passer les compétences de base à un niveau supérieur.</div>', 'b3df7bf73b4be619574ca20c9ceab38620c14417.webp', '2023-02-14 17:12:09', '2023-02-13 13:44:18', 556, 185, '1 piston', 3963, 420, 700, 741, 712, NULL, NULL, 'guimbal-g2-cabri'),
(3, 2, 'Hugues Hercules H4', '<div>Le H-4 Hercules est un hydravion à aile haute à 8 moteurs produit par la compagnie étatsunienne Hughes Aircraft Company.</div><div>Le H-4 a été conçu pour répondre à un besoin stratégique de transport transatlantique qui pourrait opérer malgré la menace des sous-marins allemands pendant la Seconde Guerre mondiale.</div><div>Le premier et le seul modèle du H-4 a été achevé après la guerre et a effectué son vol inaugural (qui sera aussi son unique vol) le 2 novembre 1947, avec Howard Hughes aux commandes.</div><div>Le voyage a été court, un peu plus d\'un kilomètre et demi.</div><div>Bien que jamais officiellement annoncé ou planifié, il prouva la navigabilité des hydravions.<br><br></div><div>Après son vol, Hughes fit entreposer le H-4 dans un grand hangar climatisé où il demeura pendant des décennies.</div><div>A la suite d\'une série de changements de propriétaires après la mort de Hughes en 1976, l\'Evergreen Aviation &amp; Space Museum, situé à McMinnville, dans l\'Oregon, a fini par acquérir l\'engin au début des années 1990.</div><div>Des techniciens démontèrent le H-4 pour le transporter soigneusement sur 1 930 kilomètres par barge et camion jusqu\'au musée, où il est toujours exposé de nos jours.<br><br></div><div>Microsoft et ses filiales ont travaillé en étroite collaboration avec plusieurs conservateurs de musée pour donner vie au H-4 dans Flight Simulator afin qu\'il puisse s\'envoler dans le ciel du monde numérique et permettre aux utilisateurs du monde entier de découvrir eux-mêmes la gloire de cet appareil hors du commun.</div><div><br></div><div>Le H-4 est le plus grand hydravion jamais conçu et détenait le record de l\'avion à la plus longue envergure ayant jamais volé jusqu\'au vol du modèle 351 du Stratolaunch de Scaled Composites, en 2019.</div><div>Le concept a été imaginé pour la première fois par le constructeur naval Henry Kaiser, qui s\'est associé à Howard Hughes pour le concrétiser.</div><div>Hughes a construit le H-4 en bois en raison de la rareté de l\'aluminium et d\'autres métaux pendant la guerre.</div><div>La presse baptisa officieusement l\'avion Spruce Goose (« oie d\'épicéa »), un nom que Howard Hughes trouvait vexant car il estimait qu\'il était une insulte aux ingénieurs de l\'avion et car sa construction n\'avait pas nécessité d\'épicéa; le H-4 a été construit presque entièrement en bouleau laminé.</div><div>Le H-4 mesure 66,5 mètres de long et dispose d\'une aile principale en porte-à-faux qui ne nécessite pas d\'amortisseurs ou de contreventements externes.</div><div>L\'aile, qui s\'étend sur 97,5 mètres, possède un allongement relativement élevé sur un design trapézoïdal allongé.</div><div>La machine de 181 tonnes est stabilisée sur l\'eau par deux pontons à ailettes, un de chaque côté de l\'avion.</div><div>Le H-4 est équipé d\'un empennage cruciforme.</div><div>L\'avion est propulsé par huit moteurs en étoile Pratt &amp; Whitney R4360 Wasp Major montés sur les ailes, les plus grands moteurs en étoile jamais construits.</div><div>Chaque groupe motopropulseur dispose de 28 pistons et produit 3 000 chevaux-vapeur, soit un total de 224 pistons générant 24 000 chevaux-vapeur.</div><div>Chaque Wasp est relié à une hélice à vitesse constante Hamilton Standard à 4 pales d\'un diamètre de 5.2 mètres.</div><div><br></div><div>Le H-4 affiche une autonomie comprise entre 4 600 et 4 900 kilomètres, un plafond de service de 7 160 mètres au-dessus du niveau de la mer, une vitesse de croisière de 318 kilomètres à l\'heure et une vitesse maximale de 373 km/h - mesures qui sont toutes théoriques car le H-4 original n\'a jamais été testé à sa pleine capacité opérationnelle.</div><div>L\'un des plus grands exploits non seulement du monde de l\'aérospatiale mais de l\'histoire de l\'ingénierie, le Hughes Aircraft H-4 Hercules est conçu pour pouvoir voler dans le monde entier.</div><div>Les aviateurs peuvent tester leurs compétences dans le cockpit du H-4, survolant les continents et les océans à bord de cette légende de l\'aviation.</div>', '050c7328f087618b10dc58440f8af2e2ece0933a.webp', '2023-02-14 17:12:32', '2023-02-13 20:33:55', NULL, NULL, NULL, NULL, 122500, 181500, NULL, NULL, NULL, NULL, 'hercules-h4'),
(4, 2, 'Volocopter VoloCity', '<div>Le VoloCity est un multicoptère électrique à décollage et atterrissage verticaux (eVTOL), un avion révolutionnaire conçu pour le transport de passagers en ville. Cet avion unique est un multicoptère de cinquième génération conçu par Volocopter GmbH, à Bruchsal, en Allemagne.</div><div>C\'est le tout premier avion de ce type. Il a effectué plus de 1 000 vols d\'essai à ce jour.<br><br></div><div>Le cockpit numérique est doté de systèmes de vol et d\'aide dernier cri, avec plus de 100 microprocesseurs qui permettent un pilotage intuitif de l\'avion.</div><div>Il peut accueillir deux passagers côte à côte et dispose d\'un compartiment sécurisé pour les bagages à main.</div><div>Ses 18 rotors permettent un décollage et atterrissage verticaux tout en douceur.<br><br></div><div>L\'avion peut voler jusqu\'à 2 000 m au-dessus du niveau de la mer et a une autonomie de 35 km, soit environ 35 minutes de vol avec une charge (avec la technologie de batterie actuelle).</div><div>Le voyage est exceptionnellement stable et silencieux.</div><div>La cellule est d\'ailleurs quatre fois plus silencieuse qu\'un petit hélicoptère, grâce aux rotors qui opèrent dans les limites d\'une bande de fréquence étroite.<br><br></div><div>Ces rotors sont alimentés par 9 batteries au lithium-ion échangeables, qui peuvent être remplacées rapidement et en toute sécurité dans un VoloPort après l\'atterrissage.</div><div>Le VoloCity peut atteindre une vitesse maximale de 110 km/h et vole à une vitesse écoénergétique et agréable pour les passagers.<br><br></div><div>Ce nouvel avion est conçu pour respecter les plus hauts standards de sécurité conformément à la certification EASA SC-VTOL (10-9).</div><div>Volocopter vise principalement un usage commercial de VoloCity dans de nombreuses régions du monde, et a l\'intention d\'offrir des vols d\'ici 3 ans.</div><div>Les taxis aériens Volocopter permettront aux clients de profiter de déplacements sécurisés et écologiques, tout en évitant le trafic des grandes villes.<br><br></div><div>En raison de sa basse altitude de vol et des manœuvres que nécessite son pilotage en ville, l\'entraînement des pilotes du VoloCity sera unique en son genre, et tous seront préparés pour l\'avenir de la mobilité aérienne en milieu urbain.</div>', 'fde931574bf6db94b0c1e37205c202daaec118db.webp', '2023-02-14 18:44:39', '2023-02-13 20:35:22', NULL, NULL, NULL, NULL, 700, 900, NULL, NULL, NULL, NULL, 'volocity'),
(5, 3, 'Zlin Aviation Shock Ultra', '<div>En 2016, Zlin Aviation basé en République Tchèque veut en mettre plein la vue au marché des avions sportifs légers avec son bien nommé Shock Cub, un avion de brousse tout en puissance salué pour son décollage remarquablement court et ses statistiques de performance. L\'entreprise a ensuite sorti le Shock Ultra, qui a monté la barre de l\'aviation d\'aventure d\'un cran.</div><div><br></div><div>Dévoilé au salon Aero Friedrichshafen de 2018, le Shock Ultra garde plusieurs fonctionnalités de son prédécesseur, notamment le profil d\'aile Hyper-STOL pour un décollage court et une montée plus rapide, des volets Fowler à double encoche pour le contrôle à basse vitesse, et des amortisseurs extérieurs robustes pour dompter les terrains les plus imprévisibles.</div><div><br></div><div>Mais l\'Ultra se distingue surtout par son poids. Les optimisations dans tout le fuselage font de cet avion à train classique en tubes et tissu l\'avion spécialisé pour la brousse le plus léger du marché. Cependant le cadre de son fuselage renforcé et raffiné assure la résistance de l\'Ultra.</div><div><br></div><div>Moins de poids pour plus d\'économies de carburant et des coûts d\'exploitation inférieurs. Sa conception innovante implique des performances sans compromis. Ces caractéristiques donnent un avion sportif ultraléger qui vous emmènera là où l\'aventure vous appelle.</div>', '6fa566a47bc98813a8afb0fe420a018357fdb15e.webp', '2023-02-14 17:13:39', '2023-02-13 20:39:11', NULL, 144, '1 piston', 4801, 295, 599, 599, 106, 6, 9, 'shock-ultra'),
(6, 3, 'Zlin Aviation Savage Cub', '<div>Avec un style rappelant celui de l\'avion de brousse Piper Super Cub, le Savage Cub de Zlin Aviation représente l\'évolution du traditionnel avion à ailes hautes haubanées, utilisant des techniques et technologies modernes.</div><div><br></div><div>Créé à l\'origine par une équipe italienne en 1997, la production du Savage Cub a été reprise par l\'entreprise tchèque Zlin en 1999 - mais la version moderne de l\'avion résulte des efforts de remaniement et de stylisation de la part de l\'équipe de R&amp;D de Zlin, répondant aux mises à niveau souhaitées des revendeurs, clients et pilotes de brousse professionnels.</div><div><br></div><div>Alimenté par un moteur Rotax 912 S de 100 ch, le Savage Cub vole plus vite et plus loin que la plupart des concurrents de sa catégorie, tout en demandant une distance de décollage et d\'atterrissage moins importante -- tout cela est imputable à son poids plus léger malgré l\'ajout de renforcements tubulaires en acier aéronautique dans le fuselage.</div><div><br></div><div>Mais quel avion de brousse serait complet sans un train d\'atterrissage robuste et des roues arrière pour s\'adapter au plus accidenté des terrains et aux opérations dans la cambrousse? Tout simplement.</div><div>cet avion est conçu pour vous emmener plus loin que les autres, fidèle à la philosophie de Zlin pour le Savage Cub :&nbsp; « Les pistes ne sont qu\'une option... »</div>', 'bc8382551a3ed7f34b4921736deba1e866158c41.webp', '2023-02-14 17:13:57', '2023-02-13 20:40:37', NULL, 169, '1 piston', 4390, 295, 560, 699, 68, 5, 9, 'savage-cub'),
(7, 3, 'Wright Flyer', '<div>Le Wright Flyer est un biplan canard monomoteur monoplace conçu, construit et piloté par les frères américains Orville et Wilbur Wright. Le Wright Flyer, également appelé Wright Flyer de 1903 et Kitty Hawk Flyer, est la première machine motorisée, contrôlée et plus lourde que l\'air à avoir décollé, maintenu son vol et atterri.<br><br>Un seul Wright Flyer a été construit. Il n\'a volé que quatre fois, le 17 décembre 1903. En raison de son statut de premier avion à voler, le Wright Flyer est l\'une des créations les plus célèbres de l\'histoire de l\'humanité. C\'est l\'étape fondamentale de l\'ère aérienne qui marque l\'entrée dans l\'ère pionnière de l\'aviation.<br><br>Le Wright Flyer est exposé en permanence dans sa propre exposition au National Air and Space Museum dans la Smithsonian Institution à Washington, DC. Le vol réussi du Wright Flyer le 17 décembre 1903 a marqué l\'aboutissement d\'années de recherche et de développement intensifs commencés dans les années 1890.<br><br>Les frères Wright étaient propriétaires d\'un magasin de vélos à Dayton, dans l\'Ohio, la Wright Cycle Company, et d\'anciens imprimeurs commerciaux. Passionné de vol depuis leur jeunesse, leur fascination pour l\'aviation avait été piquée par les exploits publiés d\'un certain nombre de pionniers dans ce domaine naissant, notamment l\'allemand Otto Lilienthal, la première personne à piloter à plusieurs reprises un planeur plus lourd que l\'air. Leur volonté de créer leurs propres machines volantes a été stimulée en 1896 par la nouvelle de la mort de Lilienthal lors d\'un essai de planeur. Ils ont contacté la Smithsonian Institution pour lui demander les informations dont elle disposait sur les machines volantes. Orville et Wilbur ont testé leur premier avion, un cerf-volant biplan d\'une envergure d\'1,5 mètres, au cours de l\'été 1899. Ils sont ensuite passés aux planeurs pilotés, en en créant et en pilotant deux. Ils se sont d\'abord concentrés sur la portance, puis sur le contrôle du vol, et ont ensuite mené des études approfondies, en utilisant une soufflerie, pour déterminer des conceptions spécifiques. Pendant cette période, ils ont identifié l\'endroit idéal pour tester leurs machines, un site sablonneux à quatre miles au sud de Kitty Hawk, en Caroline du Nord, qui fait aujourd\'hui partie de la ville de Kill Devil Hills.<br><br>En 1902, le duo a testé son troisième planeur, le « 1902 Glider ». Cet engin, le plus réussi de toutes leur machines volantes jusque-là, constituerait la base du Wright Flyer. Grâce au mécanicien de leur atelier de vélos, les frères ont fabriqué un moteur à piston à essence de 12 chevaux, un système de transmission inspiré des chaînes de transmission de vélo, ainsi que deux ailes rotatives, des hélices. Ils ont assemblé le Wright Flyer et l\'ont transporté en Caroline du Nord à l\'automne 1903. Après quelques retards d\'ordre mécaniques, ils étaient enfin prêts à tester leur machine. A 10 h 35 Le 17 décembre, le Wright Flyer, piloté par Orville Wright, s\'est élevé dans le ciel par ses propres moyens, parcourant 36 mètres en 12 secondes. L\'avion a volé trois autres fois ce jour-là, les frères alternant entre chaque vol.<br><br><br></div><div>Le dernier vol, piloté par Wilbur, a duré 59 secondes et a couvert 260 mètres, L\'ère aérienne avait commencé, et les frères avaient non seulement créé la première machine volante autopropulsée, mais ils avaient également développé la base de l\'ingénierie aéronautique en créant le Wright Flyer.<br><br>Le Wright Flyer mesure 6,4 mètres de long et 2,9 mètres de large, et possède une envergure de 12,3 mètres. II dispose de patins pour le train d\'atterrissage et d\'une queue composée d\'un seul empennage vertical.<br>Il est propulsé par un moteur Wright à pistons en ligne à essence 4 cylindres de 12 chevaux qui entraîne deux hélices poussoirs contrarotatives via un système de transmission à pignon et à chaîne.</div><div>Son cadre est fait de bois d\'épicéa et de frêne, et ses ailes sont recouvertes de mousseline. Le contrôle se fait par le gauchissement des ailes à distance via un berceau de hanche et des lignes.</div>', '2aa4e4e37171bdc5662330d690d616c7cd838dee.webp', '2023-02-14 17:14:15', '2023-02-13 20:43:37', NULL, 42, '1 piston', 7, 274, 338, 2, 2, 6, 12, 'wright-flyer'),
(8, 3, 'Viking Air Limited DHC-2 Beaver', '<div>Le DHC-2 Beaver est un avion à décollage et atterrissage courts (STOL) monomoteur à aile haute produit par de Havilland Canada. Après sa sortie, le Beaver a tout de suite acquis une réputation d\'avion utilitaire incroyablement polyvalent, puissant, efficace et robuste. Des décennies plus tard, le Beaver conserve son statut d\'icône, considéré comme une classe à part en raison de sa polyvalence, qu\'il soit sur terre, sur l\'eau ou sur la neige.</div><div><br></div><div>Les aviateurs spécialisés dans les opérations aériennes austères et le vol en arrière-pays considèrent le Beaver comme le « meilleur avion de brousse jamais construit ». Il a tellement marqué l\'histoire de l\'aviation qu\'il possède plusieurs timbres à son effigie, dont ceux du Canada (1982), des îles Malouines (2008), des Maldives (2013), du territoire antarctique britannique (1963), du territoire antarctique australien (2005) et de la Guinée (1998).</div><div><br></div><div>De Havilland a établi les plans du DHC-2 peu après la fin de la Seconde Guerre mondiale. Son design n\'est pas basé sur des études sur l\'aérodynamique, uniquement sur l\'apport des pilotes, en particulier des pilotes de brousse canadiens. Toutes les personnes interrogés par de Havilland ont déclaré qu\'ils privilégiaient trois critères avant tout : les performances STOL, afin de pouvoir opérer sur des pistes courtes et rudimentaires, sur des lacs ou sur la neige; la puissance, car les vols de brousse étaient comptaient souvent du fret et des passagers et la robustesse, pour pouvoir voler en toute saison, même pendant les hivers de l\'Extrême-Canada.</div><div><br></div><div>Cela&nbsp; a donné naissance au DHC-2 Mk.1, une machine robuste sous tous les angles, de son capotage solide abritant son puissant moteur en étoile, à son fuselage d\'apparence carrée qu\'il est possible de charger par la droite ou par la gauche, en passant par sa grande aile haubanée optimisée pour les performances STOL. Le premier DHC-2 Beaver à prendre son envol était le CF-FHB-X, le vol inaugural ayant eu lieu le 16 août 1947 dans les installations de production de Havilland à Downsview, en Ontario.</div><div><br></div><div>À partir de là, les test se sont poursuivis, la plupart avec des flotteurs afin d\'assurer les meilleures performances, même avec les trains d\'atterrissage les moins aérodynamiques. Depuis son introduction en 1948, plus de 1 600 Beavers ont été construits jusqu à l\'arrêt de la production en 1967. 970 exemplaires, soit plus de la moitié, ont été achetés par l\'armée des États-Unis afin d\'être exploités comme avions utilitaires généraux sous les noms de L-20 et U-6A.&nbsp;</div><div><br></div><div>Au fil du temps, le Beaver a été employé sur les sept continents et dans d\'innombrables pays pour des missions variées allant du transport médical à la cargaison, en passant par l\'arpentage et la lutte anti-incendie, pour n\'en nommer que quelques-uns. Le Beaver a non seulement été employé par l\'armée des Etats-Unis, mais également par les armées de plus de trente pays. Le DHC-2 n\'est piloté que par un seul membre déquipage, et il peut transporter de la marchandise ou jusqu\'à six passagers. Il mesure 9,2 mètres de long, 2,7 mètres de haut et possède une envergure de 14,6 mètres. Il dispose d\'un empennage standard ainsi que d\'un train d\'atterrissage traditionnel (dit «classique ») qui peut être équipé de skis, de flotteurs ou de flotteurs amphibies. Le Beaver est propulsé par un moteur à piston radial Pratt &amp; Whitney R-985</div><div>Wasp Junior à 9 cylindres qui délivre jusqu\'à 450 chevaux. Il dispose d\'une autonomie de 732 km, peut grimper à une vitesse de 300 m/min et affiche un plafond pratique de 5490 mètres au-dessus du niveau de la mer. Il affiche une vitesse de croisière de 230 km/h et une vitesse maximale de 254 km/h.</div><div>Les aviateurs chérissent leur temps à bord du de Havilland DHC-2 Beaver. Cet avion de légende rend tout à fait réalisables les opérations impossibles de prime abord dans les endroits les plus inhospitaliers du globe.</div>', '4083086512d0fcc0c7df717c4aa29f25075b8e7d.webp', '2023-02-14 19:03:14', '2023-02-13 20:45:13', NULL, 202, '1 piston', 4801, 1510, 2313, 732, 360, 9, 15, 'dhc2-beaver'),
(9, 3, 'Cessna 152 Skyhawk (G1000)', '<div>Pilotés pour la première fois en 1955, les premiers Cessna 172 étaient une variante à train d\'atterrissage tricycle de l\'avion à train classique Cessna 170. Depuis, le modèle est devenu l\'avion le plus produit de l\'histoire, comptabilisant environ 44 000 unités produites à date.</div><div><br></div><div>Hormis une pause entre les années 1980 et 90, le 172 est produit depuis 1956, et sa conception monomoteur, quatre places et à ailes fixes a connu 20 variantes au fil des ans - y compris le modèle deluxe « Skyhawk », sorti en 1960.</div><div><br></div><div>Tandis que le 172 Skyhawk moderne est équipé d\'un moteur Lycoming de 180 ch, ainsi qu\'un éclairage jour/nuit à LED, le modèle conserve la construction robuste, les commandes intuitives, la vitesse d\'atterrissage faible et la visibilité traditionnelles caractéristiques de la gamme, qualités faisant du 172 l\'un des avions les plus indulgents au monde, et l\'un des avions d\'entraînement les plus populaires.</div><div><br></div><div>Équipé de la suite avionique Garmin G1000 NXi, ce Skyhawk offre des écrans aux graphismes optimisés et une vitesse de traitement accrue, ainsi que des systèmes de conscience de la météo, du trafic et du relief pour une expérience cockpit en verre sophistiquée. Avec sa technologie de pointe et ses performances éprouvées, le Cessna 172 Skyhawk n\'est pas juste en haut des livres de records d\'aviation: il les survole.</div>', 'd060324c38f14e3b9e6d10ab759f4e622afb2bec.webp', '2023-02-14 19:29:53', '2023-02-14 19:23:38', 230, 230, '1 piston', 4268, 767, 1160, 1186, 212, 7, 11, 'cessna-152-skyhawk');

-- --------------------------------------------------------

--
-- Structure de la table `planes_category`
--

CREATE TABLE `planes_category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL,
  `updated_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)',
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `hero_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `planes_category`
--

INSERT INTO `planes_category` (`id`, `name`, `active`, `updated_at`, `created_at`, `image`, `description`, `hero_img`) VALUES
(1, 'Aérogires', 1, '2023-02-13 14:15:21', '2023-02-03 13:59:01', '706450640e64e20381d370eaafbffdd39e629996.webp', '<div>Un <strong>aérogire</strong> est un <a href=\"https://fr.wikipedia.org/wiki/A%C3%A9rodyne\">aérodyne</a> à voilure tournante, c\'est-à-dire un <a href=\"https://fr.wikipedia.org/wiki/A%C3%A9ronef\">aéronef</a> plus lourd que l\'air dont la sustentation (<a href=\"https://fr.wikipedia.org/wiki/Portance_(a%C3%A9rodynamique)\">portance</a>) est assurée par la rotation d\'un ou plusieurs rotors. L\'<a href=\"https://fr.wikipedia.org/wiki/H%C3%A9licopt%C3%A8re\">hélicoptère</a> équipé d\'un <a href=\"https://fr.wikipedia.org/wiki/Rotor_principal\">rotor principal</a> assurant également sa propulsion et d\'un <a href=\"https://fr.wikipedia.org/wiki/Rotor_anticouple\">rotor anticouple</a> en queue, est le représentant le plus courant de cette catégorie, mais il existe de nombreuses autres configurations, telles que l\'<a href=\"https://fr.wikipedia.org/wiki/Autogire\">autogire</a>.</div>', '64f63c9f2908a782e19e5018a32f4cad76d4302a.webp'),
(2, 'Autres appareils', 1, '2023-02-13 14:28:02', '2023-02-03 13:59:13', 'e53469559c22fc5854c4826b1299d4211428a47f.webp', '<div>Cette section regroupe tous les autres appareils ne pouvant être classés dans les autres catégories.<br><br>Nous y trouvons par exemple le Hercules H4 d\'Howard Hugues ou le Volocopter.</div>', '731e1adb6fc79e4a88b19974b8e7d43c5bef4a9a.webp'),
(3, 'Avions à hélices', 1, '2023-02-13 14:30:02', '2023-02-03 13:59:23', '78762dcb316132f0438bf91b44d2d32b2a8ec3fc.webp', '<div>Un avion à hélice est un avion qui utilise une hélice pour générer une poussée. Ils sont généralement plus petits et moins chers que les jets. Les avions à hélices sont une excellente option pour ceux qui veulent voyager avec un budget limité car ils sont nettement moins chers que les autres types d\'avions. Ils ont également une empreinte carbone plus faible et sont plus économes en carburant que les autres types d\'avions.<br><br>Il existe différents types d\'avions à hélices, le plus populaire étant le Cessna. Le Cessna est un avion très fiable. Un avion à hélice est un avion qui utilise une hélice pour générer une poussée. Les avions à hélices sont le type d\'avion le plus répandu dans le monde. Ils sont utilisés à diverses fins telles que le transport de marchandises, le transport de passagers et à des fins militaires.</div>', '995aad01397b09b940998d3cd20342990a6cd0ab.webp'),
(4, 'Avions de ligne', 1, '2023-02-13 14:31:54', '2023-02-03 13:59:33', '0763365e2f576b296bee19516c079d7819040df6.webp', '<div>Un <strong>avion de ligne</strong> désigne un appareil utilisé pour le transport de passagers sur des bases commerciales. Ils sont, le plus souvent, exploités par des <a href=\"https://fr.wikipedia.org/wiki/Compagnie_a%C3%A9rienne\">compagnies aériennes</a> qui en sont propriétaires ou locataires. Ils desservent des lignes régulières, ou sont <a href=\"https://fr.wikipedia.org/wiki/Vol_charter\">affrétés</a> pour le transport de groupes à partir et à destination d\'<a href=\"https://fr.wikipedia.org/wiki/A%C3%A9roport\">aéroports</a> commerciaux. En moyenne, il vole entre 810 et 920 km/h.<br><br></div><div>La grande majorité des avions de ligne en service sont conçus exclusivement pour ces types d\'utilisations mais dans la première moitié du <a href=\"https://fr.wikipedia.org/wiki/XXe_si%C3%A8cle\">xxe siècle</a> ils ont souvent été développés à partir d\'<a href=\"https://fr.wikipedia.org/wiki/Avion_militaire\">avions militaires</a> de type <a href=\"https://fr.wikipedia.org/wiki/Bombardier_(avion)\">bombardier</a> ou transport. Beaucoup existent aussi en version <a href=\"https://fr.wikipedia.org/wiki/Avion_de_transport\">cargo</a> pour le transport de fret ou en version combinée passagers-cargo. Les anciens appareils revendus sur le marché de l\'occasion sont souvent transformés pour le transport du fret. Quelques appareils ont été aménagés pour le transport de personnalités (chefs d\'État), sont utilisés comme avions d\'affaires ou connaissent des applications militaires (<a href=\"https://fr.wikipedia.org/wiki/Avion_de_transport_militaire\">transport de troupes</a>, <a href=\"https://fr.wikipedia.org/wiki/Avion_ravitailleur\">ravitaillement en vol</a>, etc.).<br><br></div>', 'a34e4d0e6b4296c9d7502ecc88e12bb0be45c2bd.webp'),
(5, 'Avions turbopropulseurs', 1, '2023-02-13 14:34:04', '2023-02-03 13:59:47', 'daa1e7a18110fa2c657afdf84e87d6b6fbb3e481.webp', '<div>Aux États-Unis, en 1939, plusieurs ingénieurs innovèrent. Ils utilisèrent un nouveau mécanisme enclenchant la rotation des hélices : une turbine à gaz. Le 1er moteur turbopropulseur fut le <a href=\"https://www.rolls-royce.com/\">Rolls-Royce</a> Trent construit en 1945.<br><br></div><div>Aujourd’hui, un avion turbopropulseur est facilement reconnaissable grâce à ses hélices. Qu’elles soient au niveau des ailes ou sur le bec, les pales sont l’élément déterminant permettant le décollage de l’avion.</div><div>En aéronautique, la différence fondamentale entre un jet privé et un turbopropulseur est le principe de fonctionnement du moteur.<br><br></div><div>Le passage de l’air dans le moteur est la clé de la mise en marche. L’air passe par le compresseur (compresseur haute pression) puis la chambre de combustion. Au niveau de la consommation de carburant, ce dernier est alors injecté et brûlé provoquant une augmentation de chaleur. Cela actionne la turbine ainsi que l’hélice. Plus l’air entre vite, plus la vitesse de rotation de la turbine augmente et propulse l’appareil. L’échappement et l’éjection des gaz ainsi que l’énergie résiduelle non récupérée par les ailettes des turbines apportent une poussée supplémentaire.</div>', '1c582c04816b0d5bff6a32a28fee5abfa7f0cef7.webp'),
(6, 'Planeurs', 1, '2023-02-13 14:35:23', '2023-02-03 13:59:56', 'd22fc47119bba92c675cebcbc25473a23da3cecd.webp', '<div>Un <strong>planeur</strong> est un <a href=\"https://fr.wikipedia.org/wiki/A%C3%A9rodyne\">aérodyne</a> dépourvu de <a href=\"https://fr.wikipedia.org/wiki/Moteur\">moteur</a>, généralement de fort <a href=\"https://fr.wikipedia.org/wiki/Allongement_(a%C3%A9ronautique)\">allongement</a>, optimisé pour le <a href=\"https://fr.wikipedia.org/wiki/Vol_plan%C3%A9\">vol plané</a> et le <a href=\"https://fr.wikipedia.org/wiki/Vol_%C3%A0_voile\">vol à voile</a> (utilisation des courants aériens ascendants en guise de propulsion). Les qualités principales d\'un planeur de performance sont son <a href=\"https://fr.wikipedia.org/wiki/Taux_de_chute\">taux de chute minimum</a>(moins de 0,5 m/s), sa <a href=\"https://fr.wikipedia.org/wiki/Finesse_(a%C3%A9rodynamique)\">finesse maximale</a> (rapport entre distance parcourue et altitude perdue, qui peut dépasser 60 km pour 1 000 m), sa <a href=\"https://fr.wikipedia.org/wiki/Charge_alaire\">charge alaire</a>, qui conditionne sa finesse à vitesse plus élevée, et sa <a href=\"https://fr.wikipedia.org/wiki/Vitesse_maximale_d%27un_a%C3%A9ronef\">vitesse à ne pas dépasser</a> (jusqu\'à près de 300 km/h).<br><br></div><div>Par conditions <a href=\"https://fr.wikipedia.org/wiki/A%C3%A9rologie\">aérologiques</a> favorables, un planeur peut rester plusieurs heures en l\'air (couramment 5 à 10 heures, le <a href=\"https://fr.wikipedia.org/wiki/Vol_%C3%A0_voile_(records)\">record</a> étant de 57 h 40 min depuis 1954), gagner de l\'altitude (1 000 à 2 000 m en plaine, 3 000 à 5 000 m en montagne, le record d\'altitude absolu est de 22 646 m), voler à une vitesse moyenne de 100 à près de 300 km/h) et parcourir de grandes distances sur la campagne (300 à 1 000 km, record de 3 009 km en 15 heures environ sous le vent de la <a href=\"https://fr.wikipedia.org/wiki/Cordill%C3%A8re_des_Andes\">cordillère des Andes</a>).<br><br></div><div>Un <a href=\"https://fr.wikipedia.org/wiki/Motoplaneur\">motoplaneur</a> est un planeur doté d\'un moteur d\'appoint, escamotable ou non, permettant le décollage autonome. Quand le moteur est de faible puissance et ne permet que la poursuite du vol en l\'absence d\'ascendances (pour rejoindre un aérodrome), on parle de moteur et de planeur « turbo ».<br><br></div>', 'b24a7e6c3c92bdb05bf819b1ff9bc80cd9be5d76.webp'),
(7, 'Avions à réaction', 1, '2023-02-13 14:36:58', '2023-02-03 14:00:08', '50928e19ef787ebea56a7be234bdce06449b43cb.webp', '<div>Un <strong>avion à réaction</strong> est un <a href=\"https://fr.wikipedia.org/wiki/Avion\">avion</a> propulsé par un <a href=\"https://fr.wikipedia.org/wiki/Moteur_%C3%A0_r%C3%A9action\">moteur à réaction</a>. Apparu peu avant la <a href=\"https://fr.wikipedia.org/wiki/Premi%C3%A8re_Guerre_mondiale\">Première Guerre mondiale</a>, expérimental dans les <a href=\"https://fr.wikipedia.org/wiki/Ann%C3%A9es_1930\">années 1930</a>, opérationnel à la fin de la <a href=\"https://fr.wikipedia.org/wiki/Seconde_Guerre_mondiale\">Seconde Guerre mondiale</a>, ce type d\'avion s\'est imposé dans le domaine militaire dans les années <a href=\"https://fr.wikipedia.org/wiki/1950\">1950</a> puis, par la suite, dans le domaine civil pour les vols long ou moyen-courrier.<br><br>Les avions à réaction civils, destinés au transport de passagers, apparaissent dans les années 1950. L\'adoption du moteur à réaction permet de doubler la vitesse de croisière par rapport à un avion classique, et devient un argument commercial pour les compagnies aériennes.</div>', 'dd6489888f13dc4ee88e145de34bd35200435574.webp');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json)',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '(DC2Type:datetime_immutable)',
  `is_verified` tinyint(1) NOT NULL,
  `reset_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `lastname`, `firstname`, `avatar`, `created_at`, `is_verified`, `reset_token`) VALUES
(1, 'jumeaucourtn@gmail.com', '[\"ROLE_ADMIN\"]', '$2y$13$j8IcCQJ5xXn//GNAJj/rQ.4j/0op7If15kgEyR03aMPe37pF2yw2W', 'Jumeaucourt', 'Nicolas', NULL, '2023-02-03 16:50:16', 1, NULL),
(20, 'jumeaucourtmx@gmail.com', '[]', '$2y$13$DzGQnE2JmNYtNmGdXbZ7uOE0n0YVHroVeX2BqZgZOtj4VPeVR/1Xy', 'Jumeaucourt', 'Maxime', NULL, '2023-02-16 15:18:59', 1, NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `airport`
--
ALTER TABLE `airport`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_4FBF094FB9286F68` (`first_letter_id`);

--
-- Index pour la table `company_first_letter`
--
ALTER TABLE `company_first_letter`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  ADD KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- Index pour la table `plane`
--
ALTER TABLE `plane`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_C1B32D8012469DE2` (`category_id`);

--
-- Index pour la table `planes_category`
--
ALTER TABLE `planes_category`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `airport`
--
ALTER TABLE `airport`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `company`
--
ALTER TABLE `company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT pour la table `company_first_letter`
--
ALTER TABLE `company_first_letter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `plane`
--
ALTER TABLE `plane`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `planes_category`
--
ALTER TABLE `planes_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `company`
--
ALTER TABLE `company`
  ADD CONSTRAINT `FK_4FBF094FB9286F68` FOREIGN KEY (`first_letter_id`) REFERENCES `company_first_letter` (`id`);

--
-- Contraintes pour la table `plane`
--
ALTER TABLE `plane`
  ADD CONSTRAINT `FK_C1B32D8012469DE2` FOREIGN KEY (`category_id`) REFERENCES `planes_category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
