<?php

namespace App\DataFixtures;

use App\Entity\Plane;
use DateTimeImmutable;
use Doctrine\Persistence\ObjectManager;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Symfony\Component\String\Slugger\SluggerInterface;
use Doctrine\Common\DataFixtures\DependentFixtureInterface;

class PlanesFixtures extends Fixture implements DependentFixtureInterface
{
    public function __construct(
        private SluggerInterface $slugger
    ){}

    public function load(ObjectManager $manager): void
    {
        $plane = new Plane();
        $plane->setName('Bell Model 407');
        $plane->setSlug($this->slugger->slug($plane->getName())->lower());
        $plane->setDescription("Le 407 est un hélicoptère utilitaire monomoteur polyvalent produit par Bell Helicopter aux États-Unis.
        Il est dérivé du 206L-3 LongRanger III de Bell, un appareil ayant connu un grand succès. Comme son prédécesseur, le 407 n'est piloté que par un seul membre d'équipage et peut accueillir jusqu'à six passagers. Aujourd'hui, l'hélicoptère est l'un des giravions les plus polyvalents et les plus avancés. Il utilise un système de rotor principal composite à quatre pales et une variante « soft-in-plane » avec un moyeu entièrement articulé et des roulements en élastomère. Le rotor de queue anticouple possède deux pales. L'appareil a effectué son vol inaugural le 29 juin 1995 et a été mis en service en 1996. Plus de 1 500 appareils ont été produits à ce jour, et la cellule répond à un large éventail de besoins, notamment dans les domaines suivants : affaires, application de la loi, ambulance aérienne, recherche, médias, commerce, opérations spéciales, foresterie et armée. Le 407 mesure 12,7 mètres de long et 3,6 mètres de hauteur. Son système de rotor principal possède un diamètre de 10,7 mètres. L'hélicoptère est équipé d'un seul turbomoteur Rolls-Royce/Allison modèle 250-C47B qui fournit 650 chevaux pour le décollage et 600 chevaux en régime continu pour des opérations.
        Le 407 a une autonomie de quatre heures, un plafond de vol stationnaire de 4 130 mètres au-dessus du niveau de la mer hors effet de sol, un plafond de vol stationnaire de 3 639 mètres au-dessus du niveau de la mer avec effet de sol et une vitesse de croisière maximale de 246 km/h.
        Dans l'univers des giravions, le Bell 407 est réputé pour sa maniabilité, sa fiabilité et ses hautes performances. Après des décennies de recherche, d'améliorations et de perfectionnements, cet hélicoptère est l'un des favoris des aviateurs, et répond à toute une gamme de besoins généraux et spécialisés. ");
        $plane->setCreatedAt(new DateTimeImmutable());
        $plane->setImage('61a2f3f9d4c98bc96dd5ba6dfe50b054b8a926dc.webp');
        $plane->setCategory($this->getReference(PlanesCategoryFixtures::CATEGORY_AEROGIRES));
        $plane->setMaxSpeed(259);
        $plane->setCruisingSpeed(185);
        $plane->setEngine('1 Moteur à réaction');
        $plane->setMaxElevation(6096);
        $plane->setEmptyWeight(1202);
        $plane->setMaxWeight(2268);
        $plane->setRangeOfAction(556);
        $plane->setFuelCapacity(492);

        $manager->persist($plane);

        $plane = new Plane();
        $plane->setName('Volocopter VoloCity');
        $plane->setSlug($this->slugger->slug($plane->getName())->lower());
        $plane->setDescription("Le VoloCity est un multicoptère électrique à décollage et atterrissage verticaux (eVTOL), un avion révolutionnaire conçu pour le transport de passagers en ville. Cet avion unique est un multicoptère de cinquième génération conçu par Volocopter GmbH, à Bruchsal, en Allemagne.
        C'est le tout premier avion de ce type. Il a effectué plus de 1 000 vols d'essai à ce jour.
        Le cockpit numérique est doté de systèmes de vol et d'aide dernier cri, avec plus de 100 microprocesseurs qui permettent un pilotage intuitif de l'avion.
        Il peut accueillir deux passagers côte à côte et dispose d'un compartiment sécurisé pour les bagages à main.
        Ses 18 rotors permettent un décollage et atterrissage verticaux tout en douceur.
        L'avion peut voler jusqu'à 2 000 m au-dessus du niveau de la mer et a une autonomie de 35 km, soit environ 35 minutes de vol avec une charge (avec la technologie de batterie actuelle).
        Le voyage est exceptionnellement stable et silencieux.
        La cellule est d'ailleurs quatre fois plus silencieuse qu'un petit hélicoptère, grâce aux rotors qui opèrent dans les limites d'une bande de fréquence étroite.
        Ces rotors sont alimentés par 9 batteries au lithium-ion échangeables, qui peuvent être remplacées rapidement et en toute sécurité dans un VoloPort après l'atterrissage.
        Le VoloCity peut atteindre une vitesse maximale de 110 km/h et vole à une vitesse écoénergétique et agréable pour les passagers.
        Ce nouvel avion est conçu pour respecter les plus hauts standards de sécurité conformément à la certification EASA SC-VTOL (10-9).
        Volocopter vise principalement un usage commercial de VoloCity dans de nombreuses régions du monde, et a l'intention d'offrir des vols d'ici 3 ans.
        Les taxis aériens Volocopter permettront aux clients de profiter de déplacements sécurisés et écologiques, tout en évitant le trafic des grandes villes.
        En raison de sa basse altitude de vol et des manœuvres que nécessite son pilotage en ville, l'entraînement des pilotes du VoloCity sera unique en son genre, et tous seront préparés pour l'avenir de la mobilité aérienne en milieu urbain.");
        $plane->setCreatedAt(new \DateTimeImmutable());
        $plane->setImage('fde931574bf6db94b0c1e37205c202daaec118db.webp');
        $plane->setCategory($this->getReference(PlanesCategoryFixtures::CATEGORY_AUTRES_APPAREILS));
        $plane->setEmptyWeight(700);
        $plane->setMaxWeight(900);

        $manager->persist($plane);

        $plane = new Plane();
        $plane->setName('Zlin Aviation Shock Ultra');
        $plane->setSlug($this->slugger->slug($plane->getName())->lower());
        $plane->setDescription("En 2016, Zlin Aviation basé en République Tchèque veut en mettre plein la vue au marché des avions sportifs légers avec son bien nommé Shock Cub, un avion de brousse tout en puissance salué pour son décollage remarquablement court et ses statistiques de performance. L'entreprise a ensuite sorti le Shock Ultra, qui a monté la barre de l'aviation d'aventure d'un cran.
        Dévoilé au salon Aero Friedrichshafen de 2018, le Shock Ultra garde plusieurs fonctionnalités de son prédécesseur, notamment le profil d'aile Hyper-STOL pour un décollage court et une montée plus rapide, des volets Fowler à double encoche pour le contrôle à basse vitesse, et des amortisseurs extérieurs robustes pour dompter les terrains les plus imprévisibles.
        Mais l'Ultra se distingue surtout par son poids. Les optimisations dans tout le fuselage font de cet avion à train classique en tubes et tissu l'avion spécialisé pour la brousse le plus léger du marché. Cependant le cadre de son fuselage renforcé et raffiné assure la résistance de l'Ultra.
        Moins de poids pour plus d'économies de carburant et des coûts d'exploitation inférieurs. Sa conception innovante implique des performances sans compromis. Ces caractéristiques donnent un avion sportif ultraléger qui vous emmènera là où l'aventure vous appelle.");
        $plane->setCreatedAt(new \DateTimeImmutable());
        $plane->setImage('6fa566a47bc98813a8afb0fe420a018357fdb15e.webp');
        $plane->setCategory($this->getReference(PlanesCategoryFixtures::CATEGORY_AVIONS_HELICES));
        $plane->setCruisingSpeed(144);
        $plane->setEngine('1 piston');
        $plane->setMaxElevation(4801);
        $plane->setEmptyWeight(295);
        $plane->setMaxWeight(599);
        $plane->setRangeOfAction(599);
        $plane->setFuelCapacity(106);
        $plane->setLength(6);
        $plane->setWingspan(9);

        $manager->persist($plane);


        $plane = new Plane();
        $plane->setName('Textron Aviation Cessna Citation Longitude');
        $plane->setSlug($this->slugger->slug($plane->getName())->lower());
        $plane->setDescription("Annoncé à l'origine en 2012 sous la bannière de Textron Aviation, le Cessna Citation Longitude a effectué son premier vol en 2016, et domine le marché fortement concurrentiel des jets d'affaires moyenne gamme et haut de gamme à l'automne
        2019.
        Construit à l'usine Textron de Wichita dans le
        Kansas, le Longitude dérive du Cessna Latitude, plus petit, utilisant les mêmes tôles pour la section transversale du fuselage que son cousin, avec une rangée supplémentaire, une nouvelle aile avec ailettes marginales, et un empennage en T.
        Tandis que les passagers de classe affaires profiteront d'un vol fluide dans une cabine de la taille d'une salle de réunion, les pilotes à l'avant bénéficient d'un cockpit high-tech construit autour du poste de pilotage Garmin G5000, une suite avionique intégrée à commande tactile combinée à un affichage tête haute, une visibilité améliorée et des diagnostics système en temps réel.
        Alimenté par deux turboréacteurs à double flux
        Honeywell HTF7700L équipés de FADEC, comportant deux automanettes ainsi qu'une protection du domaine de vol, le Longitude réduit le carburant brûlé et les coûts d'exploitation - faisant de ce Citation un véritable avion de luxe à grand rayon d'action qui met les voyages d'affaires intercontinentaux a portée");
        $plane->setCreatedAt(new \DateTimeImmutable());
        $plane->setImage('7b8def1bd2a2dd4ff949aee3d149481629e18e28.webp');
        $plane->setCategory($this->getReference(PlanesCategoryFixtures::CATEGORY_AVIONS_REACTION));
        $plane->setMaxSpeed(926);
        $plane->setCruisingSpeed(895);
        $plane->setEngine('2 jets');
        $plane->setMaxElevation(13716);
        $plane->setEmptyWeight(10609);
        $plane->setMaxWeight(17917);
        $plane->setRangeOfAction(6484);
        $plane->setFuelCapacity(8176);
        $plane->setLength(18);
        $plane->setWingspan(20);

        $manager->persist($plane);


        $plane = new Plane();
        $plane->setName('Boeing 747-8 Intercontinental');
        $plane->setSlug($this->slugger->slug($plane->getName())->lower());
        $plane->setDescription("Le 747 a été conçu dans les années 1960, il s'agissait de l'entrée proposée de Boeing pour une étude de l'U.S. Air Force en un avion de transport stratégique très grande taille. L'avion de ligne commercial à fuselage entrera finalement en service public avec la compagnie Pan Am World Airways en 1970, où il a été surnommé le premier « Jumbo Jet » de l'industrie et conservera le record de capacité en passagers pendant 37 ans.
        Après des décennies à explorer des modèles de capacité supérieure, Boeing a annoncé en 2004 le
        747 Advanced - un modèle étiré qu'ils ont officiellement appelé 747-8 l'année suivante, avec une variante cargo (747-8F) lancée en octobre 2011, et une variante Intercontinentale (747-8l) pour les passagers voyageant avec Lufthansa en juin 2012.
        Évolution du 747-400, le 747-8 raffine et met à jour les moteurs de son prédécesseur, au même moment utilisant une partie majeure de la technologie de cockpit du 787 Dreamliner. Il en résulte une puissance haute technologie et légère conçue pour des performances améliorées, une réduction du bruit, et des émissions extrêmement faibles - conception encore améliorée par un système d'aile complètement repensé qui diminue la turbulence de sillage et la traînée, augmente les économies de carburant, la plage, et l'aérodynamique globale.
        Avec sa taille de très gros porteur et 60 ans d'expérience en ingénierie, le 747-8 peut facilement sembler aux antipodes de ses origines. Mais il suffit de jeter ne serait-ce qu'un coup d'œil à sa silhouette pour voir son héritage briller, dans les courbes élégantes de sa forme à double pont qui en font l'un des avions les plus reconnaissables au monde, qui méritera à jamais le nom conféré au premier de la gamme : la « Reine des cieux ».");
        $plane->setCreatedAt(new \DateTimeImmutable());
        $plane->setImage('475526e8733513fd5c3bf16ce459bf331bafe97b.webp');
        $plane->setCategory($this->getReference(PlanesCategoryFixtures::CATEGORY_AVIONS_LIGNE));
        $plane->setCruisingSpeed(913);
        $plane->setEngine('4 jets');
        $plane->setMaxElevation(13137);
        $plane->setEmptyWeight(220128);
        $plane->setMaxWeight(447696);
        $plane->setRangeOfAction(14820);
        $plane->setFuelCapacity(237955);
        $plane->setLength(73);
        $plane->setWingspan(68);

        $manager->persist($plane);


        $plane = new Plane();
        $plane->setName('Daher TBM 930');
        $plane->setSlug($this->slugger->slug($plane->getName())->lower());
        $plane->setDescription("Suite à son premier vol depuis Tarbes en 2016, le TBM 930 de Daher a pris sa place aux côtés du modèle de 2 ans son aîné, le TBM 900, devenant le turbopropulseur à un seul moteur certifié le plus rapide au monde.
        Le 930 est équipé d'une mécanique identique à celle du 900 et du même moteur Pratt & Whitney PT6A-66D, d'ailettes marginales conçues en interne, d'une admission d'air repensée et d'une hélice à cinq pales Harizell. Chaque composant est destiné à améliorer la puissance, la vitesse, l’aérodynamique et la manœuvrabilité.
        Les véritables ajouts du 930 se situent au niveau du poste de pilotage, parfaitement intégré et tout en verre, de l'avionique numérique G3000 de Garmin, ainsi qu'un ensemble de fonctionnalités de sécurité améliorées et un intérieur raffiné d'exception. Ces équipements font du TBM 930 bien plus qu'un avion... une machine volante de luxe.");
        $plane->setCreatedAt(new \DateTimeImmutable());
        $plane->setImage('9901fa433eda516f8a9133a13ecd33a868f0a54b.webp');
        $plane->setCategory($this->getReference(PlanesCategoryFixtures::CATEGORY_AVIONS_TURBOPROPULSEURS));
        $plane->setCruisingSpeed(611);
        $plane->setEngine('1 turbopropulseur');
        $plane->setMaxElevation(9449);
        $plane->setEmptyWeight(2100);
        $plane->setMaxWeight(3354);
        $plane->setRangeOfAction(3205);
        $plane->setFuelCapacity(1105);
        $plane->setLength(9);
        $plane->setWingspan(12);

        $manager->persist($plane);


        $plane = new Plane();
        $plane->setName('DG Aviation DG-1001E neo');
        $plane->setSlug($this->slugger->slug($plane->getName())->lower());
        $plane->setDescription("Le DG-1001E neo est un planeur léger motorisé biplace à hautes performances du constructeur aéronautique allemand DG Aviation. Il possède un système FES qui fonctionne avec une hélice à tangage fixe qui se rétracte dans le nez lorsqu'elle n'est pas utilisée. Ce système permet aux pilotes d'augmenter leur altitude lorsqu'ils sont incapables de trouver ou de manœuvrer dans la portance naturelle et de fournir de la puissance en cas d'urgence.
        Le DG-1001E neo, dont la cellule de base a effectué son premier vol en juillet 2000, est le résultat de décennies de recherche, de développement et d'étude des modèles précédents de planeurs. Les aviateurs savent qu'elle est finement équilibrée entre performance et tolérance et elle a été utilisée en compétition, pour l'entraînement et pour la voltige.
        La cellule est utilisée par l'Académie de l'armée de l'air des États-Unis pour l'enseignement du planeur.
        Le néo DG-1001E mesure 8,5 mètres de long et mesure 1,80 m de haut. Il possède un empennage en T, une roue d'atterrissage rétractable et peut transporter jusqu'à 160 kilogrammes de lest d'eau. Il possède une aile polyédrique à fort rapport d'aspect avec des ailettes marginales qui maximisent la portance et minimisent la traînée. Il a une finesse maximale de 46,5:1, un taux de descente de 29,8
        mètres par minute et une vitesse maximale de 273 km/h. Le DG-1001E neo grimpe jusqu'à 79,2 mètres par minute grâce à son alimentation électrique interne.
        Le DG-1001E neo de DG Aviation est un planeur dans sa propre classe. Doté d'une finesse impressionnante grâce à sa conception d'aile hautement raffinée, il est optimisé pour les chercheurs d'ascendances et est également une référence pour l'entraînement (en grande partie grâce au FES) et la voltige à haute gravité.");
        $plane->setCreatedAt(new \DateTimeImmutable());
        $plane->setImage('4fe6abadf379cba374fdcedbc361478269fea953.webp');
        $plane->setCategory($this->getReference(PlanesCategoryFixtures::CATEGORY_PLANEURS));
        $plane->setMaxSpeed(270);
        $plane->setEmptyWeight(508);
        $plane->setMaxWeight(790);
        $plane->setLength(9);
        $plane->setWingspan(20);

        $manager->persist($plane);


        $manager->flush();
    }

    public function getDependencies()
    {
        return [
            PlanesCategoryFixtures::class,
        ];
    }
}
