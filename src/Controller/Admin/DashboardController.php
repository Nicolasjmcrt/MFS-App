<?php

namespace App\Controller\Admin;

use App\Entity\Plane;
use App\Entity\Company;
use App\Entity\PlanesCategory;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use EasyCorp\Bundle\EasyAdminBundle\Config\Crud;
use EasyCorp\Bundle\EasyAdminBundle\Config\MenuItem;
use EasyCorp\Bundle\EasyAdminBundle\Config\Dashboard;
use EasyCorp\Bundle\EasyAdminBundle\Router\AdminUrlGenerator;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractDashboardController;

class DashboardController extends AbstractDashboardController
{
    public function __construct(private AdminUrlGenerator $adminUrlGenerator)
    {
    }

    #[Route('/admin', name: 'admin')]
    public function index(): Response
    {
        $url = $this->adminUrlGenerator
            ->setController(PlaneCrudController::class)
            ->generateUrl();

        return $this->redirect($url);
    }

    public function configureDashboard(): Dashboard
    {
        return Dashboard::new()
            ->setTitle('MFS-App');
    }

    public function configureMenuItems(): iterable
    {
        yield MenuItem::section('Planes', 'fas fa-plane');

        yield MenuItem::subMenu('Actions', 'fas fa-screwdriver-wrench')->setSubItems([
            MenuItem::linkToCrud('Create plane', 'fas fa-plus', Plane::class)->setAction(Crud::PAGE_NEW),
            MenuItem::linkToCrud('Show Planes', 'fas fa-eye', Plane::class)->setAction(Crud::PAGE_INDEX),
        ]);

        yield MenuItem::section('Categories', 'fas fa-warehouse');

        yield MenuItem::subMenu('Actions', 'fas fa-screwdriver-wrench')->setSubItems([
            MenuItem::linkToCrud('Create Category', 'fas fa-plus', PlanesCategory::class)->setAction(Crud::PAGE_NEW),
            MenuItem::linkToCrud('Show Categories', 'fas fa-eye', PlanesCategory::class)->setAction(Crud::PAGE_INDEX),
        ]);

        yield MenuItem::section('Companies', 'fas fa-buildings');

        yield MenuItem::subMenu('Actions', 'fas fa-screwdriver-wrench')->setSubItems([
            MenuItem::linkToCrud('Create Company', 'fas fa-plus', Company::class)->setAction(Crud::PAGE_NEW),
            MenuItem::linkToCrud('Show Companies', 'fas fa-eye', Company::class)->setAction(Crud::PAGE_INDEX),
        ]);

    }
}
