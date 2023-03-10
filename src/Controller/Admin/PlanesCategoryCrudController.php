<?php

namespace App\Controller\Admin;

use DateTimeImmutable;
use InvalidArgumentException;
use App\Entity\PlanesCategory;
use Doctrine\ORM\EntityManagerInterface;
use FOS\CKEditorBundle\Form\Type\CKEditorType;
use EasyCorp\Bundle\EasyAdminBundle\Config\Crud;
use EasyCorp\Bundle\EasyAdminBundle\Field\IdField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextField;
use EasyCorp\Bundle\EasyAdminBundle\Field\ImageField;
use EasyCorp\Bundle\EasyAdminBundle\Field\BooleanField;
use EasyCorp\Bundle\EasyAdminBundle\Field\DateTimeField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextEditorField;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractCrudController;

class PlanesCategoryCrudController extends AbstractCrudController
{

    public const CATEGORIES_BASE_PATH = 'uploads/images/categories';
    public const CATEGORIES_UPLOAD_DIR = 'public/uploads/images/categories';

    public static function getEntityFqcn(): string
    {
        return PlanesCategory::class;
    }

    
    public function configureFields(string $pageName): iterable
    {
        return [
            IdField::new('id')->hideOnForm(),
            TextField::new('name'),
            TextEditorField::new('description')->setFormType(CKEditorType::class),
            ImageField::new('image')
            ->setBasePath(self::CATEGORIES_BASE_PATH)
            ->setUploadDir(self::CATEGORIES_UPLOAD_DIR)
            ->setUploadedFileNamePattern('[randomhash].[extension]')
            ->setRequired(false),
            ImageField::new('hero_img')
            ->setBasePath(self::CATEGORIES_BASE_PATH)
            ->setUploadDir(self::CATEGORIES_UPLOAD_DIR)
            ->setUploadedFileNamePattern('[randomhash].[extension]')
            ->setRequired(false),
            BooleanField::new('active'),
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
