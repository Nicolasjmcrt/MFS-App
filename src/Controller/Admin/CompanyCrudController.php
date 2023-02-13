<?php

namespace App\Controller\Admin;

use DateTimeImmutable;
use App\Entity\Company;
use InvalidArgumentException;
use Doctrine\ORM\EntityManagerInterface;
use EasyCorp\Bundle\EasyAdminBundle\Field\IdField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextField;
use EasyCorp\Bundle\EasyAdminBundle\Field\ImageField;
use EasyCorp\Bundle\EasyAdminBundle\Field\DateTimeField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextEditorField;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractCrudController;
use EasyCorp\Bundle\EasyAdminBundle\Field\AssociationField;

class CompanyCrudController extends AbstractCrudController
{

    public const COMPANIES_BASE_PATH = 'uploads/images/companies';
    public const COMPANIES_UPLOAD_DIR = 'public/uploads/images/companies';

    public static function getEntityFqcn(): string
    {
        return Company::class;
    }

    
    public function configureFields(string $pageName): iterable
    {
        return [
            IdField::new('id')->hideOnForm(),
            TextField::new('name'),
            TextField::new('code'),
            TextEditorField::new('description'),
            AssociationField::new('first_letter'),
            ImageField::new('image')
            ->setBasePath(self::COMPANIES_BASE_PATH)
            ->setUploadDir(self::COMPANIES_UPLOAD_DIR)
            ->setUploadedFileNamePattern('[randomhash].[extension]')
            ->setRequired(false),
            ImageField::new('logo')
            ->setBasePath(self::COMPANIES_BASE_PATH)
            ->setUploadDir(self::COMPANIES_UPLOAD_DIR)
            ->setUploadedFileNamePattern('[randomhash].[extension]')
            ->setRequired(false),
            DateTimeField::new('createdAt')->hideOnForm(),
            DateTimeField::new('updatedAt')->hideOnForm(),
        ];
    }

    public function persistEntity(EntityManagerInterface $entityManager, $entityInstance): void
    {
        if (!$entityInstance instanceof Company) {
            throw new InvalidArgumentException('Entity must be instance of ' . Company::class);
        }
        $entityInstance->setCreatedAt(new DateTimeImmutable());
        
        parent::persistEntity($entityManager, $entityInstance);
    }

    public function updateEntity(EntityManagerInterface $entityManager, $entityInstance): void
    {
        if (!$entityInstance instanceof Company) {
            throw new InvalidArgumentException('Entity must be instance of ' . Company::class);
        }
        $entityInstance->setUpdatedAt(new DateTimeImmutable());
        
        parent::updateEntity($entityManager, $entityInstance);
    }
    
}
