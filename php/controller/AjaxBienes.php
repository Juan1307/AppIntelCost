<?php 

  $method = $_SERVER["REQUEST_METHOD"];
  require_once './../entities/ClassBienes.php';

  switch ($method) {
    case 'GET':
      $opt = $_GET['opt'];

      switch($opt) {
        case 'all': $output = Bienes::getAllBienes(); break;
        case 'saved' : 
          $id_user = $_GET['id_user'];
          settype($id_user, "int");

          $output = Bienes::getSavedBienes($id_user); 
        break;
        default: die('OOps option not found'); break;
      }
    break;
    
    case 'POST':
      $content = trim(file_get_contents("php://input"));
      $post = json_decode($content, true);

      $id_bien = $post['id_bien'];
      $id_user = $post['id_user'];

      settype($id_bien, "int");
      settype($id_user, "int");

      $output = Bienes::setAddNewBien($id_user, $id_bien);
    break;

    case 'DELETE':

      $id_det_bien = $_GET['id_det_bien'];
      $id_user = $_GET['id_user'];

      settype($id_bien, "int");
      settype($id_user, "int");

      $output = Bienes::deleteExistBien($id_det_bien, $id_user);
    break;

    default: die('error method not allowed'); break;
  }

  echo json_encode($output);
?>