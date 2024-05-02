<?php
//mandatory includes for all pages
include "sessionManager.php";
include 'user_service.php';
include 'header.php';
include 'menu.php';
include 'footer.php';
include 'beginDocument.php';
include 'endDocument.php';
//include 'db.php';

session_start(); //start session

//functions
function showContent($data) {
  $page = $data['page'];
  switch($page)
  {
    case 'Home';
      include_once "views/HomeDoc.php";
      $view = new HomeDoc($data);
      $view -> show($data);
      break;
    case 'About';
      include_once "views/AboutDoc.php";
      $view = new AboutDoc($data);
      $view -> show($data);
      break;
    case 'Contact';
      include_once "views/ContactDoc.php";
      $view = new ContactDoc($data);
      $view -> show($data);
      break;
    case 'ThankyouForm';
      include_once "views/ThankYouDoc.php";
      $view = new ThankYouDoc($data);
      $view -> show($data);
      break;
    case 'Register';
      include_once "views/RegisterDoc.php";
      $view = new RegisterDoc($data);
      $view -> show($data);
      break;
    case 'Login';
    include_once "views/LoginDoc.php";
      $view = new LoginDoc($data);
      $view -> show($data);
      break;
    case 'ChangePassword';
      include_once "views/ChangePasswordDoc.php";
      $view = new ChangePasswordDoc($data);
      $view -> show($data);
      break;
    case 'Webshop';
      include_once "views/WebshopDoc.php";
      $view = new WebshopDoc($data);
      $view -> show($data);
      break;
    case 'Product';
      include_once "views/DetailDoc.php";
      $view = new DetailDoc($data);
      $view -> show($data);
      break;
    case 'ShoppingCart';
      include_once "views/CartDoc.php";
      $view = new CartDoc($data);
      $view -> show($data);
      break;
    case 'ThankyouOrder';
      include_once "views/ThankYou.php";
      $view = new ThankYouDoc($data);
      $view -> show($data);
      break;
    default; 
      include_once "views/HomeDoc.php";
      $view = new HomeDoc($data);
      $view -> show($data);
  }
}

function getRequestedPage() {
  $page = 'Home';

  // Check for page in POST data if request method is POST
  if ($_SERVER['REQUEST_METHOD'] === 'POST') {

    if (isset($_POST['page'])) {
  
      $page = $_POST['page'];
      // Check if the requested page is Contact and perform validation
    }
  
  } else {
    // Fallback to GET if no page found in POST
    if (!isset($_GET['page'])) {
      $page = 'Home';
    } else {
      $page = $_GET['page'];
    }
  }
  return $page;
}

//TODO this probably shouldn't be here
function getWebshopProducts() {
  include_once 'db.php';
  $products = getAllProducts();
  echo is_null($products);
  return ['products' => $products];
}

//TODO this probably shouldn't be here
function handleCartActions() {
  if (isset($_POST['action'])) {
    $action = $_POST['action'];
  } else {
    // Handle the case where 'action' is not set (optional)
    $action = "";  // Or set a default value
  }
  switch ($action)
  {
    case 'addToShoppingCart';
      $id = $_POST['id'];
      addToShoppingCart($id);
      break;
    case 'removeFromShoppingCart';
      $id = $_POST['id'];
      removeFromShoppingCart($id);
      break;
    case 'submitShoppingCart'; 
      placeOrder();
      deleteShoppingCart();//TODO maybe make seperate function for emptying thhe shopping cart and completely unsetting it for logging out
      makeShoppingCart();
      break;
  }
  return $action;
}

//handlecartactions functie maken
function processRequest($page) {
  switch($page)
	{
    case 'Webshop';
      include 'webshop.php';
      $data = getWebshopProducts();//get potential error message
      $action = handleCartActions();
      //var_dump($data);
      break;
    case 'Product';
      include 'product.php';
      $data = getWebshopProducts();//get potential error message
      //handleCartActions();
      break;
    case 'ShoppingCart';
      include 'shoppingCart.php';
      $data = getWebshopProducts();
      $action = handleCartActions();
      if ($action == 'submitShoppingCart') {
        $page = 'ThankyouOrder';
      }
      break;
		case 'Contact';
      include 'contact.php';
      $data = validateForm();
      if ($data['valid']) {
        //TODO send email to myself?
        $page = 'ThankyouForm';
      }
      break;
    case 'Register';
      include 'register.php';
      $data = validateRegistration();
      if ($data['valid']) {
        $page = 'Home';
        storeUser($data['email'], $data['name'], $data['password']);
      }
      break;
    case 'Login';
      include 'login.php';
      $data = validateLogin();
      if ($data['valid']) {
        doLoginUser($data['username'], $data['userid']);
        makeShoppingCart();//make shopping cart session variable when user logs in
        $page = 'Home';
      }
      break;
    case 'Logout';
      doLogoutUser();
      deleteShoppingCart();
      $page = 'Home';
      break;
    case 'ChangePassword';
      include 'changePassword.php';
      $data = validateChangePassword();
      if ($data['valid']) {
        doLogoutUser();
        $page = 'Home';
      }
      break;
      default;
      break;
    }
  
  //add menu buttons depending on user being logged in or not
  $data['menu'] = array('Home' => 'Home', 'About' => 'About', 'Contact' => 'Contact', 'Webshop' => 'Webshop');
  if (isUserLoggedIn()) {
    $data['menu']['Logout'] = "Logout " . getUsername();
    $data['menu']['ChangePassword'] = 'Change Password';
    $data['menu']['ShoppingCart'] = 'ShoppingCart';
  } else {
    echo "not logged in";
    $data['menu']['Login'] = 'Login';
    $data['menu']['Register'] = 'Register';

  }
    $data['page'] = $page; //add value of current page to the data
    return $data;
}

function showGeneralError($data) {
  if (!empty($data['generalError'])) {
    echo '<div class="error">' . $data['generalError'] . '</div>';
  }
}


function showResponsePage($data) {
	beginDocument();
	showHeader();
	showMenu($data);
  showGeneralError($data);
	showContent($data); //use the data received to fill in unifinished form with valid data
	showFooter();
	endDocument();
}

function logError($msg) {
  echo "LOGGING TO THE SERVER: " . $msg;
}

//start of application
$page = getRequestedPage();
$data = processRequest($page);
var_dump($data);//for testing
showResponsePage($data);
?>