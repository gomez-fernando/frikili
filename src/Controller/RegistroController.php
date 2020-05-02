<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;
use App\Entity\User;
use App\Form\UserType;
use Symfony\Component\HttpFoundation\Request;
// para securizar las contraseñas
use Symfony\Component\Security\Core\Encoder\UserPasswordEncoderInterface;

class RegistroController extends AbstractController
{
    /**
     * @Route("/registro", name="registro")
     */
    public function index(Request $request, UserPasswordEncoderInterface $passwordEncoder)
    {
        // creamos el formulario
        $user = new User();
        $form = $this->createForm(UserType::class, $user);
        $form->handleRequest($request);
        if ($form->isSubmitted() && $form->isValid()) {
            // securizar la contraseña
            $user->setPassword($passwordEncoder->encodePassword($user, $form['password']->getData()));

            // cargamos el entity manager
            $em = $this->getDoctrine()->getManager();
            $em->persist($user);
            $em->flush();
            // el mensaje flash no lee html, sólo texto plano
            $this->addFlash('exito', User::REGISTRO_EXITOSO);
            return $this->redirectToRoute('registro');
        }

        // pasamos el formulario a la vista
        return $this->render('registro/index.html.twig', [
            'controller_name' => 'RegistroController',
            'formulario' => $form->createView(),
        ]);
    }
}