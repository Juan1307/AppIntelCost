<?php 

  $method = $_SERVER['REQUEST_METHOD'];
  require_once './../entities/ClassUsuarios.php';

  switch($method) {
    case 'GET':
      $output = Usuarios::getAllUsuarios();
    break;
    default: die('error method not allowed'); break;
  }

  echo json_encode($output);
 ?>