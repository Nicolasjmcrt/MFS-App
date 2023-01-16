<?php

namespace App\Controller\Admin;

use DateTimeImmutable;
use InvalidArgumentException;
use App\Entity\PlanesCategory;
use Doctrine\ORM\EntityManagerInterface;
use EasyCorp\Bundle\EasyAdminBundle\Field\IdField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextField;
use EasyCorp\Bundle\EasyAdminBundle\Field\BooleanField;
use EasyCorp\Bundle\EasyAdminBundle\Field\DateTimeField;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractCrudController;

class PlanesCategoryCrudController extends AbstractCrudController
{
    public static function getEntityFqcn(): string
    {
        return PlanesCategory::class;
    }

    
    public function configureFields(string $pageName): iterable
    {
        return [
            IdField::new('id')->hideOnForm(),
            TextField::new('name'),
            BooleanField::new('active'),
            DateTimeField::new('createdAt')->hideOnForm(),
            DateTimeField::new('updatedAt')->hideOnForm(),
        ];
    }
    
    public function persistEntity(EntityManagerInterface $entityManager, $entityInstance): void
    {
        if (!$entityInstance instanceof PlanesCategory) {
            throw new InvalidArgumentException('Entity must be instance of ' . PlanesCategory::class);
        }
        $entityInstance->setCreatedAt(new DateTimeImmutable());
        
        parent::persistEntity($entityManager, $entityInstance);
    }

    public function deleteEntity(EntityManagerInterface $entityManager, $entityInstance): void
    {
        if (!$entityInstance instanceof PlanesCategory) return;

        foreach ($entityInstance->getPlanes() as $plane) {
            $entityManager->remove($plane);
        }

        parent::deleteEntity($entityManager, $entityInstance);
    }
}
