<?php

namespace App\Controller\Admin;

use App\Entity\Airport;
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

        yield MenuItem::linkToUrl('Accueil', 'fa fa-home', $this->generateUrl('app_main'));

        yield MenuItem::section('Appareils', 'fas fa-plane');

        yield MenuItem::subMenu('Actions', 'fas fa-screwdriver-wrench')->setSubItems([
            MenuItem::linkToCrud('Ajouter appareil', 'fas fa-plus', Plane::class)->setAction(Crud::PAGE_NEW),
            MenuItem::linkToCrud('Liste appareils', 'fas fa-eye', Plane::class)->setAction(Crud::PAGE_INDEX),
        ]);

        yield MenuItem::section('Catégories d\'appareils', 'fas fa-tags');

        yield MenuItem::subMenu('Actions', 'fas fa-screwdriver-wrench')->setSubItems([
            MenuItem::linkToCrud('Ajouter catégorie', 'fas fa-plus', PlanesCategory::class)->setAction(Crud::PAGE_NEW),
            MenuItem::linkToCrud('Voir categories', 'fas fa-eye', PlanesCategory::class)->setAction(Crud::PAGE_INDEX),
        ]);

        yield MenuItem::section('Compagnies aériennes', 'fas fa-building');

        yield MenuItem::subMenu('Actions', 'fas fa-screwdriver-wrench')->setSubItems([
            MenuItem::linkToCrud('Ajouter compagnie', 'fas fa-plus', Company::class)->setAction(Crud::PAGE_NEW),
            MenuItem::linkToCrud('Voir compagnies', 'fas fa-eye', Company::class)->setAction(Crud::PAGE_INDEX),
        ]);

        yield MenuItem::section('Aéroports', 'fas fa-plane-departure');

        yield MenuItem::subMenu('Actions', 'fas fa-screwdriver-wrench')->setSubItems([
            MenuItem::linkToCrud('Ajouter aéroport', 'fas fa-plus', Airport::class)->setAction(Crud::PAGE_NEW),
            MenuItem::linkToCrud('Voir aéroports', 'fas fa-eye', Airport::class)->setAction(Crud::PAGE_INDEX),
        ]);

    }
}
