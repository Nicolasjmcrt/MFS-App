<?php

namespace App\Controller;

use App\Entity\Plane;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

#[Route('/planes', name: 'planes_')]
class PlanesController extends AbstractController
{
    #[Route('/', name: 'index')]
    public function index(): Response
    {
        return $this->render('planes/index.html.twig', [
            'controller_name' => 'PlanesController',
        ]);
    }

    #[Route('/{id}', name: 'show')]
    public function show(Plane $plane, $id): Response
    {
        return $this->render('planes/show.html.twig', compact('plane'));
    }
}
