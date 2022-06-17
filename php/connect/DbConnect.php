<?php declare(strict_types = 1);

  /**
   * Class DB
   */
  class DbConnect
  {
    // user attr
    private string $DB_USER = 'root';
    private string $DB_PASS = '';
    
    // database attr
    private string $DB_HOST = 'localhost';
    private string $DB_NAME = 'intelcost_bienes';
    private int $DB_PORT = 3306;

    private static $connection;

    private function __construct() {
      try {
        self::$connection = $this->getConnection();
      } catch (PDOException $e) {
        echo $e->getMessage();
        die;
     }
    }

    private function getConnection() {
      #set api pdo
      define('PDO_ATTR', [ PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
                           PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,  
                           PDO::ATTR_PERSISTENT => true ]);
  
      #config a data source name
      define('PDO_DSN', "mysql:host=$this->DB_HOST;dbname=$this->DB_NAME;port=$this->DB_PORT;charset=utf8");

      return new PDO(PDO_DSN, $this->DB_USER, $this->DB_PASS, PDO_ATTR);
    }

    final protected static function getInstance() {
      // singleton pattern
      if(!isset(self::$connection)){
        new DbConnect();
      }

      return self::$connection;
    }
  }
 ?>