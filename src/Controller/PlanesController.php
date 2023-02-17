<?php

namespace App\Controller;

use App\Entity\Plane;
use App\Repository\PlanesCategoryRepository;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

#[Route('/planes', name: 'planes_')]
class PlanesController extends AbstractController
{
    // #[Route('/', name: 'index')]
    // public function index(PlanesCategoryRepository $planesCategoryRepository): Response
    // {
    //     return $this->render('planes/index.html.twig', [
    //         'categories' => $planesCategoryRepository->findAll(),
    //     ]);
    // }

    #[Route('/{slug}', name: 'show')]
    public function show(Plane $plane): Response
    {
        return $this->render('planes/show.html.twig', compact('plane'));
    }
}
