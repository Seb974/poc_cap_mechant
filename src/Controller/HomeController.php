<?php

namespace App\Controller;

use App\Entity\Article;
use App\Repository\ArticleRepository;
use App\Repository\CategoryRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;

class HomeController extends AbstractController
{
    /**
     * @Route("/", name="home")
     */
    public function index(ArticleRepository $articleRepository, CategoryRepository $categoryRepository)
    {
        $articles = $articleRepository->findAll();
        $categories = $categoryRepository->findAll();

        return $this->render('home/index.html.twig', [
            'articles' => $articles,
            'categories' => $categories,
        ]);
    }

    /**
     * @Route("/guest", name="guest_home")
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
}
