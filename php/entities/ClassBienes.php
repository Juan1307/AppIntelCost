<?php declare(strict_types = 1);

  require_once './../connect/DbConnect.php';

  /**
   * Class Bienes
   */
  class Bienes extends DbConnect
  {

    public static function getAllBienes() {
      $pdo = parent::getInstance();

      $sql = $pdo->prepare("SELECT * FROM `tbl_bienes`");
        $sql->execute();
      return $sql->fetchAll(); 
    }

    public static function getSavedBienes(int $id_user) {
      $pdo = parent::getInstance();

      $sql = $pdo->prepare("SELECT * FROM `tbl_bienes` AS b INNER JOIN `tbl_det_bienes` AS db ON db.`id_bien` = b.`Id` WHERE db.`id_usuario` = $id_user");
        $sql->execute();
  
      return $sql->fetchAll(); 
    }

    public static function setAddNewBien(int $id_user = 1, int $id_bien) {
      $pdo = parent::getInstance();

      $sql = $pdo->prepare("INSERT INTO `tbl_det_bienes` VALUES(NULL, :id_usuario, :id_bien)");

        $sql->bindValue(':id_usuario', $id_user);
        $sql->bindValue(':id_bien', $id_bien);
      
      return $sql->execute();
    }

    public static function deleteExistBien(int $id_det_bien, int $id_user) {
      $pdo = parent::getInstance();

      $sql = $pdo->prepare("DELETE FROM `tbl_det_bienes` WHERE id_det_bien = :id_det_bien AND id_usuario = :id_usuario");

        $sql->bindValue(':id_det_bien', $id_det_bien);
        $sql->bindValue(':id_usuario', $id_user);
      
      return $sql->execute();
    }
  }
?>