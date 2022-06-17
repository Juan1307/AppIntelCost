<?php 

  $method = $_SERVER["REQUEST_METHOD"];

  require_once './../entities/ClassBienes.php';

  switch ($method) {
    case 'GET': $output = Bienes::getAllBienes(); break;
    
    case 'POST':
            
    break;

    case 'DELETE':

    break;

    default: die('error method not allowed'); break;
  }

  echo json_encode($data);
  // echo json_encode(['from php']);
?>