<?php

namespace App\Controller;

use App\Entity\User;
use App\Service\JWTService;
use App\Service\SendMailService;
use App\Form\RegistrationFormType;
use App\Repository\UserRepository;
use App\Security\UserAuthenticator;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\PasswordHasher\Hasher\UserPasswordHasherInterface;
use Symfony\Component\Security\Http\Authentication\UserAuthenticatorInterface;

class RegistrationController extends AbstractController
{
    #[Route('/register', name: 'app_register')]
    public function register(Request $request, UserPasswordHasherInterface $userPasswordHasher, UserAuthenticatorInterface $userAuthenticator, UserAuthenticator $authenticator, EntityManagerInterface $entityManager, SendMailService $mail, JWTService $jwt): Response
    {
        $user = new User();
        $form = $this->createForm(RegistrationFormType::class, $user);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            // encode the plain password
            $user->setPassword(
                $userPasswordHasher->hashPassword(
                    $user,
                    $form->get('plainPassword')->getData()
                )
            );

            $entityManager->persist($user);
            $entityManager->flush();
            // do anything else you need here, like send an email

            // On génère le JWT de l'utilisateur
            // On créé le header
            $header = [
                'alg' => 'HS256',
                'typ' => 'JWT'
            ];
            // On créé le payload
            $payload = [
                'id' => $user->getId(), 
            ];

            // On génère le token
            $token = $jwt->generate($header, $payload, $this->getParameter('app.jwtsecret')); 
                        

            $mail->send(
                'no-reply@mfs-app.net',
                $user->getEmail(),
                'Activation de votre compte sur MFS App',
                'register',
                compact('user', 'token')
            );

            return $userAuthenticator->authenticateUser(
                $user,
                $authenticator,
                $request
            );
        }

        return $this->render('registration/register.html.twig', [
            'registrationForm' => $form->createView(),
        ]);
    }

    #[Route('/verify/{token}', name: 'verify_user')]
    public function verifyUser($token, JWTService $jwt, UserRepository $userRepository, EntityManagerInterface $em): Response
    {
        // On vérifie si le token est valide, n'a pas expiré et qu'il correspond à un utilisateur

        if($jwt->isValid($token) && !$jwt->isExpired($token) && $jwt->check($token, $this->getParameter('app.jwtsecret')))
        {
            // On reécupère le payload du token
            $payload = $jwt->getPayload($token);

            // On récupère l'utilisateur

            $user = $userRepository->find($payload['id']);

            // On vérifie que l'utilisateur existe et qu'il n'est pas déjà activé

            if ($user && !$user->getIsVerified()) {
                $user->setIsVerified(true);
                $em->flush($user);

                $this->addFlash('success', 'Votre compte a bien été activé !');

                return $this->redirectToRoute('profile_index');
            }
        }
 
        // Ici un problème se pose avec le token

        $this->addFlash('danger', 'Le token est invalide ou a expiré !');

        return $this->redirectToRoute('app_login');
    }

    #[Route('/renvoi-verif', name: 'resend_verif')]
    public function resendVerif(UserRepository $userRepository, SendMailService $mail, JWTService $jwt): Response
    {
        $user = $this->getUser();

        if (!$user) {
            $this->addFlash('danger', 'Vous devez être connecté pour accéder à cette page !');
            return $this->redirectToRoute('app_login');
        }

        if ($user->getIsVerified()) {
            $this->addFlash('warning', 'Votre compte est déjà activé !');
            return $this->redirectToRoute('profile_index');
        }

        $header = [
            'alg' => 'HS256',
            'typ' => 'JWT',
        ];

        $payload = [
            'id' => $user->getId(),
        ];

        $token = $jwt->generate($header, $payload, $this->getParameter('app.jwtsecret'));

        $mail->send(
            'no-reply@mfs-app.net',
            $user->getEmail(),
            'Confirmation de votre inscription sur le site MFS App',
            'register',
            [
                'user' => $user,
                'token' => $token,
            ]
        );
        $this->addFlash('success', 'Email de vérification envoyé');
            return $this->redirectToRoute('profile_index');

    }
}
