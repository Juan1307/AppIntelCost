<?php declare(strict_types = 1);

  require_once './../services/ExcelSrv.php';
  require_once './../entities/ClassUsuarios.php';

  $method = $_SERVER['REQUEST_METHOD'];

  switch($method) {
    case 'GET': 
      $city = !strlen($_GET['ciudad']) ? null : $_GET['ciudad'];
      $type = !strlen($_GET['tipo']) ? null : $_GET['tipo'];

      $id_user = $_GET['id_user'];
      settype($id_user, "int");

      $rows = Usuarios::getAllBienesUsuario($id_user, $city, $type);

      $columns = ['Id' => 'string', 'Codigo Postal' => 'string',
                 'Ciudad' => 'string', 'Direccion' => 'string',
                 'Precio' => 'string', 'Telefono' => 'string'];

      $data = [];
      foreach($rows as $key => ['Id' => $id_bien, 'Codigo_Postal' => $codigo,
                                  'Ciudad' => $ciudad, 'Direccion' => $direccion,
                                  'Precio' => $precio, 'Telefono' => $cel_tel]) {
        $data[] = [ $id_bien, $codigo, $ciudad, $direccion, $precio, $cel_tel ];
      }

      date_default_timezone_set('America/Lima');

      $fecha = date("d-m-Y");
      $hora = date("h-i-sa");
      // $fecha = date("d-m-Y");
      $name_user_report = "Reporte_Bienes_$fecha"."Hora".$hora.".xlsx";

      $writer = new XLSXWriter();
      $writer->setAuthor('ExcelReport - Antik');
      $writer->writeSheet($data,'Hoja 1', $columns);  // with headers
      $writer->writeToFile("./../reportes/$name_user_report");

      $output = $name_user_report;
    break;

    default: die('method not allowed'); break;
  }
  echo json_encode($output);

 ?>