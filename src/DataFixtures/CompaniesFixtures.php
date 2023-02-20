<?php

namespace App\DataFixtures;

use App\Entity\Company;
use Doctrine\Persistence\ObjectManager;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Symfony\Component\String\Slugger\SluggerInterface;

class CompaniesFixtures extends Fixture
{

    public function __construct(
        private SluggerInterface $slugger
    ){}
    
    public function load(ObjectManager $manager): void
    {
        $company = new Company();
        $company->setName('American Airlines');
        $company->setSlug($this->slugger->slug($company->getName())->lower());
        $company->setCreatedAt(new \DateTimeImmutable());
        $company->setCode('AA');
        $company->setDescription('American Airlines, Inc. is a major American airline headquartered in Fort Worth, Texas, within the Dallas–Fort Worth metroplex. It is the world\'s largest airline when measured by fleet size, revenue, scheduled passengers carried, scheduled passenger-kilometers flown, and number of destinations served. American, together with its regional partners, operates an extensive international and domestic network with an average of nearly 6,700 flights per day to nearly 350 destinations in more than 50 countries. American is a founding member of the Oneworld airline alliance, whose members and members-elect serve nearly 1,000 destinations with about 14,250 daily flights to over 150 countries. Regional service is operated by independent and subsidiary carriers under the brand name American Eagle.');
        $company->setImage('bdc826bbeb11525cdd88316ac1148588a69586ab.jpg');
        $company->setLogo('26d0fe463a7e1bef4f3b26b4eba73287e3c52959.jpg');
        $company->setFirstLetter($this->getReference(CompaniesFirstLetterFixtures::COMPANY_FIRST_LETTER_A));
        $manager->persist($company);

        $company = new Company();
        $company->setName('British Airways');
        $company->setSlug($this->slugger->slug($company->getName())->lower());
        $company->setCreatedAt(new \DateTimeImmutable());
        $company->setCode('BA');
        $company->setDescription("British Airways plc is the flag carrier and the largest airline in the United Kingdom based on fleet size, international flights, international destinations and international passengers carried. It is headquartered in Waterside near its main hub at London Heathrow Airport. British Airways is the third-largest airline in Europe, after Lufthansa and Air France-KLM, and the seventh-largest in the world measured by fleet size, international flights and international destinations. It is a founding member of the Oneworld airline alliance. British Airways was established in 1974 after the British government took over the private intercontinental UK airline BOAC, which had operated since 1939. British Airways is a public company, listed on the London Stock Exchange and a constituent of the FTSE 100 Index. It has been a member of the FTSE 250 Index since 2008. British Airways is the largest airline in the UK in terms of passengers carried, revenue, and international flights. It is the second-largest airline in the UK in terms of fleet size, behind easyJet. It is the second-largest airline in the UK in terms of international destinations, behind easyJet. It is the second-largest airline in the UK in terms of international passengers carried, behind easyJet. It is the second-largest airline in the UK in terms of scheduled international flights, behind easyJet. It is the second-largest airline in the UK in terms of scheduled international passenger-kilometres flown, behind easyJet. It is the second-largest airline in the UK in terms of scheduled international revenue passenger-kilometres flown, behind easyJet. It is the second-largest airline in the UK in terms of scheduled international revenue passenger-miles flown, behind easyJet. It is the second-largest airline in the UK in terms of scheduled international revenue, behind easyJet. It is the second-largest airline in the UK in terms of scheduled international seats, behind easyJet. It is the second-largest airline in the UK in terms of scheduled international seats-kilometres flown, behind easyJet. It is the second-largest airline in the UK in terms of scheduled international seats-miles flown, behind easyJet. It is the second-largest airline in the UK in terms of scheduled international seats-passenger-kilometres flown, behind easyJet. It is the second-largest airline in the UK in terms of scheduled international seats-passenger-miles flown, behind easyJet. It is the second-largest airline in the UK");
        $company->setImage('f8247d8f5bb68a638b2d7322a9b5572dce85c3fd.jpg');
        $company->setLogo('a355801a3c09214109ddd7cbf83df524eb3ba739.jpg');
        $company->setFirstLetter($this->getReference(CompaniesFirstLetterFixtures::COMPANY_FIRST_LETTER_B));
        $manager->persist($company);

        $company = new Company();
        $company->setName('China AirLines');
        $company->setSlug($this->slugger->slug($company->getName())->lower());
        $company->setCreatedAt(new \DateTimeImmutable());
        $company->setCode('CI');
        $company->setDescription("China Airlines (simplified Chinese: 中国国际航空公司; traditional Chinese: 中國國際航空公司; pinyin: Zhōngguó Guójì Hángkōng Gōngsī) is the flag carrier and largest airline of Taiwan. It is headquartered in Xinyi District, Taipei, and its main hub is Taipei Songshan Airport. The airline was founded in 1959 as China National Aviation Corporation (CNAC), and was renamed China Airlines in 1969. It is a founding member of the Star Alliance. China Airlines is the largest airline in Taiwan in terms of fleet size, international flights, international destinations, international passengers carried, scheduled international passenger-kilometres flown, scheduled international revenue passenger-kilometres flown, scheduled international revenue passenger-miles flown, scheduled international revenue, scheduled international seats, scheduled international seats-kilometres flown, scheduled international seats-miles flown, scheduled international seats-passenger-kilometres flown, scheduled international seats-passenger-miles flown, and scheduled international revenue passenger-kilometres flown. It is the second-largest airline in Taiwan in terms of passengers carried, behind EVA Air. It is the second-largest airline in Taiwan in terms of scheduled international flights, behind EVA Air. It is the second-largest airline in Taiwan in terms of scheduled international revenue passenger-miles flown, behind EVA Air. It is the second-largest airline in Taiwan in terms of scheduled international revenue, behind EVA Air. It is the second-largest airline in Taiwan in terms of scheduled international seats, behind EVA Air. It is the second-largest airline in Taiwan in terms of scheduled international seats-kilometres flown, behind EVA Air. It is the second-largest airline in Taiwan in terms of scheduled international seats-miles flown, behind EVA Air. It is the second-largest airline in Taiwan in terms of scheduled international seats-passenger-kilometres flown, behind EVA Air. It is the second-largest airline in Taiwan in terms of scheduled international seats-passenger-miles flown, behind EVA Air. It is the second-largest airline in Taiwan in terms of scheduled international revenue passenger-kilometres flown, behind EVA Air. It is the third-largest airline in Taiwan in terms of scheduled international revenue passenger-miles flown, behind EVA Air and China Airlines. It is the third-largest airline in Taiwan");
        $company->setImage('dafaa1bd78581be7e06f5d6745006a0e88618a64.jpg');
        $company->setLogo('3763420db780075178c9adacac7604ca3b3b5269.jpg');
        $company->setFirstLetter($this->getReference(CompaniesFirstLetterFixtures::COMPANY_FIRST_LETTER_C));
        $manager->persist($company);

        $manager->flush();
    }
}
