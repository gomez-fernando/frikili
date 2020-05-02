<?php

namespace App\Controller;

use App\Entity\Comentarios;
use App\Entity\Posts;
use Knp\Component\Pager\PaginatorInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;

class DashboardController extends AbstractController
{
    /**
     * @Route("/", name="home")
     */
    public function home()
    {
        return $this->redirectToRoute('dashboard');
    }

    /**
     * @Route("/dashboard", name="dashboard")
     */
    public function index(Request $request, PaginatorInterface $paginator)
    {
        $user = $this->getUser(); //OBTENGO AL USUARIO ACTUALMENTE LOGUEADO
        if ($user) {
            $em = $this->getDoctrine()->getManager();
            $query = $em->getRepository(Posts::class)->BuscarTodosLosPosts();
            $comentarios = $em->getRepository(Comentarios::class)->buscarComentarios($user->getId()); // Consulto los comentarios con el ID del usuario actualmente logueado
            $pagination = $paginator->paginate(
                $query, /* query NOT result */
                $request->query->getInt('page', 1), /*page number*/
                5 /*limit per page*/
            );
            return $this->render('dashboard/index.html.twig', [
                'pagination' => $pagination,
                'comentarios'=>$comentarios
            ]);
        } else {
            return $this->redirectToRoute('app_login');
        }

        // $em = $this->getDoctrine()->getManager();
        // $query = $em->getRepository(Posts::class)->buscarTodosLosPosts();

        // $pagination = $paginator->paginate(
        //     $query, /* query NOT result */
        //     $request->query->getInt('page', 1), /*page number*/
        //     2 /*limit per page*/
        // );

        // return $this->render('dashboard/index.html.twig', [
        //     'pagination' => $pagination
        // ]);
    }
}