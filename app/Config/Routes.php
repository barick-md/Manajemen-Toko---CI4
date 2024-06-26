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
});
//$routes->get('produk', 'Produk::index', ['filter' => 'auth']);

$routes->get('keranjang', 'Keranjang::index', ['filter' => 'auth']);

$routes->get('profile', 'Profile::index', ['filter' => 'auth']);