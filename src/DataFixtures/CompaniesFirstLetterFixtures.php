<?php

namespace App\DataFixtures;

use App\Entity\CompanyFirstLetter;
use Doctrine\Persistence\ObjectManager;
use Doctrine\Bundle\FixturesBundle\Fixture;

class CompaniesFirstLetterFixtures extends Fixture
{

    public const COMPANY_FIRST_LETTER_A = 'A';
    public const COMPANY_FIRST_LETTER_B = 'B';
    public const COMPANY_FIRST_LETTER_C = 'C';
    public const COMPANY_FIRST_LETTER_D = 'D';
    public const COMPANY_FIRST_LETTER_E = 'E';
    public const COMPANY_FIRST_LETTER_F = 'F';
    public const COMPANY_FIRST_LETTER_G = 'G';
    public const COMPANY_FIRST_LETTER_H = 'H';
    public const COMPANY_FIRST_LETTER_I = 'I';
    public const COMPANY_FIRST_LETTER_J = 'J';
    public const COMPANY_FIRST_LETTER_K = 'K';
    public const COMPANY_FIRST_LETTER_L = 'L';
    public const COMPANY_FIRST_LETTER_M = 'M';
    public const COMPANY_FIRST_LETTER_N = 'N';
    public const COMPANY_FIRST_LETTER_O = 'O';
    public const COMPANY_FIRST_LETTER_P = 'P';
    public const COMPANY_FIRST_LETTER_Q = 'Q';
    public const COMPANY_FIRST_LETTER_R = 'R';
    public const COMPANY_FIRST_LETTER_S = 'S';
    public const COMPANY_FIRST_LETTER_T = 'T';
    public const COMPANY_FIRST_LETTER_U = 'U';
    public const COMPANY_FIRST_LETTER_V = 'V';
    public const COMPANY_FIRST_LETTER_W = 'W';
    public const COMPANY_FIRST_LETTER_X = 'X';
    public const COMPANY_FIRST_LETTER_Y = 'Y';
    public const COMPANY_FIRST_LETTER_Z = 'Z';

    public function load(ObjectManager $manager): void
    {
        $companyFirstLetter = new CompanyFirstLetter();
        $companyFirstLetter->setLetter('A');
        $manager->persist($companyFirstLetter);
        $this->addReference(self::COMPANY_FIRST_LETTER_A, $companyFirstLetter);

        $companyFirstLetter = new CompanyFirstLetter();
        $companyFirstLetter->setLetter('B');
        $manager->persist($companyFirstLetter);
        $this->addReference(self::COMPANY_FIRST_LETTER_B, $companyFirstLetter);

        $companyFirstLetter = new CompanyFirstLetter();
        $companyFirstLetter->setLetter('C');
        $manager->persist($companyFirstLetter);
        $this->addReference(self::COMPANY_FIRST_LETTER_C, $companyFirstLetter);

        $companyFirstLetter = new CompanyFirstLetter();
        $companyFirstLetter->setLetter('D');
        $manager->persist($companyFirstLetter);
        $this->addReference(self::COMPANY_FIRST_LETTER_D, $companyFirstLetter);

        $companyFirstLetter = new CompanyFirstLetter();
        $companyFirstLetter->setLetter('E');
        $manager->persist($companyFirstLetter);
        $this->addReference(self::COMPANY_FIRST_LETTER_E, $companyFirstLetter);

        $companyFirstLetter = new CompanyFirstLetter();
        $companyFirstLetter->setLetter('F');
        $manager->persist($companyFirstLetter);
        $this->addReference(self::COMPANY_FIRST_LETTER_F, $companyFirstLetter);

        $companyFirstLetter = new CompanyFirstLetter();
        $companyFirstLetter->setLetter('G');
        $manager->persist($companyFirstLetter);
        $this->addReference(self::COMPANY_FIRST_LETTER_G, $companyFirstLetter);

        $companyFirstLetter = new CompanyFirstLetter();
        $companyFirstLetter->setLetter('H');
        $manager->persist($companyFirstLetter);
        $this->addReference(self::COMPANY_FIRST_LETTER_H, $companyFirstLetter);

        $companyFirstLetter = new CompanyFirstLetter();
        $companyFirstLetter->setLetter('I');
        $manager->persist($companyFirstLetter);
        $this->addReference(self::COMPANY_FIRST_LETTER_I, $companyFirstLetter);

        $companyFirstLetter = new CompanyFirstLetter();
        $companyFirstLetter->setLetter('J');
        $manager->persist($companyFirstLetter);
        $this->addReference(self::COMPANY_FIRST_LETTER_J, $companyFirstLetter);

        $companyFirstLetter = new CompanyFirstLetter();
        $companyFirstLetter->setLetter('K');
        $manager->persist($companyFirstLetter);
        $this->addReference(self::COMPANY_FIRST_LETTER_K, $companyFirstLetter);

        $companyFirstLetter = new CompanyFirstLetter();
        $companyFirstLetter->setLetter('L');
        $manager->persist($companyFirstLetter);
        $this->addReference(self::COMPANY_FIRST_LETTER_L, $companyFirstLetter);

        $companyFirstLetter = new CompanyFirstLetter();
        $companyFirstLetter->setLetter('M');
        $manager->persist($companyFirstLetter);
        $this->addReference(self::COMPANY_FIRST_LETTER_M, $companyFirstLetter);

        $companyFirstLetter = new CompanyFirstLetter();
        $companyFirstLetter->setLetter('N');
        $manager->persist($companyFirstLetter);
        $this->addReference(self::COMPANY_FIRST_LETTER_N, $companyFirstLetter);

        $companyFirstLetter = new CompanyFirstLetter();
        $companyFirstLetter->setLetter('O');
        $manager->persist($companyFirstLetter);
        $this->addReference(self::COMPANY_FIRST_LETTER_O, $companyFirstLetter);

        $companyFirstLetter = new CompanyFirstLetter();
        $companyFirstLetter->setLetter('P');
        $manager->persist($companyFirstLetter);
        $this->addReference(self::COMPANY_FIRST_LETTER_P, $companyFirstLetter);

        $companyFirstLetter = new CompanyFirstLetter();
        $companyFirstLetter->setLetter('Q');
        $manager->persist($companyFirstLetter);
        $this->addReference(self::COMPANY_FIRST_LETTER_Q, $companyFirstLetter);

        $companyFirstLetter = new CompanyFirstLetter();
        $companyFirstLetter->setLetter('R');
        $manager->persist($companyFirstLetter);
        $this->addReference(self::COMPANY_FIRST_LETTER_R, $companyFirstLetter);

        $companyFirstLetter = new CompanyFirstLetter();
        $companyFirstLetter->setLetter('S');
        $manager->persist($companyFirstLetter);
        $this->addReference(self::COMPANY_FIRST_LETTER_S, $companyFirstLetter);

        $companyFirstLetter = new CompanyFirstLetter();
        $companyFirstLetter->setLetter('T');
        $manager->persist($companyFirstLetter);
        $this->addReference(self::COMPANY_FIRST_LETTER_T, $companyFirstLetter);

        $companyFirstLetter = new CompanyFirstLetter();
        $companyFirstLetter->setLetter('U');
        $manager->persist($companyFirstLetter);
        $this->addReference(self::COMPANY_FIRST_LETTER_U, $companyFirstLetter);

        $companyFirstLetter = new CompanyFirstLetter();
        $companyFirstLetter->setLetter('V');
        $manager->persist($companyFirstLetter);
        $this->addReference(self::COMPANY_FIRST_LETTER_V, $companyFirstLetter);

        $companyFirstLetter = new CompanyFirstLetter();
        $companyFirstLetter->setLetter('W');
        $manager->persist($companyFirstLetter);
        $this->addReference(self::COMPANY_FIRST_LETTER_W, $companyFirstLetter);

        $companyFirstLetter = new CompanyFirstLetter();
        $companyFirstLetter->setLetter('X');
        $manager->persist($companyFirstLetter);
        $this->addReference(self::COMPANY_FIRST_LETTER_X, $companyFirstLetter);

        $companyFirstLetter = new CompanyFirstLetter();
        $companyFirstLetter->setLetter('Y');
        $manager->persist($companyFirstLetter);
        $this->addReference(self::COMPANY_FIRST_LETTER_Y, $companyFirstLetter);

        $companyFirstLetter = new CompanyFirstLetter();
        $companyFirstLetter->setLetter('Z');
        $manager->persist($companyFirstLetter);
        $this->addReference(self::COMPANY_FIRST_LETTER_Z, $companyFirstLetter);



        $manager->flush();
    }
}
