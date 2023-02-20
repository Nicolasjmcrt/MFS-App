<?php

namespace App\DataFixtures;

use App\Entity\User;
use DateTimeImmutable;
use Doctrine\Persistence\ObjectManager;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Symfony\Component\PasswordHasher\Hasher\UserPasswordHasherInterface;

class UsersFixtures extends Fixture
{

    public function __construct(
        private UserPasswordHasherInterface $passwordEncoder,
    ){}

    public function load(ObjectManager $manager): void
    {
        $admin = new User();
        $admin->setEmail('jumeaucourtn@gmail.com');
        $admin->setRoles(['ROLE_ADMIN']);
        $admin->setPassword(
            $this->passwordEncoder->hashPassword(
                $admin,
                'MyPassword'
            )
        );
        $admin->setCreatedAt(new DateTimeImmutable());
        $admin->setFirstname('Nicolas');
        $admin->setLastname('Jumeaucourt');
        $admin->setIsVerified(true);

        $manager->persist($admin);

        $user = new User();
        $user->setEmail('jumeaucourtmx@gmail.com');
        $user->setRoles(['ROLE_USER']);
        $user->setPassword(
            $this->passwordEncoder->hashPassword(
                $user,
                'MyPassword'
            )
            );
        $user->setCreatedAt(new \DateTimeImmutable());
        $user->setFirstname('Maxime');
        $user->setLastname('Jumeaucourt');
        $user->setIsVerified(true);

        $manager->persist($user);

        $manager->flush();
    }
}
