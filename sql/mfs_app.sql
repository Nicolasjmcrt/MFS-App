-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le : lun. 13 fév. 2023 à 14:50
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
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `company`
--

INSERT INTO `company` (`id`, `name`, `description`, `image`, `created_at`, `updated_at`, `code`, `first_letter_id`, `logo`) VALUES
(3, 'American Airlines', '<div><strong>American Airlines</strong> (<a href=\"https://fr.wikipedia.org/wiki/Liste_des_codes_AITA_des_compagnies_a%C3%A9riennes\">Code AITA</a> : <strong>AA</strong> ; <a href=\"https://fr.wikipedia.org/wiki/Organisation_de_l%27aviation_civile_internationale\">code OACI</a> : <strong>AAL</strong>) est une <a href=\"https://fr.wikipedia.org/wiki/Compagnie_a%C3%A9rienne\">compagnie aérienne</a> continentale nord américaine. Elle exploite des vols intérieurs et internationaux depuis ses nombreux <a href=\"https://fr.wikipedia.org/wiki/Plate-forme_de_correspondance\"><em>hubs</em></a> (plates-formes) basés aux <a href=\"https://fr.wikipedia.org/wiki/%C3%89tats-Unis\">États-Unis</a>. En <a href=\"https://fr.wikipedia.org/wiki/2018\">2018</a>, c\'est la plus grande compagnie aérienne au monde. Elle dessert, avec sa filiale régionale <a href=\"https://fr.wikipedia.org/wiki/American_Eagle_(compagnie_a%C3%A9rienne)\">American Eagle</a> plus de 350 destinations dans plus de 50 pays et territoires avec plus de 6700 vols quotidiens. Elle est contrôlée par <a href=\"https://fr.wikipedia.org/wiki/AMR_(entreprise)\">AMR Corporation</a> dont le siège social se trouve à <a href=\"https://fr.wikipedia.org/wiki/Fort_Worth\">Fort Worth</a>, aux <a href=\"https://fr.wikipedia.org/wiki/%C3%89tats-Unis\">États-Unis</a> dans l\'état du <a href=\"https://fr.wikipedia.org/wiki/Texas\">Texas</a>. En <a href=\"https://fr.wikipedia.org/wiki/2019\">2019</a>, elle est au 68e rang du <a href=\"https://fr.wikipedia.org/wiki/Fortune_500\">Fortune 500</a><a href=\"https://fr.wikipedia.org/wiki/American_Airlines#cite_note-5\">5</a>. American Airlines est membre fondateur de l\'alliance <a href=\"https://fr.wikipedia.org/wiki/Oneworld\">Oneworld</a>. En 2013, celle-ci a fusionné avec la compagnie <a href=\"https://fr.wikipedia.org/wiki/US_Airways\">US Airways</a> afin de former la plus grande compagnie aérienne au monde.</div>', 'bdc826bbeb11525cdd88316ac1148588a69586ab.jpg', '2023-02-12 15:40:53', NULL, 'AA', 1, '26d0fe463a7e1bef4f3b26b4eba73287e3c52959.jpg'),
(4, 'Delta Air Lines', '<div><strong>Delta Air Lines</strong>, (<a href=\"https://fr.wikipedia.org/wiki/Liste_des_codes_AITA_des_compagnies_a%C3%A9riennes\">Code AITA</a> : <strong>DL</strong> ; <a href=\"https://fr.wikipedia.org/wiki/Organisation_de_l%27aviation_civile_internationale\">code OACI</a> : <strong>DAL</strong>) est une <a href=\"https://fr.wikipedia.org/wiki/Compagnie_a%C3%A9rienne\">compagnie aérienne</a> <a href=\"https://fr.wikipedia.org/wiki/%C3%89tats-Unis\">américaine</a> opérant sur des vols réguliers aux États-Unis et dans le monde. Delta, dont le siège est à <a href=\"https://fr.wikipedia.org/wiki/Atlanta\">Atlanta</a>, est régie par les lois du <a href=\"https://fr.wikipedia.org/wiki/Delaware\">Delaware</a>.</div><div><br></div><div>Ayant fusionné depuis le <a href=\"https://fr.wikipedia.org/wiki/29_octobre\">29</a> <a href=\"https://fr.wikipedia.org/wiki/Octobre_2008\">octobre</a> <a href=\"https://fr.wikipedia.org/wiki/2008\">2008</a> avec <a href=\"https://fr.wikipedia.org/wiki/Northwest_Airlines\">Northwest Airlines</a>, Delta est l\'une des principales compagnies au monde, avec 75 000 employés, desservant 375 destinations dans 66 pays. Son chiffre d\'affaires est de 41 milliards de dollars USD (2017).</div><div><br></div><div>Au <a href=\"https://fr.wikipedia.org/wiki/1er_novembre\">1er</a> <a href=\"https://fr.wikipedia.org/wiki/Novembre_2004\">novembre</a> <a href=\"https://fr.wikipedia.org/wiki/2004\">2004</a>, Delta (en incluant ses participations à 100 % comme <a href=\"https://fr.wikipedia.org/wiki/Atlantic_Southeast_Airlines\">Atlantic Southeast Airlines</a>, Inc. et <a href=\"https://fr.wikipedia.org/wiki/Comair_(entreprise)\">Comair Inc.</a>) dessert 211 villes américaines dans 46 États, le <a href=\"https://fr.wikipedia.org/wiki/Washington_(district_de_Columbia)\">District de Columbia</a>, <a href=\"https://fr.wikipedia.org/wiki/Porto_Rico\">Porto Rico</a> et les <a href=\"https://fr.wikipedia.org/wiki/%C3%8Eles_Vierges_am%C3%A9ricaines\">îles Vierges américaines</a> ainsi que 51 villes à l\'étranger dans 33 pays. Delta en service intérieur et international, <a href=\"https://fr.wikipedia.org/w/index.php?title=(compagnie_a%C3%A9rienne)&amp;action=edit&amp;redlink=1\">(compagnie aérienne)</a>, <a href=\"https://fr.wikipedia.org/w/index.php?title=Delta_Shuttle&amp;action=edit&amp;redlink=1\">Delta Shuttle</a> <a href=\"https://en.wikipedia.org/wiki/Delta_Shuttle\"><strong>(en)</strong></a>, <a href=\"https://fr.wikipedia.org/wiki/Delta_Connection\">Delta Connection</a>, <a href=\"https://fr.wikipedia.org/w/index.php?title=Delta_SkyTeam&amp;action=edit&amp;redlink=1\">Delta SkyTeam</a> ainsi que ses partenaires à travers le monde effectuent chaque jour 7 615 vols vers 496 aéroports dans 88 pays. Ses principaux <a href=\"https://fr.wikipedia.org/wiki/Plate-forme_de_correspondance_a%C3%A9roportuaire\">hubs</a> sont <a href=\"https://fr.wikipedia.org/wiki/Atlanta\">Atlanta</a>, <a href=\"https://fr.wikipedia.org/wiki/Cincinnati\">Cincinnati</a>, <a href=\"https://fr.wikipedia.org/wiki/Salt_Lake_City\">Salt Lake City</a>, <a href=\"https://fr.wikipedia.org/wiki/New_York\">New York</a>, <a href=\"https://fr.wikipedia.org/wiki/Memphis_(Tennessee)\">Memphis</a>, <a href=\"https://fr.wikipedia.org/wiki/D%C3%A9troit_(Michigan)\">Détroit</a> et <a href=\"https://fr.wikipedia.org/wiki/Minneapolis\">Minneapolis</a>. En 2021, Delta Air Lines était la compagnie aérienne qui a accueilli le plus de passagers au monde. En effet, environ 260 millions de passagers ont voyagé à bord des agents de la compagnie.</div>', '3943042a638c42403ba53d81725e9fba6579b7c9.jpg', '2023-02-12 15:42:04', NULL, 'DL', 2, '0850b0fcdf1353b36e4c57ce8f2303ff8eb87a07.jpg'),
(5, 'United Airlines', '<div>United Airlines, qui a sa base à Chicago, a été fondée en 1926 par Walter Varney. Il l\'appela Varney Air Lines (le nom changea en 1934). En 2010, United a fusionné avec Continental, une autre compagnie aérienne créée à l\'origine par Walter Varney.</div>', 'de367709820ec03ec3682d3f2cbd99cb540aae71.jpg', '2023-02-12 15:53:34', NULL, 'UA', 3, 'b1835f15fb7aa72703ea0c29fa419f5cf2b97083.jpg'),
(6, 'Lufthansa', '<div>Lufthansa, le porte-drapeau de l\'Allemagne, a commencé à voler en 1953. L\'une des compagnies aériennes les plus importantes et les plus prestigieuses au monde, largement connue pour ses services haut de gamme.</div>', 'f4876e8b9a37a3da519df15420e6ca76581cd698.jpg', '2023-02-12 15:59:50', NULL, 'LH', 4, '37a39d9bfded7be6bd87ce0a52104cc451f7ca6f.jpg'),
(7, 'Air France', '<div>Air France a vu le jour en 1933 lorsque cinq petites compagnies aériennes ont fusionné. En 1976, elle a commencé à opérer des vols supersoniques Concorde à travers l\'Atlantique. En 2003, la compagnie aérienne a fusionné avec KLM, après quoi elle a opéré en tant que filiale du groupe Air France KLM.</div>', 'b4601a63117ea5d859a151c3bfa59dedb20ac19a.jpg', '2023-02-12 16:02:10', NULL, 'AF', 1, '23797ebe66dfa71c2b1bb87472e882138c938c6f.jpg'),
(8, 'British Airways', '<div>British Airways a été créée en 1973 lorsque la BOAC et la BEA ont fusionné pour former une seule compagnie aérienne. En 1987, elle est devenue une société privée. En 2011, British Airways a fusionné avec Iberia pour faire partie du groupe International Airlines.</div>', 'f8247d8f5bb68a638b2d7322a9b5572dce85c3fd.jpg', '2023-02-12 16:04:05', NULL, 'BA', 5, 'a355801a3c09214109ddd7cbf83df524eb3ba739.jpg'),
(9, 'Emirates', '<div>Emirates a commencé à voler en 1985 avec seulement deux avions. La compagnie aérienne a grandi rapidement. Au salon aéronautique de Dubaï en 2007, il a passé des commandes pour 143 avions. Quatre ans plus tard, Boeing a passé sa plus grosse commande en termes de valeur.</div>', '4ef9fcfbae23d367a82faa87acac82abcc935cc3.jpg', '2023-02-12 16:06:09', NULL, 'EK', 6, 'e63677736fdf524e7961692a2c60f294c673cd24.jpg'),
(10, 'Etihad Airways', '<div>Etihad Airways est la compagnie aérienne nationale des Emirats Arabes Unis. Elle a été créée par arrêté royal en 2003 et a depuis pris des participations dans plusieurs autres compagnies aériennes mondiales. \'Etihad\' est le mot arabe pour \'union\'.</div>', '6d6ee6ac56697db9ac00037e727abab9ee8a3fc4.jpg', '2023-02-12 16:08:24', NULL, 'EY', 6, 'd4e4dd45f8f5c8dec54d55044169837a7e07a84d.jpg'),
(11, 'Eurowings', '<div>Eurowings a été créée en février 1993 et ​​dessert un réseau de liaisons nationales et européennes, ainsi que certaines destinations long-courriers. C\'est une filiale du groupe Lufthansa et exploite un certain nombre de routes autrefois desservies par Germanwings.</div>', 'd8d7dae2ee1c80ee0ba6edf5aa2c2dea99720780.jpg', '2023-02-12 16:10:17', NULL, 'EW', 6, '71dc58ae276ac11195961cd2c6a42f5f437256e3.jpg'),
(12, 'Aeromexico', '<div>Bien qu\'Aeromexico remonte à 1934, la compagnie aérienne moderne a vu le jour en 1988 après sa privatisation. Le symbole d\'Aeromexico est le chevalier de l\'aigle, membre d\'une ancienne classe de guerriers aztèques qui s\'habillait de manteaux de plumes.</div>', '29ca7c0ed925b3e4c0a470477daf3aca011fa892.jpg', '2023-02-12 16:16:25', NULL, 'AM', 1, 'fe5e36fcc4f97f847989aea56a074b0c6d3dbbb2.jpg'),
(13, 'Air Canada', '<div>Lorsqu\'Air Canada a commencé à voler en 1937, elle disposait d\'une flotte de trois appareils, dont l\'un avait déjà été utilisé pour la pulvérisation des cultures. La compagnie aérienne a changé son nom de Trans-Canada Airlines à Air Canada en 1954.</div>', '69950e32d1e8ddce3420862d47262d9795029c87.jpg', '2023-02-12 16:18:46', NULL, 'AC', 1, 'fcbd6bb64e80bee02c91a2cdeb4e0ca538b5c7d6.jpg'),
(14, 'Air China', '<div>Air China était l\'une des six compagnies aériennes créées par le gouvernement chinois en 1988. Depuis lors, elle est devenue le porte-drapeau exclusif de l\'aviation civile. Le rouge chinois traditionnel du logo symbolise le bon augure, l\'achèvement, la paix et le bonheur.</div>', 'b1b6640359433601471e183ff96aa46d5314d7e0.jpg', '2023-02-12 16:22:16', NULL, 'CA', 1, 'f539e9cd2592e6b9d63613fa81908fb7591e32cc.jpg'),
(15, 'ANA', '<div>All Nippon Airways a débuté en 1952 sous le nom de Japan Helicopter &amp; Airplane Transports Co. Cinq ans plus tard, elle est devenue All Nippon Airways. La compagnie aérienne a commencé des vols internationaux réguliers en exploitant un service entre Tokyo et Guam.</div>', '184649c31f07054fa1f4cecb74d2afa9131aab28.jpg', '2023-02-12 16:23:54', NULL, 'NH', 1, '51afda4c551fec2045ded5b59a7587fd427b1230.jpg'),
(16, 'Avianca', '<div>Avianca, la compagnie nationale colombienne, a été fondée en 1919. Elle est devenue membre de la Star Alliance en 2012 et a lancé des vols directs entre Heathrow et Bogotá en 2014. Elle dispose d\'un hub à l\'aéroport international El Dorado de Bogotá.</div>', '8a00a1a7363301148e9c7d65277a0c87f3b79b94.jpg', '2023-02-12 16:25:46', NULL, 'AV', 1, '17ef66468cc5a2046b8da5fe90e5b56e81b213d3.jpg'),
(17, 'Beijing Capital Airlines', '<div>Beijing Capital Airlines a été créée en 2010 à partir de la division de Deer Jet Airlines. Elle est membre du groupe HNA et est basée à Pékin. Les vols entre Heathrow et Qingdao, dans la province du Shandong, ont commencé en 2017.</div>', 'a4b1551d7a287ad1ca032acd31bd7c19e765c400.jpg', '2023-02-12 16:27:22', NULL, 'JD', 5, '1fba5f5069420f5bea2e49d2dc94fe6728521b52.jpg'),
(18, 'China Airlines', '<div>China Airlines a été créée en 1959 et est le transporteur national de Taïwan. China Airlines démarre ses opérations à Heathrow dans les mois à venir avec des liaisons directes vers Taipei.</div>', 'dafaa1bd78581be7e06f5d6745006a0e88618a64.jpg', '2023-02-12 16:39:44', NULL, 'CI', 7, '3763420db780075178c9adacac7604ca3b3b5269.jpg'),
(19, 'China Southern', '<div>L\'emblème de la fleur de kapok rouge brillant de China Southern Airlines montre son affiliation avec sa ville natale de Guangzhou. La compagnie aérienne, qui a été créée en 1988, a remporté de nombreux prix, notamment en étant nommée meilleure compagnie aérienne en Chine.</div>', 'bc8f36c0ad89b9282440aa8caca42a7de56e9d68.jpg', '2023-02-12 16:43:53', NULL, 'CZ', 7, '566523ba324fde6aad6ac5b29c0b80b20f893de3.jpg'),
(20, 'Egyptair', '<div>Egyptair a débuté en 1932. Pendant 11 ans, lors d\'une fusion avec Syrian Airlines, elle était connue sous le nom de United Arab Airlines. Lorsque les deux se sont séparés en 1971, il est revenu à son nom d\'origine.</div>', '4c6bd6e9702095dc9d528d321644b11842af2013.jpg', '2023-02-12 16:55:29', NULL, 'MS', 6, 'e115b349f1b70a60a62013d7648c923611031654.jpg'),
(21, 'El Al', '<div>Avec son vol inaugural en 1948, El Al a ramené le premier président d\'Israël de Genève. En moins de deux ans, il assurait un service régulier vers Londres. En 2005, le gouvernement a renoncé à sa participation majoritaire dans la compagnie aérienne.</div>', 'bcb74d25289274174235849e56aa15ca9a5f8e30.jpg', '2023-02-12 16:56:40', NULL, 'LY', 6, 'b329c67bfc2d9a759ae42b6619f6b4ba1936fe40.jpg'),
(22, 'Flybe', '<div>Flybe operates to Belfast City, Leeds/Bradford and Amsterdam</div>', '9f21e2f332d2905f2d3f0b9d06d3f3e9fa5f540c.jpg', '2023-02-12 17:32:15', NULL, 'BE', 8, '70829b31ae456a4e2dd98e50eb63fe2cd0dcb602.jpg'),
(23, 'Garuda Indonesia', '<div>Garuda Indonesia est la compagnie aérienne porte-drapeau de l\'Indonésie, du nom de l\'oiseau sacré de l\'hindouisme - l\'emblème national indonésien. La compagnie aérienne a commencé à voler en 1949 sous le nom de KLM Interinsulair Bedrijf. En 2014, il est devenu le 20e membre de l\'alliance mondiale des compagnies aériennes SkyTeam.</div>', '3f710053832362c2da10152daf16a3c8e0fb2fec.jpg', '2023-02-12 17:33:55', NULL, 'GA', 9, '992115108d9dd3405b40598c76e1454f50d07385.jpg'),
(24, 'Gulf Air', '<div>A British pilot set up Gulf Air in 1950 as the Gulf Aviation Company. In 1974 the airline became the flag carrier for a group of four Gulf states. In 2007 it became wholly owned by the Kingdom of Bahrain.</div>', '27eccdb2b221067df24356fcb68ad531d9cdb58d.jpg', '2023-02-12 17:35:54', NULL, 'GF', 9, '78f51abed2a0066b76637fbfe829be43d463527c.jpg'),
(25, 'Hainan Airlines', '<div>Hainan Airlines a été fondée en janvier 1993 dans la province de Hainan, la plus grande zone économique spéciale de Chine. En tant que l\'une des compagnies aériennes qui se développe le plus rapidement en Chine, Hainan Airlines s\'engage à fournir aux passagers un service holistique, transparent et de haute qualité.</div>', '8317104efff1158e720f4767072d61f6f727360d.jpg', '2023-02-12 17:37:23', NULL, 'HU', 10, '4a35b54d461129767ee856e406eabf1b9352b617.jpg'),
(26, 'Iberia', '<div>Iberia, fondée en 1927, a été la première compagnie aérienne espagnole et la première à voler entre l\'Europe et l\'Amérique du Sud. La compagnie aérienne a été privatisée en 2001. En 2011, Iberia a fusionné avec British Airways pour former le groupe International Airlines.</div>', 'ce5921829c0e4b2a36c201f4f0bbd8308b81d007.jpg', '2023-02-12 17:40:18', NULL, 'IB', 11, '1739582a817a57f42071c38d23bcd641e55b7953.jpg'),
(27, 'ITA Airways', '<div>ITA Airways est la compagnie aérienne nationale italienne. La compagnie aérienne appartient entièrement au gouvernement italien via son ministère de l\'Économie et des Finances. En tant que successeur du défunt porte-drapeau de l\'Italie.</div>', '432b86753b711b356b8133cfbca5164dc92b4d6b.jpg', '2023-02-12 17:44:05', NULL, 'AZ', 11, 'b6c79a1c25e39671fa86d8680d92fc8c1c4ccb36.jpg'),
(28, 'Japan Airlines', '<div>Japan Airlines was set up in 1951. In 1954 it began its first international service to San Francisco. The airline was privatised in 1987. Its emblem is a crane with its wings raised in a circle over its head.</div>', 'd8c4e4a5aa94be5b11857aa7491763f8f38b2a18.jpg', '2023-02-12 17:45:38', NULL, 'JL', 12, 'b208e04f8d67171d1d5d6e45cd6da8215dcabe6e.jpg'),
(29, 'Jazeera', '<div>Jazeera Airways est la première compagnie aérienne privée du Moyen-Orient. Notre compagnie aérienne basée au Koweït exploite son propre terminal à l\'aéroport international de Koweït, garantissant une expérience passager améliorée. Commençant nos opérations de vol en 2005, nous avons étendu notre portée à plus de 44 destinations passionnantes.</div>', 'a2310cec13d61bd5da86e17835bb97763638e374.jpg', '2023-02-12 17:47:14', NULL, 'J9', 12, 'e5ba072df857d09a25bde0968f0b04ae5b563a68.jpg'),
(30, 'JetBlue', '<div>Née à New York JFK en 1999, JetBlue est la compagnie aérienne de New York et est aujourd\'hui l\'un des principaux transporteurs à Boston, Fort Lauderdale et dans le sud de la Floride, Orlando, Los Angeles et San Juan, desservant plus de 100 destinations aux États-Unis, en Amérique latine, dans les Caraïbes et Londres avec des tarifs bas et un service primé. L\'expérience JetBlue comprend le plus d\'espace pour les jambes dans l\'autocar, une connexion Wi-Fi haut débit gratuite, la télévision et des films en direct gratuits à chaque siège, ainsi que des collations et des boissons de marque gratuites. Mint - la version rafraîchissante de JetBlue pour une expérience de voyage haut de gamme - est disponible sur certains itinéraires d\'un océan à l\'autre et internationaux, et propose des sièges et des suites entièrement inclinables, un menu de petites assiettes et un service de boissons organisé par nos restaurants partenaires de New York, des tonnes de des divertissements en vol gratuits, des kits de bien-être uniques et bien plus encore.</div>', 'c33f79560d5f5bafffe76bab7a8f691ac70afa8a.jpg', '2023-02-12 17:49:03', NULL, 'B6', 12, 'bf06e083f1c0098698a47197316c235c6d73ae01.jpg'),
(31, 'Kenya Airways', '<div>Kenya Airways, Kenya\'s flag carrier, was founded in 1977. Until 1995 and privatisation, it was fully owned by the Kenyan government. Afterwards the government had a minority stake; the other large shareholder was KLM.</div>', '542ad40fdc60024ccc92bd515914291df37173d2.jpg', '2023-02-12 17:50:24', NULL, 'KQ', 13, '22a269f6450d3a9fa2bcbd4bfc1ab42241ba3561.jpg'),
(32, 'KLM - Royal Dutch Airlines', '<div>KLM a acquis sa désignation royale en 1919. Plus de 90 ans plus tard, elle conserve son nom d\'origine. En 2004, KLM fusionne avec Air France. KLM est l\'abréviation de Koninklijke Luchtvaart Maatschappij, le nom néerlandais de la compagnie aérienne.</div>', 'c4b7dc1464976c9f8c2062d23c95ffce0f0428cb.jpg', '2023-02-12 17:52:04', NULL, 'KL', 13, '5acf3bda40d457f41636b6b734a731479d9d066a.jpg'),
(33, 'Korean Air', '<div>Korean Air, la compagnie aérienne nationale sud-coréenne, a été créée en 1969. À l\'époque, elle s\'appelait Korean Air Lines. Le changement de nom et une nouvelle livrée ont eu lieu en 1984. En 2013, Korean Air a acquis une participation substantielle dans Czech Airlines.</div>', '4dc12dde8d07b611ad24c8ed987e8ae400bf768a.jpg', '2023-02-12 17:53:24', NULL, 'KE', 13, 'a7e8cb2ec4216b4c92fb2a55e9e7c16ac7cfd2d6.jpg'),
(34, 'Kuwait Airways', '<div>Kuwait Airways a débuté en 1954 en tant que compagnie aérienne privée. Après des difficultés financières au début, le gouvernement koweïtien a pris une participation de 50%, puis le contrôle total en 1963. Au lendemain de l\'invasion irakienne, la compagnie aérienne a été relancée avec de nouveaux locaux et avions.</div>', 'ddad7ef174ecb2920542a4fbf261c023406fce3b.jpg', '2023-02-12 17:54:35', NULL, 'KU', 13, '3529f83a0230e7310c4cb7f28024fded3617b0df.jpg');

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

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20230213141104', '2023-02-13 14:11:09', 105);

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
  `wingspan` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `plane`
--

INSERT INTO `plane` (`id`, `category_id`, `name`, `description`, `image`, `updated_at`, `created_at`, `max_speed`, `cruising_speed`, `engine`, `max_elevation`, `empty_weight`, `max_weight`, `range_of_action`, `fuel_capacity`, `length`, `wingspan`) VALUES
(1, 1, 'Bell Model 407', '<div>Le 407 est un hélicoptère utilitaire monomoteur polyvalent produit par Bell Helicopter aux États-Unis.</div><div>Il est dérivé du 206L-3 LongRanger III de Bell, un appareil ayant connu un grand succès. Comme son prédécesseur, le 407 n\'est piloté que par un seul membre d\'équipage et peut accueillir jusqu\'à six passagers. Aujourd\'hui, l\'hélicoptère est l\'un des giravions les plus polyvalents et les plus avancés. Il utilise un système de rotor principal composite à quatre pales et une variante « soft-in-plane » avec un moyeu entièrement articulé et des roulements en élastomère. Le rotor de queue anticouple possède deux pales. L\'appareil a effectué son vol inaugural le 29 juin 1995 et a été mis en service en 1996. Plus de 1 500 appareils ont été produits à ce jour, et la cellule répond à un large éventail de besoins, notamment dans les domaines suivants : affaires, application de la loi, ambulance aérienne, recherche, médias, commerce, opérations spéciales, foresterie et armée. Le 407 mesure 12,7 mètres de long et 3,6 mètres de hauteur. Son système de rotor principal possède un diamètre de 10,7 mètres. L\'hélicoptère est équipé d\'un seul turbomoteur Rolls-Royce/Allison modèle 250-C47B qui fournit 650 chevaux pour le décollage et 600 chevaux en régime continu pour des opérations.</div><div><br></div><div>Le 407 a une autonomie de quatre heures, un plafond de vol stationnaire de 4 130 mètres au-dessus du niveau de la mer hors effet de sol, un plafond de vol stationnaire de 3 639 mètres au-dessus du niveau de la mer avec effet de sol et une vitesse de croisière maximale de 246 km/h.</div><div>Dans l\'univers des giravions, le Bell 407 est réputé pour sa maniabilité, sa fiabilité et ses hautes performances. Après des décennies de recherche, d\'améliorations et de perfectionnements, cet hélicoptère est l\'un des favoris des aviateurs, et répond à toute une gamme de besoins généraux et spécialisés.&nbsp;</div>', '61a2f3f9d4c98bc96dd5ba6dfe50b054b8a926dc.webp', NULL, '2023-02-03 14:07:57', 259, 185, '1 Moteur à réaction', 6096, 1202, 2268, 556, 492, NULL, NULL),
(2, 1, 'Guimbal G-2 Cabri', '<div>Le <strong>Guimbal Cabri G2</strong> est un hélicoptère léger biplace et monomoteur conçu et produit par la société française Hélicoptères Guimbal. Relativement nouveau dans le monde des giravions, le G2 a effectué son premier vol le 31 mars 2005 et est entré en service en 2008.&nbsp;</div><div>L\'hélicoptère est une vitrine de la technologie aérospatiale moderne, notamment son corps tout en composite, son ensemble de trains d\'atterrissage à patins, son avionique et ses commandes de vol, ainsi que ses systèmes de rotor.</div><div>Plus de 220 ont été livrés, la plupart étant utilisés à des fins de formation. Sa conception lui permet également d\'être facilement adapté à un véhicule aérien sans pilote, avec un large éventail d\'utilisations possibles.</div><div>Le Guimbal Cabri G2 est équipé d\'un système de rotor principal à 3 pales, entièrement articulé, de construction composite, d\'un diamètre de 7,1 mètres et d\'un Fenestron à 7 pales pour un rotor de queue anti-couple.</div><div>Ses patins d\'atterrissage sont fixés au corps par des polymères absorbant les vibrations et amortissant les chocs.</div><div>Le cockpit dispose de sièges côte à côte et d\'un poste de pilotage en verre avec une avionique, des commandes et un système de gestion de vol avancés.</div><div><br></div><div>L\'hélicoptère est propulsé par un seul moteur à piston Textron Lycoming 0360-J2A à 4 cylindres qui développe jusqu\'à 160 chevaux.</div><div>Le G2 peut voler en stationnaire hors de l\'effet de sol jusqu\'à 2286 mètres au-dessus du niveau de la mer, a une autonomie de 703 kilomètres et une endurance maximale de 5 heures et 40 minutes.</div><div>Il a une vitesse de croisière de 167 km/h et une vitesse maximale de vol en palier de 185 km/h.</div><div>La haute fiabilité et la haute performance définissent le Guimbal Cabri G2.</div><div>Développé sur plus d\'une décennie, cet hélicoptère élégant est une plateforme idéale pour l\'introduction au vol à voilure tournante, et c\'est aussi un engin exceptionnel pour faire passer les compétences de base à un niveau supérieur.</div>', 'b3df7bf73b4be619574ca20c9ceab38620c14417.webp', NULL, '2023-02-13 13:44:18', 556, 185, '1 piston', 3963, 420, 700, 741, 712, NULL, NULL);

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
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `lastname`, `firstname`, `avatar`, `created_at`) VALUES
(1, 'jumeaucourtn@gmail.com', '[]', '$2y$13$Xzw3IE4.GAR2W.4QbN9M9O4WqpLfCLvu7.JS/8.hcnPiq0joctDCq', 'Jumeaucourt', 'Nicolas', NULL, '2023-02-03 16:50:16');

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `plane`
--
ALTER TABLE `plane`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `planes_category`
--
ALTER TABLE `planes_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
