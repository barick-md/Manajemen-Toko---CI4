<?php

use CodeIgniter\Router\RouteCollection;

/**
 * @var RouteCollection $routes
 */

$routes->get('/', 'Home::index', ['filter' => 'auth']);

$routes->get('login', 'AuthController::login');
$routes->post('login', 'AuthController::login', ['filter' => 'redirect']);
$routes->get('logout', 'AuthController::logout');

$routes->group('produk',['filter'=>'auth'],function($routes)
{
    $routes->get('', 'Produk::index');
    $routes->post('', 'Produk::create');
    $routes->post('edit/(:any)', 'Produk::edit/$1');
    $routes->get('delete/(:any)', 'Produk::delete/$1');
    $routes->get('download', 'Produk::download');
});

$routes->group('keranjang', ['filter' => 'auth'], function ($routes) {
    $routes->get('', 'Keranjang::index');
    $routes->post('', 'Keranjang::cart_add');
    $routes->post('edit', 'Keranjang::cart_edit');
    $routes->get('delete/(:any)', 'Keranjang::cart_delete/$1');
    $routes->get('clear', 'Keranjang::cart_clear');
});

$routes->get('profile', 'Profile::index', ['filter' => 'auth']);