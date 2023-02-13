<?php

namespace App\Repository;

use App\Entity\CompanyFirstLetter;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @extends ServiceEntityRepository<CompanyFirstLetter>
 *
 * @method CompanyFirstLetter|null find($id, $lockMode = null, $lockVersion = null)
 * @method CompanyFirstLetter|null findOneBy(array $criteria, array $orderBy = null)
 * @method CompanyFirstLetter[]    findAll()
 * @method CompanyFirstLetter[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class CompanyFirstLetterRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, CompanyFirstLetter::class);
    }

    public function save(CompanyFirstLetter $entity, bool $flush = false): void
    {
        $this->getEntityManager()->persist($entity);

        if ($flush) {
            $this->getEntityManager()->flush();
        }
    }

    public function remove(CompanyFirstLetter $entity, bool $flush = false): void
    {
        $this->getEntityManager()->remove($entity);

        if ($flush) {
            $this->getEntityManager()->flush();
        }
    }

//    /**
//     * @return CompanyFirstLetter[] Returns an array of CompanyFirstLetter objects
//     */
//    public function findByExampleField($value): array
//    {
//        return $this->createQueryBuilder('c')
//            ->andWhere('c.exampleField = :val')
//            ->setParameter('val', $value)
//            ->orderBy('c.id', 'ASC')
//            ->setMaxResults(10)
//            ->getQuery()
//            ->getResult()
//        ;
//    }

//    public function findOneBySomeField($value): ?CompanyFirstLetter
//    {
//        return $this->createQueryBuilder('c')
//            ->andWhere('c.exampleField = :val')
//            ->setParameter('val', $value)
//            ->getQuery()
//            ->getOneOrNullResult()
//        ;
//    }
}
