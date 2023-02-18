<?php

namespace App\Controller\Admin;

use DateTimeImmutable;
use App\Entity\Airport;
use InvalidArgumentException;
use Doctrine\ORM\EntityManagerInterface;
use FOS\CKEditorBundle\Form\Type\CKEditorType;
use EasyCorp\Bundle\EasyAdminBundle\Config\Crud;
use EasyCorp\Bundle\EasyAdminBundle\Field\IdField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextField;
use EasyCorp\Bundle\EasyAdminBundle\Field\ImageField;
use EasyCorp\Bundle\EasyAdminBundle\Field\DateTimeField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextEditorField;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractCrudController;

class AirportCrudController extends AbstractCrudController
{
    public const AIRPORTS_BASE_PATH = 'uploads/images/airports';
    public const AIRPORTS_UPLOAD_DIR = 'public/uploads/images/airports';

    public static function getEntityFqcn(): string
    {
        return Airport::class;
    }

    public function configureFields(string $pageName): iterable
    {
        return [
            IdField::new('id')->hideOnForm(),
            TextField::new('name'),
            TextEditorField::new('description')->setFormType(CKEditorType::class),
            ImageField::new('image')
            ->setBasePath(self::AIRPORTS_BASE_PATH)
            ->setUploadDir(self::AIRPORTS_UPLOAD_DIR)
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
        if (!$entityInstance instanceof Airport) {
            throw new InvalidArgumentException('Entity must be instance of ' . Airport::class);
        }
        $entityInstance->setCreatedAt(new DateTimeImmutable());
        
        parent::persistEntity($entityManager, $entityInstance);
    }

    public function updateEntity(EntityManagerInterface $entityManager, $entityInstance): void
    {
        if (!$entityInstance instanceof Airport) {
            throw new InvalidArgumentException('Entity must be instance of ' . Airport::class);
        }
        $entityInstance->setUpdatedAt(new DateTimeImmutable());
        
        parent::updateEntity($entityManager, $entityInstance);
    }
}
