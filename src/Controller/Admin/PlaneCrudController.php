<?php

namespace App\Controller\Admin;

use App\Entity\Plane;
use Doctrine\ORM\QueryBuilder;
use Doctrine\ORM\EntityManagerInterface;
use FOS\CKEditorBundle\Form\Type\CKEditorType;
use Symfony\Component\HttpFoundation\Response;
use EasyCorp\Bundle\EasyAdminBundle\Config\Crud;
use EasyCorp\Bundle\EasyAdminBundle\Config\Action;
use EasyCorp\Bundle\EasyAdminBundle\Field\IdField;
use EasyCorp\Bundle\EasyAdminBundle\Config\Actions;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextField;
use EasyCorp\Bundle\EasyAdminBundle\Field\ImageField;
use EasyCorp\Bundle\EasyAdminBundle\Field\IntegerField;
use EasyCorp\Bundle\EasyAdminBundle\Field\DateTimeField;
use EasyCorp\Bundle\EasyAdminBundle\Context\AdminContext;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextEditorField;
use EasyCorp\Bundle\EasyAdminBundle\Field\AssociationField;
use EasyCorp\Bundle\EasyAdminBundle\Router\AdminUrlGenerator;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractCrudController;

class PlaneCrudController extends AbstractCrudController
{
    public const ACTION_DUPLICATE = 'duplicate';
    public const PLANES_BASE_PATH = 'uploads/images/planes';
    public const PLANES_UPLOAD_DIR = 'public/uploads/images/planes';

    public static function getEntityFqcn(): string
    {
        return Plane::class;
    }

    public function configureActions(Actions $actions): Actions
    {
        $duplicate = Action::new(self::ACTION_DUPLICATE, 'Duplicate', 'fas fa-copy')
            ->linkToCrudAction('duplicatePlane')
            ->setCssClass('btn btn-info');

        return $actions
            ->add(Crud::PAGE_EDIT, $duplicate)
            ->reorder(Crud::PAGE_EDIT, [self::ACTION_DUPLICATE, Action::SAVE_AND_RETURN]);
    }

    
    public function configureFields(string $pageName): iterable
    {
        return [
            IdField::new('id')->hideOnForm(),
            TextField::new('name'),
            TextField::new('slug'),
            TextEditorField::new('description')->setFormType(CKEditorType::class),
            ImageField::new('image')
                ->setBasePath(self::PLANES_BASE_PATH)
                ->setUploadDir(self::PLANES_UPLOAD_DIR)->setUploadedFileNamePattern('[randomhash].[extension]')->setRequired(false),
            DateTimeField::new('createdAt')->hideOnForm(),
            DateTimeField::new('updatedAt')->hideOnForm(),
            AssociationField::new('category')->setQueryBuilder(function(QueryBuilder $queryBuilder) {
                $queryBuilder->where('entity.active = true');
            }),
            IntegerField::new('maxSpeed'),
            IntegerField::new('cruisingSpeed'),
            TextField::new('engine'),
            IntegerField::new('maxElevation'),
            IntegerField::new('emptyWeight'),
            IntegerField::new('maxWeight'),
            IntegerField::new('rangeOfAction'),
            IntegerField::new('fuelCapacity'),
            IntegerField::new('length'),
            IntegerField::new('wingspan'),
        ];

    }
    
    public function configureCrud(Crud $crud): Crud
    {
        return $crud
            ->addFormTheme('@FOSCKEditor/Form/ckeditor_widget.html.twig');
    }

    /*
    public function persistEntity(EntityManagerInterface $entityManager, $entityInstance): void
    {
        if (!$entityInstance instanceof Plane) {
            throw new InvalidArgumentException('Entity must be instance of ' . Plane::class);
        }
        $entityInstance->setCreatedAt(new DateTimeImmutable());
        
        parent::persistEntity($entityManager, $entityInstance);
    }

    public function updateEntity(EntityManagerInterface $entityManager, $entityInstance): void
    {
        if (!$entityInstance instanceof Plane) {
            throw new InvalidArgumentException('Entity must be instance of ' . Plane::class);
        }
        $entityInstance->setUpdatedAt(new DateTimeImmutable());
        
        parent::updateEntity($entityManager, $entityInstance);
    }
    */
    
    public function duplicatePlane(AdminContext $context, EntityManagerInterface $em, AdminUrlGenerator $adminUrlGenerator): Response
    {
        /** @var Plane $plane */
        $plane = $context->getEntity()->getInstance();

        $duplicatedPlane = clone $plane;

        parent::persistEntity($em, $duplicatedPlane);

        $this->addFlash('success', 'Plane duplicated successfully');

        $url = $adminUrlGenerator
            ->setController(self::class)
            ->setAction(Action::DETAIL)
            ->setEntityId($duplicatedPlane->getId())
            ->generateUrl();

        return $this->redirect($url);
    }
}
