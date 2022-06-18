<?php declare(strict_types = 1);

  require_once './../connect/DbConnect.php';

  /**
   * Class Usuarios
   */
  class Usuarios extends DbConnect
  {
    public static function getAllUsuarios() {
      $pdo = parent::getInstance();
      $sql = $pdo->prepare("SELECT * FROM `tbl_usuarios`");
        $sql->execute();

      return $sql->fetchAll();
    }

    public static function getAllBienesUsuario(int $id_user, ?string $city, ?string $type) {
      $pdo = parent::getInstance();

      if(is_null($city) && is_null($type)){
        $where = '';
      }else {
        $where = ($city && $type) ? " AND b.`Ciudad` = '$city' AND b.`Tipo` = '$type'" :
               (($city) ? " AND b.`Ciudad` = '$city'" : " AND b.`Tipo` = '$type'");
      }

      $sql = $pdo->prepare("SELECT b.`Id`, b.`Tipo`, b.`Codigo_Postal`, b.`Precio`, b.`Direccion`, b.`Ciudad`, b.`Telefono` FROM `tbl_bienes` AS b INNER JOIN `tbl_det_bienes` AS db ON db.`id_bien` = b.`Id` WHERE db.`id_usuario` = $id_user $where");
        $sql->execute();
      return $sql->fetchAll();
    }
  }
 ?>