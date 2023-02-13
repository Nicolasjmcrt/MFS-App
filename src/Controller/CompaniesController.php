<?php

namespace App\Controller;

use App\Entity\Company;
use App\Repository\CompanyRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;


#[Route('/companies', name: 'companies_')]
class CompaniesController extends AbstractController
{
    #[Route('/', name: 'index')]
    public function index(CompanyRepository $companyRepository): Response
    {
        return $this->render('companies/index.html.twig', [
            'companies' => $companyRepository->findBy([], ['name' => 'ASC'])
        ]);
    }

    #[Route('/{id}', name: 'show')]
    public function show(Company $company): Response
    {
        return $this->render('companies/show.html.twig', compact('company'));
    }
}
