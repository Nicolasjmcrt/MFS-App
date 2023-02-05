-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le : dim. 05 fév. 2023 à 19:38
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
-- Structure de la table `company`
--

CREATE TABLE `company` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `updated_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)',
  `code` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `company`
--

INSERT INTO `company` (`id`, `name`, `description`, `image`, `created_at`, `updated_at`, `code`) VALUES
(1, 'American Airlines', '<div><strong>American Airlines</strong> (<a href=\"https://fr.wikipedia.org/wiki/Liste_des_codes_AITA_des_compagnies_a%C3%A9riennes\">Code AITA</a> : <strong>AA</strong> ; <a href=\"https://fr.wikipedia.org/wiki/Organisation_de_l%27aviation_civile_internationale\">code OACI</a> : <strong>AAL</strong>) est une <a href=\"https://fr.wikipedia.org/wiki/Compagnie_a%C3%A9rienne\">compagnie aérienne</a> continentale nord américaine. Elle exploite des vols intérieurs et internationaux depuis ses nombreux <a href=\"https://fr.wikipedia.org/wiki/Plate-forme_de_correspondance\"><em>hubs</em></a> (plates-formes) basés aux <a href=\"https://fr.wikipedia.org/wiki/%C3%89tats-Unis\">États-Unis</a>. En <a href=\"https://fr.wikipedia.org/wiki/2018\">2018</a>, c\'est la plus grande compagnie aérienne au monde. Elle dessert, avec sa filiale régionale <a href=\"https://fr.wikipedia.org/wiki/American_Eagle_(compagnie_a%C3%A9rienne)\">American Eagle</a> plus de 350 destinations dans plus de 50 pays et territoires avec plus de 6700 vols quotidiens. Elle est contrôlée par <a href=\"https://fr.wikipedia.org/wiki/AMR_(entreprise)\">AMR Corporation</a> dont le siège social se trouve à <a href=\"https://fr.wikipedia.org/wiki/Fort_Worth\">Fort Worth</a>, aux <a href=\"https://fr.wikipedia.org/wiki/%C3%89tats-Unis\">États-Unis</a> dans l\'état du <a href=\"https://fr.wikipedia.org/wiki/Texas\">Texas</a>. En <a href=\"https://fr.wikipedia.org/wiki/2019\">2019</a>, elle est au 68e rang du <a href=\"https://fr.wikipedia.org/wiki/Fortune_500\">Fortune 500</a><a href=\"https://fr.wikipedia.org/wiki/American_Airlines#cite_note-5\">5</a>. American Airlines est membre fondateur de l\'alliance <a href=\"https://fr.wikipedia.org/wiki/Oneworld\">Oneworld</a>. En 2013, celle-ci a fusionné avec la compagnie <a href=\"https://fr.wikipedia.org/wiki/US_Airways\">US Airways</a> afin de former la plus grande compagnie aérienne au monde.</div>', 'd6b57923eed93727979d8fab942eaca4d69f3128.png', '2023-02-03 14:11:27', NULL, 'AA');

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
('DoctrineMigrations\\Version20230113184608', '2023-02-03 13:39:46', 68),
('DoctrineMigrations\\Version20230114171302', '2023-02-03 13:39:46', 14),
('DoctrineMigrations\\Version20230128101920', '2023-02-03 13:39:46', 6),
('DoctrineMigrations\\Version20230203142419', '2023-02-03 14:24:27', 44),
('DoctrineMigrations\\Version20230204110240', '2023-02-04 11:02:48', 95);

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
(1, 1, 'Bell Model 407', '<div>Le 407 est un hélicoptère utilitaire monomoteur polyvalent produit par Bell Helicopter aux États-Unis.</div><div>Il est dérivé du 206L-3 LongRanger III de Bell, un appareil ayant connu un grand succès. Comme son prédécesseur, le 407 n\'est piloté que par un seul membre d\'équipage et peut accueillir jusqu\'à six passagers. Aujourd\'hui, l\'hélicoptère est l\'un des giravions les plus polyvalents et les plus avancés. Il utilise un système de rotor principal composite à quatre pales et une variante « soft-in-plane » avec un moyeu entièrement articulé et des roulements en élastomère. Le rotor de queue anticouple possède deux pales. L\'appareil a effectué son vol inaugural le 29 juin 1995 et a été mis en service en 1996. Plus de 1 500 appareils ont été produits à ce jour, et la cellule répond à un large éventail de besoins, notamment dans les domaines suivants : affaires, application de la loi, ambulance aérienne, recherche, médias, commerce, opérations spéciales, foresterie et armée. Le 407 mesure 12,7 mètres de long et 3,6 mètres de hauteur. Son système de rotor principal possède un diamètre de 10,7 mètres. L\'hélicoptère est équipé d\'un seul turbomoteur Rolls-Royce/Allison modèle 250-C47B qui fournit 650 chevaux pour le décollage et 600 chevaux en régime continu pour des opérations.</div><div><br></div><div>Le 407 a une autonomie de quatre heures, un plafond de vol stationnaire de 4 130 mètres au-dessus du niveau de la mer hors effet de sol, un plafond de vol stationnaire de 3 639 mètres au-dessus du niveau de la mer avec effet de sol et une vitesse de croisière maximale de 246 km/h.</div><div>Dans l\'univers des giravions, le Bell 407 est réputé pour sa maniabilité, sa fiabilité et ses hautes performances. Après des décennies de recherche, d\'améliorations et de perfectionnements, cet hélicoptère est l\'un des favoris des aviateurs, et répond à toute une gamme de besoins généraux et spécialisés.&nbsp;</div>', '61a2f3f9d4c98bc96dd5ba6dfe50b054b8a926dc.webp', NULL, '2023-02-03 14:07:57', 259, 185, '1 Moteur à réaction', 6096, 1202, 2268, 556, 492, NULL, NULL);

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
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `planes_category`
--

INSERT INTO `planes_category` (`id`, `name`, `active`, `updated_at`, `created_at`, `image`, `description`) VALUES
(1, 'Aérogires', 1, '2023-02-04 20:28:26', '2023-02-03 13:59:01', '706450640e64e20381d370eaafbffdd39e629996.webp', '<div>Un <strong>aérogire</strong> est un <a href=\"https://fr.wikipedia.org/wiki/A%C3%A9rodyne\">aérodyne</a> à voilure tournante, c\'est-à-dire un <a href=\"https://fr.wikipedia.org/wiki/A%C3%A9ronef\">aéronef</a> plus lourd que l\'air dont la sustentation (<a href=\"https://fr.wikipedia.org/wiki/Portance_(a%C3%A9rodynamique)\">portance</a>) est assurée par la rotation d\'un ou plusieurs rotors. L\'<a href=\"https://fr.wikipedia.org/wiki/H%C3%A9licopt%C3%A8re\">hélicoptère</a> équipé d\'un <a href=\"https://fr.wikipedia.org/wiki/Rotor_principal\">rotor principal</a> assurant également sa propulsion et d\'un <a href=\"https://fr.wikipedia.org/wiki/Rotor_anticouple\">rotor anticouple</a> en queue, est le représentant le plus courant de cette catégorie, mais il existe de nombreuses autres configurations, telles que l\'<a href=\"https://fr.wikipedia.org/wiki/Autogire\">autogire</a>.</div>'),
(2, 'Autres appareils', 1, '2023-02-05 11:44:45', '2023-02-03 13:59:13', 'e53469559c22fc5854c4826b1299d4211428a47f.webp', '<div>Cette section regroupe tous les autres appareils ne pouvant être classés dans les autres catégories.<br><br>Nous y trouvons par exemple le Hercules H4 d\'Howard Hugues ou le Volocopter.</div>'),
(3, 'Avions à hélices', 1, '2023-02-04 20:29:27', '2023-02-03 13:59:23', '78762dcb316132f0438bf91b44d2d32b2a8ec3fc.webp', '<div>Un avion à hélice est un avion qui utilise une hélice pour générer une poussée. Ils sont généralement plus petits et moins chers que les jets. Les avions à hélices sont une excellente option pour ceux qui veulent voyager avec un budget limité car ils sont nettement moins chers que les autres types d\'avions. Ils ont également une empreinte carbone plus faible et sont plus économes en carburant que les autres types d\'avions.<br><br>Il existe différents types d\'avions à hélices, le plus populaire étant le Cessna. Le Cessna est un avion très fiable. Un avion à hélice est un avion qui utilise une hélice pour générer une poussée. Les avions à hélices sont le type d\'avion le plus répandu dans le monde. Ils sont utilisés à diverses fins telles que le transport de marchandises, le transport de passagers et à des fins militaires.</div>'),
(4, 'Avions de ligne', 1, '2023-02-04 20:29:42', '2023-02-03 13:59:33', '0763365e2f576b296bee19516c079d7819040df6.webp', '<div>Un <strong>avion de ligne</strong> désigne un appareil utilisé pour le transport de passagers sur des bases commerciales. Ils sont, le plus souvent, exploités par des <a href=\"https://fr.wikipedia.org/wiki/Compagnie_a%C3%A9rienne\">compagnies aériennes</a> qui en sont propriétaires ou locataires. Ils desservent des lignes régulières, ou sont <a href=\"https://fr.wikipedia.org/wiki/Vol_charter\">affrétés</a> pour le transport de groupes à partir et à destination d\'<a href=\"https://fr.wikipedia.org/wiki/A%C3%A9roport\">aéroports</a> commerciaux. En moyenne, il vole entre 810 et 920 km/h.<br><br></div><div>La grande majorité des avions de ligne en service sont conçus exclusivement pour ces types d\'utilisations mais dans la première moitié du <a href=\"https://fr.wikipedia.org/wiki/XXe_si%C3%A8cle\">xxe siècle</a> ils ont souvent été développés à partir d\'<a href=\"https://fr.wikipedia.org/wiki/Avion_militaire\">avions militaires</a> de type <a href=\"https://fr.wikipedia.org/wiki/Bombardier_(avion)\">bombardier</a> ou transport. Beaucoup existent aussi en version <a href=\"https://fr.wikipedia.org/wiki/Avion_de_transport\">cargo</a> pour le transport de fret ou en version combinée passagers-cargo. Les anciens appareils revendus sur le marché de l\'occasion sont souvent transformés pour le transport du fret. Quelques appareils ont été aménagés pour le transport de personnalités (chefs d\'État), sont utilisés comme avions d\'affaires ou connaissent des applications militaires (<a href=\"https://fr.wikipedia.org/wiki/Avion_de_transport_militaire\">transport de troupes</a>, <a href=\"https://fr.wikipedia.org/wiki/Avion_ravitailleur\">ravitaillement en vol</a>, etc.).<br><br></div>'),
(5, 'Avions turbopropulseurs', 1, '2023-02-04 20:30:02', '2023-02-03 13:59:47', 'daa1e7a18110fa2c657afdf84e87d6b6fbb3e481.webp', '<div>Aux États-Unis, en 1939, plusieurs ingénieurs innovèrent. Ils utilisèrent un nouveau mécanisme enclenchant la rotation des hélices : une turbine à gaz. Le 1er moteur turbopropulseur fut le <a href=\"https://www.rolls-royce.com/\">Rolls-Royce</a> Trent construit en 1945.<br><br></div><div>Aujourd’hui, un avion turbopropulseur est facilement reconnaissable grâce à ses hélices. Qu’elles soient au niveau des ailes ou sur le bec, les pales sont l’élément déterminant permettant le décollage de l’avion.</div><div>En aéronautique, la différence fondamentale entre un jet privé et un turbopropulseur est le principe de fonctionnement du moteur.<br><br></div><div>Le passage de l’air dans le moteur est la clé de la mise en marche. L’air passe par le compresseur (compresseur haute pression) puis la chambre de combustion. Au niveau de la consommation de carburant, ce dernier est alors injecté et brûlé provoquant une augmentation de chaleur. Cela actionne la turbine ainsi que l’hélice. Plus l’air entre vite, plus la vitesse de rotation de la turbine augmente et propulse l’appareil. L’échappement et l’éjection des gaz ainsi que l’énergie résiduelle non récupérée par les ailettes des turbines apportent une poussée supplémentaire.</div>'),
(6, 'Planeurs', 1, '2023-02-05 09:36:47', '2023-02-03 13:59:56', 'd22fc47119bba92c675cebcbc25473a23da3cecd.webp', '<div>Un <strong>planeur</strong> est un <a href=\"https://fr.wikipedia.org/wiki/A%C3%A9rodyne\">aérodyne</a> dépourvu de <a href=\"https://fr.wikipedia.org/wiki/Moteur\">moteur</a>, généralement de fort <a href=\"https://fr.wikipedia.org/wiki/Allongement_(a%C3%A9ronautique)\">allongement</a>, optimisé pour le <a href=\"https://fr.wikipedia.org/wiki/Vol_plan%C3%A9\">vol plané</a> et le <a href=\"https://fr.wikipedia.org/wiki/Vol_%C3%A0_voile\">vol à voile</a> (utilisation des courants aériens ascendants en guise de propulsion). Les qualités principales d\'un planeur de performance sont son <a href=\"https://fr.wikipedia.org/wiki/Taux_de_chute\">taux de chute minimum</a>(moins de 0,5 m/s), sa <a href=\"https://fr.wikipedia.org/wiki/Finesse_(a%C3%A9rodynamique)\">finesse maximale</a> (rapport entre distance parcourue et altitude perdue, qui peut dépasser 60 km pour 1 000 m), sa <a href=\"https://fr.wikipedia.org/wiki/Charge_alaire\">charge alaire</a>, qui conditionne sa finesse à vitesse plus élevée, et sa <a href=\"https://fr.wikipedia.org/wiki/Vitesse_maximale_d%27un_a%C3%A9ronef\">vitesse à ne pas dépasser</a> (jusqu\'à près de 300 km/h).<br><br></div><div>Par conditions <a href=\"https://fr.wikipedia.org/wiki/A%C3%A9rologie\">aérologiques</a> favorables, un planeur peut rester plusieurs heures en l\'air (couramment 5 à 10 heures, le <a href=\"https://fr.wikipedia.org/wiki/Vol_%C3%A0_voile_(records)\">record</a> étant de 57 h 40 min depuis 1954), gagner de l\'altitude (1 000 à 2 000 m en plaine, 3 000 à 5 000 m en montagne, le record d\'altitude absolu est de 22 646 m), voler à une vitesse moyenne de 100 à près de 300 km/h) et parcourir de grandes distances sur la campagne (300 à 1 000 km, record de 3 009 km en 15 heures environ sous le vent de la <a href=\"https://fr.wikipedia.org/wiki/Cordill%C3%A8re_des_Andes\">cordillère des Andes</a>).<br><br></div><div>Un <a href=\"https://fr.wikipedia.org/wiki/Motoplaneur\">motoplaneur</a> est un planeur doté d\'un moteur d\'appoint, escamotable ou non, permettant le décollage autonome. Quand le moteur est de faible puissance et ne permet que la poursuite du vol en l\'absence d\'ascendances (pour rejoindre un aérodrome), on parle de moteur et de planeur « turbo ».<br><br></div>'),
(7, 'Avions à réaction', 1, '2023-02-04 20:30:46', '2023-02-03 14:00:08', '50928e19ef787ebea56a7be234bdce06449b43cb.webp', '<div>Un <strong>avion à réaction</strong> est un <a href=\"https://fr.wikipedia.org/wiki/Avion\">avion</a> propulsé par un <a href=\"https://fr.wikipedia.org/wiki/Moteur_%C3%A0_r%C3%A9action\">moteur à réaction</a>. Apparu peu avant la <a href=\"https://fr.wikipedia.org/wiki/Premi%C3%A8re_Guerre_mondiale\">Première Guerre mondiale</a>, expérimental dans les <a href=\"https://fr.wikipedia.org/wiki/Ann%C3%A9es_1930\">années 1930</a>, opérationnel à la fin de la <a href=\"https://fr.wikipedia.org/wiki/Seconde_Guerre_mondiale\">Seconde Guerre mondiale</a>, ce type d\'avion s\'est imposé dans le domaine militaire dans les années <a href=\"https://fr.wikipedia.org/wiki/1950\">1950</a> puis, par la suite, dans le domaine civil pour les vols long ou moyen-courrier.<br><br>Les avions à réaction civils, destinés au transport de passagers, apparaissent dans les années 1950. L\'adoption du moteur à réaction permet de doubler la vitesse de croisière par rapport à un avion classique, et devient un argument commercial pour les compagnies aériennes.</div>');

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
-- Index pour la table `company`
--
ALTER TABLE `company`
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
-- AUTO_INCREMENT pour la table `company`
--
ALTER TABLE `company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `plane`
--
ALTER TABLE `plane`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
-- Contraintes pour la table `plane`
--
ALTER TABLE `plane`
  ADD CONSTRAINT `FK_C1B32D8012469DE2` FOREIGN KEY (`category_id`) REFERENCES `planes_category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
