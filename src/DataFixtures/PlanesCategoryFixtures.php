<?php

namespace App\DataFixtures;

use DateTimeImmutable;
use App\Entity\PlanesCategory;
use Doctrine\Persistence\ObjectManager;
use Doctrine\Bundle\FixturesBundle\Fixture;

class PlanesCategoryFixtures extends Fixture
{

    public const CATEGORY_AEROGIRES = 'Aérogires';
    public const CATEGORY_AUTRES_APPAREILS = 'Autres appareils';
    public const CATEGORY_AVIONS_HELICES = 'Avions à hélices';
    public const CATEGORY_AVIONS_LIGNE = 'Avions de ligne';
    public const CATEGORY_AVIONS_TURBOPROPULSEURS = 'Avions turbopropulseurs';
    public const CATEGORY_PLANEURS = 'Planeurs';
    public const CATEGORY_AVIONS_REACTION = 'Avions à réaction';

    public function load(ObjectManager $manager): void
    {
        $category = new PlanesCategory();
        $category->setName('Aérogires');
        $category->setDescription("Un aérogire est un aérodyne à voilure tournante, c'est-à-dire un aéronef plus lourd que l'air dont la sustentation (portance) est assurée par la rotation d'un ou plusieurs rotors. L'hélicoptère équipé d'un rotor principal assurant également sa propulsion et d'un rotor anticouple en queue, est le représentant le plus courant de cette catégorie, mais il existe de nombreuses autres configurations, telles que l'autogire.");
        $category->setImage('706450640e64e20381d370eaafbffdd39e629996.webp');
        $category->setHeroImg('64f63c9f2908a782e19e5018a32f4cad76d4302a.webp');
        $category->setActive(true);
        $category->setCreatedAt(new DateTimeImmutable());

        $manager->persist($category);
        $this->addReference(self::CATEGORY_AEROGIRES, $category);

        $category = new PlanesCategory();
        $category->setName('Autres appareils');
        $category->setDescription("Cette section regroupe tous les autres appareils ne pouvant être classés dans les autres catégories.
        Nous y trouvons par exemple le Hercules H4 d'Howard Hugues ou le Volocopter.
        ");
        $category->setImage('e53469559c22fc5854c4826b1299d4211428a47f.webp');
        $category->setHeroImg('731e1adb6fc79e4a88b19974b8e7d43c5bef4a9a.webp');
        $category->setActive(true);
        $category->setCreatedAt(new DateTimeImmutable());

        $manager->persist($category);
        $this->addReference(self::CATEGORY_AUTRES_APPAREILS, $category);


        $category = new PlanesCategory();
        $category->setName('Avions à hélices');
        $category->setDescription("Un avion à hélice est un avion qui utilise une hélice pour générer une poussée. Ils sont généralement plus petits et moins chers que les jets. Les avions à hélices sont une excellente option pour ceux qui veulent voyager avec un budget limité car ils sont nettement moins chers que les autres types d'avions. Ils ont également une empreinte carbone plus faible et sont plus économes en carburant que les autres types d'avions.
        Il existe différents types d'avions à hélices, le plus populaire étant le Cessna. Le Cessna est un avion très fiable. Un avion à hélice est un avion qui utilise une hélice pour générer une poussée. Les avions à hélices sont le type d'avion le plus répandu dans le monde. Ils sont utilisés à diverses fins telles que le transport de marchandises, le transport de passagers et à des fins militaires.");
        $category->setImage('78762dcb316132f0438bf91b44d2d32b2a8ec3fc.webp');
        $category->setHeroImg('995aad01397b09b940998d3cd20342990a6cd0ab.webp');
        $category->setActive(true);
        $category->setCreatedAt(new DateTimeImmutable());

        $manager->persist($category);
        $this->addReference(self::CATEGORY_AVIONS_HELICES, $category);

        $category = new PlanesCategory();
        $category->setName('Avions de ligne');
        $category->setDescription("Un avion de ligne désigne un appareil utilisé pour le transport de passagers sur des bases commerciales. Ils sont, le plus souvent, exploités par des compagnies aériennes qui en sont propriétaires ou locataires. Ils desservent des lignes régulières, ou sont affrétés pour le transport de groupes à partir et à destination d'aéroports commerciaux. En moyenne, il vole entre 810 et 920 km/h.
        La grande majorité des avions de ligne en service sont conçus exclusivement pour ces types d'utilisations mais dans la première moitié du xxe siècle ils ont souvent été développés à partir d'avions militaires de type bombardier ou transport. Beaucoup existent aussi en version cargo pour le transport de fret ou en version combinée passagers-cargo. Les anciens appareils revendus sur le marché de l'occasion sont souvent transformés pour le transport du fret. Quelques appareils ont été aménagés pour le transport de personnalités (chefs d'État), sont utilisés comme avions d'affaires ou connaissent des applications militaires (transport de troupes, ravitaillement en vol, etc.).");
        $category->setImage('0763365e2f576b296bee19516c079d7819040df6.webp');
        $category->setHeroImg('a34e4d0e6b4296c9d7502ecc88e12bb0be45c2bd.webp');
        $category->setActive(true);
        $category->setCreatedAt(new DateTimeImmutable());

        $manager->persist($category);
        $this->addReference(self::CATEGORY_AVIONS_LIGNE, $category);

        $category = new PlanesCategory();
        $category->setName('Avions turbopropulseurs');
        $category->setDescription("Aux États-Unis, en 1939, plusieurs ingénieurs innovèrent. Ils utilisèrent un nouveau mécanisme enclenchant la rotation des hélices : une turbine à gaz. Le 1er moteur turbopropulseur fut le Rolls-Royce Trent construit en 1945.
        Aujourd’hui, un avion turbopropulseur est facilement reconnaissable grâce à ses hélices. Qu’elles soient au niveau des ailes ou sur le bec, les pales sont l’élément déterminant permettant le décollage de l’avion.
        En aéronautique, la différence fondamentale entre un jet privé et un turbopropulseur est le principe de fonctionnement du moteur.
        Le passage de l’air dans le moteur est la clé de la mise en marche. L’air passe par le compresseur (compresseur haute pression) puis la chambre de combustion. Au niveau de la consommation de carburant, ce dernier est alors injecté et brûlé provoquant une augmentation de chaleur. Cela actionne la turbine ainsi que l’hélice. Plus l’air entre vite, plus la vitesse de rotation de la turbine augmente et propulse l’appareil. L’échappement et l’éjection des gaz ainsi que l’énergie résiduelle non récupérée par les ailettes des turbines apportent une poussée supplémentaire.");
        $category->setImage('daa1e7a18110fa2c657afdf84e87d6b6fbb3e481.webp');
        $category->setHeroImg('1c582c04816b0d5bff6a32a28fee5abfa7f0cef7.webp');
        $category->setActive(true);
        $category->setCreatedAt(new DateTimeImmutable());

        $manager->persist($category);
        $this->addReference(self::CATEGORY_AVIONS_TURBOPROPULSEURS, $category);

        $category = new PlanesCategory();
        $category->setName('Planeurs');
        $category->setDescription("Un planeur est un aérodyne dépourvu de moteur, généralement de fort allongement, optimisé pour le vol plané et le vol à voile (utilisation des courants aériens ascendants en guise de propulsion). Les qualités principales d'un planeur de performance sont son taux de chute minimum(moins de 0,5 m/s), sa finesse maximale (rapport entre distance parcourue et altitude perdue, qui peut dépasser 60 km pour 1 000 m), sa charge alaire, qui conditionne sa finesse à vitesse plus élevée, et sa vitesse à ne pas dépasser (jusqu'à près de 300 km/h).
        Par conditions aérologiques favorables, un planeur peut rester plusieurs heures en l'air (couramment 5 à 10 heures, le record étant de 57 h 40 min depuis 1954), gagner de l'altitude (1 000 à 2 000 m en plaine, 3 000 à 5 000 m en montagne, le record d'altitude absolu est de 22 646 m), voler à une vitesse moyenne de 100 à près de 300 km/h) et parcourir de grandes distances sur la campagne (300 à 1 000 km, record de 3 009 km en 15 heures environ sous le vent de la cordillère des Andes).
        Un motoplaneur est un planeur doté d'un moteur d'appoint, escamotable ou non, permettant le décollage autonome. Quand le moteur est de faible puissance et ne permet que la poursuite du vol en l'absence d'ascendances (pour rejoindre un aérodrome), on parle de moteur et de planeur « turbo ».");
        $category->setImage('d22fc47119bba92c675cebcbc25473a23da3cecd.webp');
        $category->setHeroImg('b24a7e6c3c92bdb05bf819b1ff9bc80cd9be5d76.webp');
        $category->setActive(true);
        $category->setCreatedAt(new DateTimeImmutable());

        $manager->persist($category);
        $this->addReference(self::CATEGORY_PLANEURS, $category);

        $category = new PlanesCategory();
        $category->setName('Avions à réaction');
        $category->setDescription("Un avion à réaction est un avion propulsé par un moteur à réaction. Apparu peu avant la Première Guerre mondiale, expérimental dans les années 1930, opérationnel à la fin de la Seconde Guerre mondiale, ce type d'avion s'est imposé dans le domaine militaire dans les années 1950 puis, par la suite, dans le domaine civil pour les vols long ou moyen-courrier.
        Les avions à réaction civils, destinés au transport de passagers, apparaissent dans les années 1950. L'adoption du moteur à réaction permet de doubler la vitesse de croisière par rapport à un avion classique, et devient un argument commercial pour les compagnies aériennes.");
        $category->setImage('50928e19ef787ebea56a7be234bdce06449b43cb.webp');
        $category->setHeroImg('dd6489888f13dc4ee88e145de34bd35200435574.webp');
        $category->setActive(true);
        $category->setCreatedAt(new DateTimeImmutable());

        $manager->persist($category);
        $this->addReference(self::CATEGORY_AVIONS_REACTION, $category);

        $manager->flush();
    }
}
