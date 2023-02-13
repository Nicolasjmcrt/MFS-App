<?php

namespace App\Controller;

use App\Entity\Plane;
use App\Entity\PlanesCategory;
use App\Repository\PlanesCategoryRepository;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

#[Route('/category', name: 'category_')]
class PlanesCategoryController extends AbstractController
{
    #[Route('/', name: 'index')]
    public function index(PlanesCategoryRepository $planesCategoryRepository): Response
    {
        return $this->render('planes_category/index.html.twig', [
            'categories' => $planesCategoryRepository->findAll(),
        ]);
    }

    #[Route('/{id}', name: 'list')]
    public function show(PlanesCategory $category): Response
    {
        // On récupère les appareils de la catégorie
        $planes = $category->getPlanes();

        return $this->render('planes_category/list.html.twig', [
            'planes' => $planes,
            'category' => $category
        ]);
    }
}
