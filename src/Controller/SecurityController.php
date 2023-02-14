<?php

namespace App\Controller;


use App\Service\SendMailService;
use App\Repository\UserRepository;
use App\Form\ResetPasswordFormType;
use Doctrine\ORM\EntityManagerInterface;
use App\Form\ResetPasswordRequestFormType;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\Routing\Generator\UrlGeneratorInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Security\Http\Authentication\AuthenticationUtils;
use Symfony\Component\PasswordHasher\Hasher\UserPasswordHasherInterface;
use Symfony\Component\Security\Csrf\TokenGenerator\TokenGeneratorInterface;

class SecurityController extends AbstractController
{
    #[Route(path: '/login', name: 'app_login')]
    public function login(AuthenticationUtils $authenticationUtils): Response
    {
        // if ($this->getUser()) {
        //     return $this->redirectToRoute('target_path');
        // }

        // get the login error if there is one
        $error = $authenticationUtils->getLastAuthenticationError();
        // last username entered by the user
        $lastUsername = $authenticationUtils->getLastUsername();

        return $this->render('security/login.html.twig', ['last_username' => $lastUsername, 'error' => $error]);
    }

    #[Route(path: '/logout', name: 'app_logout')]
    public function logout(): void
    {
        throw new \LogicException('This method can be blank - it will be intercepted by the logout key on your firewall.');
    }

    #[Route(path: '/forgotten-password', name: 'forgotten_password')]
    public function forgottenPassword(
        Request $request,
        UserRepository $userRepository,
        TokenGeneratorInterface $tokenGenerator,
        EntityManagerInterface $entityManager,
        SendMailService $mail
        ): Response
    {
        $form = $this->createForm(ResetPasswordRequestFormType::class);

        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            // On va chercher l'utilisateur en BDD
            $user = $userRepository->findOneByEmail($form->getData()['email']);

            // On vérifie si l'utilisateur existe
            if ($user) {
                // On génère un token de réinitialisation
                $token = $tokenGenerator->generateToken();
                $user->setResetToken($token);
                $entityManager->persist($user);
                $entityManager->flush();

                // On génère l'URL de réinitialisation de mot de passe
                $url = $this->generateUrl('reset_password', ['token' => $token], UrlGeneratorInterface::ABSOLUTE_URL);

                // On créé les données du mail
                $context = compact('user', 'url');

                // On envoie le mail
                $mail->send(
                    'no-reply@mfs-app.net',
                    $user->getEmail(),
                    'Réinitialisation de votre mot de passe',
                    'password_reset',
                    $context
                );

                $this->addFlash('success', 'Un e-mail de réinitialisation de mot de passe vous a été envoyé !');

                return $this->redirectToRoute('app_login');

                
            }
            $this->addFlash('danger', 'Un problème est survenu, veuillez réessayer !');
            return $this->redirectToRoute('app_login');

        }
        
        return $this->render('security/reset_password_request.html.twig', [
            'requestPassForm' => $form->createView()
        ]);
    }

    #[Route(path: '/reset-password/{token}', name: 'reset_password')]
    public function resetPassword(
        Request $request,
        string $token,
        UserRepository $userRepository,
        EntityManagerInterface $entityManager,
        UserPasswordHasherInterface $passwordHasher
    ): Response
    {
        // On vérifie si le token est valide
        $user = $userRepository->findOneByResetToken($token);

        if ($user) {
            $form = $this->createForm(ResetPasswordFormType::class);

            $form->handleRequest($request);

            if ($form->isSubmitted() && $form->isValid()) {
                
                // On réinitialise le token
                $user->setResetToken(null);

                // On encode le mot de passe
                $user->setPassword($passwordHasher->hashPassword($user, $form->getData()['password']));

                $entityManager->persist($user);
                $entityManager->flush();

                $this->addFlash('success', 'Votre mot de passe a bien été modifié !');

                return $this->redirectToRoute('app_login');
            }


            
            return $this->render('security/reset_password.html.twig', [
                'PassForm' => $form->createView()
            ]);
        }
        $this->addFlash('danger', 'Token Inconnu');
        return $this->redirectToRoute('app_login');
    }
}
