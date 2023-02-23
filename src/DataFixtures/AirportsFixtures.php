<?php

namespace App\DataFixtures;

use DateTimeImmutable;
use App\Entity\Airport;
use Doctrine\Persistence\ObjectManager;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Symfony\Component\String\Slugger\SluggerInterface;

class AirportsFixtures extends Fixture
{

    public function __construct(
        private SluggerInterface $slugger
    ){}
    
    public function load(ObjectManager $manager): void
    {
        $airport = new Airport();
        $airport->setName('Hartsfield-Jackson Atlanta International Airport (ATL)');
        $airport->setDescription("L’aéroport international Hartsfield-Jackson (code IATA : ATL • code OACI : KATL) est un aéroport international majeur à Atlanta en Géorgie (États-Unis). Plus grand aéroport des États-Unis et du monde par nombre de passagers (110,531 millions de passagers en 2019) il l'est également par le nombre de mouvements d'aéronefs1.
        Son nom vient des anciens maires d'Atlanta William B. Hartsfield (1890-1971) (qui a participé à la transformation de l'aéroport) et Maynard Jackson (1938-2003) (premier maire afro-américain de la ville, qui a participé à la modernisation de l'aéroport).
        En 1909, Hartsfield était un circuit de course automobile qui appartenait au fondateur de la Coca-Cola Company, Asa Griggs Candler. Celui-ci avait acheté les rares terrains plats de la ville, il deviendra plus tard le maire d'Atlanta, de 1916 à 1919.
        L'aéroport est ensuite devenu municipal. Mais c'est surtout à la fin des années 1970 qu'il a pris son essor. Une étude ayant montré que les vents de travers ne soufflaient intensément que quelques heures par an, l'architecte a proposé de supprimer les pistes transversales. Cela a permis de n'avoir que des pistes parallèles les unes aux autres. Grâce à cette configuration, l'aéroport a pu s'étendre. C'est le premier aéroport du monde où tous les avions sont au contact avec le terminal, c'est-à-dire que les passagers n'ont pas besoin d'emprunter un bus ou une navette à la sortie de l'appareil.
        Entre les terminaux, l'architecte a ajouté un train. Il est pourvu d'une voix qui énonce l'alphabet pour que personne n'oublie de descendre à son terminal : B comme Bravo, C comme Charlie.
        La mondialisation a atteint doucement Atlanta. En 1978, la compagnie nationale belge Sabena a été la première compagnie étrangère à être représentée. Jimmy Carter, le nouveau président, était un ami du consul général de Belgique.");
        $airport->setImage('9b37a6cf8f908610b8c198239348780762e9409a.png');
        $airport->setCreatedAt(new DateTimeImmutable());
        $airport->setSlug($this->slugger->slug($airport->getName())->lower());
        $manager->persist($airport);

        $airport = new Airport();
        $airport->setName('Los Angeles International Airport (LAX)');
        $airport->setDescription("L'aéroport international de Los Angeles (en anglais : Los Angeles International Airport), connu localement sous le sigle LAX (chaque lettre se prononce individuellement) (code IATA : LAX • code OACI : KLAX), est un aéroport américain desservant Los Angeles (Californie) et son agglomération.
        Il s'agit du troisième aéroport mondial quant au trafic de passagers, avec plus de 88 millions de personnes qui en font usage en 2019, ainsi que du deuxième aux États-Unis après l'aéroport international Hartsfield-Jackson d'Atlanta. Il est également deuxième au niveau national après l'aéroport international John F. Kennedy de New York en nombre de passagers pour les vols internationaux. Selon les données de 2010, il est le troisième aéroport au monde quant aux mouvements d'avions, avec 666 938 atterrissages et décollages.
        En moyenne, toutes les 30 secondes, un avion atterrit ou décolle. En raison des circulations très denses sur les quatre pistes, des accidents au sol ont régulièrement lieu, bien que le dernier à l'issue fatale remonte à 1991. Aéroport le plus important de la côte ouest des États-Unis, suivi de celui de San Francisco, l'aéroport international de Los Angeles est une plate-forme de correspondance importante pour plusieurs compagnies aériennes américaines, notamment United Airlines, Alaska Airlines, American Airlines, Southwest Airlines, Allegiant Air et Delta Air Lines.");
        $airport->setImage('c0fea307c787cd82b32f337aec6e3720b8135bb2.png');
        $airport->setCreatedAt(new DateTimeImmutable());
        $airport->setSlug($this->slugger->slug($airport->getName())->lower());
        $manager->persist($airport);

        $manager->flush();
    }
}
