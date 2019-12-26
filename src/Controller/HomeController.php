<?php

namespace App\Controller;

use App\Entity\Article;
use App\Repository\ArticleRepository;
use App\Repository\CategoryRepository;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Security;

class HomeController extends AbstractController
{
    /**
     * @Route("/", name="home")
     */
    public function index(ArticleRepository $articleRepository, CategoryRepository $categoryRepository)
    {
        $user = $this->getUser();
        if(in_array("ROLE_GUEST", $user->getRoles())) {
            return $this->redirectToRoute('guest_home');
        } else {
            return $this->redirectToRoute('user_home');
        }
    }

    /**
     * @Route("/guest", name="guest_home")
     * @Security("is_granted('ROLE_GUEST')")
     */
    public function guestIndex(ArticleRepository $articleRepository, CategoryRepository $categoryRepository)
    {
        $categoryNameToHide = "Produits d'entretien - consommables";
        $consommables = $categoryRepository->findOneBy(["name" => $categoryNameToHide]);
        $categories = $categoryRepository->findCategoriesWithout($categoryNameToHide);
        $articles = $articleRepository->findFromCategoriesWithout($consommables);

        return $this->render('home/guest.html.twig', [
            'articles' => $articles,
            'categories' => $categories,
        ]);
    }

    /**
     * @Route("/user", name="user_home")
     * @Security("is_granted('ROLE_USER')")
     */
    public function userIndex(ArticleRepository $articleRepository, CategoryRepository $categoryRepository)
    {
        $articles = $articleRepository->findAll();
        $categories = $categoryRepository->findAll();

        return $this->render('home/index.html.twig', [
            'articles' => $articles,
            'categories' => $categories,
        ]);
    }
}
