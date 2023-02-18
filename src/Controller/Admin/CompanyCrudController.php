<?php

namespace App\Controller\Admin;

use DateTimeImmutable;
use App\Entity\Company;
use InvalidArgumentException;
use Doctrine\ORM\EntityManagerInterface;
use FOS\CKEditorBundle\Form\Type\CKEditorType;
use EasyCorp\Bundle\EasyAdminBundle\Config\Crud;
use EasyCorp\Bundle\EasyAdminBundle\Field\IdField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextField;
use EasyCorp\Bundle\EasyAdminBundle\Field\ImageField;
use EasyCorp\Bundle\EasyAdminBundle\Field\DateTimeField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextEditorField;
use EasyCorp\Bundle\EasyAdminBundle\Field\AssociationField;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractCrudController;

class CompanyCrudController extends AbstractCrudController
{

    // Définir les constantes pour les chemins d'accès aux images
    public const COMPANIES_BASE_PATH = 'uploads/images/companies';
    public const COMPANIES_UPLOAD_DIR = 'public/uploads/images/companies';

    
    public static function getEntityFqcn(): string
    {
        return Company::class;
    }

    // Définir les champs à afficher dans le formulaire d'ajout et de modification
    public function configureFields(string $pageName): iterable
    {
        return [
            IdField::new('id')->hideOnForm(),
            TextField::new('name'),
            TextField::new('slug'),
            TextField::new('code'),
            TextEditorField::new('description')->setFormType(CKEditorType::class),
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

    public function configureCrud(Crud $crud): Crud
    {
        return $crud
            ->addFormTheme('@FOSCKEditor/Form/ckeditor_widget.html.twig');
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
