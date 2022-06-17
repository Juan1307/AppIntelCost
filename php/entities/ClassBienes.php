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

    public static function getSavedBienes(int $id) {
      $pdo = parent::getInstance();

      $sql = $pdo->prepare("SELECT * FROM `tbl_bienes` AS b INNER JOIN `tbl_det_bienes` AS db ON db.`id_bien` = b.`Id` WHERE db.`id_usuario` = $id");
        $sql->execute();
  
      return $sql->fetchAll(); 
    }

    public static function setAddNewBien(int $id = 1, int $sid) {
      $pdo = parent::getInstance();

      $sql = $pdo->prepare("INSERT INTO `tbl_det_bienes` VALUES(NULL, :id_usuario, :id_bien)");

        $sql->bindValue(':id_usuario', $id);
        $sql->bindValue(':id_bien', $sid);
      
      return $sql->execute();
    }

    public static function deleteExistBien(int $id) {
      $pdo = parent::getInstance();

      $sql = $pdo->prepare("DELETE FROM `tbl_det_bienes` WHERE id_det_bien = :id_det_bien");
        $sql->bindValue(':id_det_bien', $id);
      
      return $sql->execute();
    }
  }
?>