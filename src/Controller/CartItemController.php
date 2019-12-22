<?php

namespace App\Controller;

use App\Entity\CartItem;
use App\Form\CartItemType;
use App\Repository\CartItemRepository;
use App\Repository\ArticleRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\Routing\Annotation\Route;

/**
 * @Route("/cart/item")
 */
class CartItemController extends AbstractController
{
    /**
     * @Route("/", name="cart_item_index", methods={"GET"})
     */
    public function index(CartItemRepository $cartItemRepository): Response
    {
        return $this->render('cart_item/index.html.twig', [
            'cart_items' => $cartItemRepository->findBy(['client' => $this->getUser(), 'status' => "To send"])
        ]);
    }

    /**
     * @Route("/new", name="cart_item_new", methods={"GET","POST"})
     */
    public function new(Request $request, ArticleRepository $articleRepository): Response
    {

        if (0 === strpos($request->headers->get('Content-Type'), 'application/json')) {
            $data = json_decode($request->getContent(), true);
            $request->request->replace(is_array($data) ? $data : array());
        }
        $quantity = $request->request->get('quantity');
        $article = $articleRepository->find($request->request->get('article'));
        $cartItem = new CartItem();
        $cartItem->setArticle($article);
        $cartItem->setQuantity($quantity);
        $cartItem->setClient($this->getUser());
        $cartItem->setStatus("To send");
        $entityManager = $this->getDoctrine()->getManager();
        $entityManager->persist($cartItem);
        $entityManager->flush();

        return new JsonResponse(['status' => 'OK']);
    }

    /**
     * @Route("/{id}", name="cart_item_show", methods={"GET"})
     */
    public function show(CartItem $cartItem): Response
    {
        return $this->render('cart_item/show.html.twig', [
            'cart_item' => $cartItem,
        ]);
    }

    /**
     * @Route("/{id}/edit", name="cart_item_edit", methods={"GET","POST"})
     */
    public function edit(Request $request, CartItem $cartItem): Response
    {
        $form = $this->createForm(CartItemType::class, $cartItem);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            return $this->redirectToRoute('cart_item_index');
        }

        return $this->render('cart_item/edit.html.twig', [
            'cart_item' => $cartItem,
            'form' => $form->createView(),
        ]);
    }

    /**
     * @Route("/{id}", name="cart_item_delete", methods={"DELETE"})
     */
    public function delete(Request $request, CartItem $cartItem): Response
    {
        if ($this->isCsrfTokenValid('delete'.$cartItem->getId(), $request->request->get('_token'))) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->remove($cartItem);
            $entityManager->flush();
        }

        return $this->redirectToRoute('cart_item_index');
    }
}
