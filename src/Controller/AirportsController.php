<?php

namespace App\Controller;

use App\Entity\Airport;
use App\Repository\AirportRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

#[Route('/airports', name: 'airports_')]
class AirportsController extends AbstractController
{
    #[Route('/', name: 'index')]
    public function index(AirportRepository $airportRepository): Response
    {
        return $this->render('airports/index.html.twig', [
            'airports' => $airportRepository->findAll(),
        ]);
    }

    #[Route('/{id}', name: 'show')]
    public function show(Airport $airport): Response
    {
        return $this->render('airports/show.html.twig', compact('airport'));
    }
}
