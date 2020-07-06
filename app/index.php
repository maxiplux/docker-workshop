<?
  $enlace = mysql_connect(getenv('DATABASE_URL'),  getenv('DATABASE_USER'), getenv('DATABASE_PASS'));
  if  (!$enlace) {
      die('No pudo conectarse: ' . mysql_error());
  }

  mysql_select_db(getenv('DATABASE_NAME'));
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Listado de productos</title>
  <style>
    body {
      font-family: Arial, Helvetica, sans-serif;
      size: 11px;
    }
    table, tr, td {
      border: 1px solid #000;
    }
  </style>
</head>
<body>
  <h1>Listado de productos</h1>

  <table cellspacing="0" celspadding="0">
    <th>id</th>
    <th>nombre</th>
    <th>Descripción</th>
    <th>Referencia</th>
    <th>Valor</th>
    <tbody>
    <?
      $resultado = mysql_query("SELECT * FROM products");

      while ($fila = mysql_fetch_array($resultado, MYSQL_ASSOC)) {
    ?>      
      <tr>
        <td><? echo $fila['id'] ?></td>
        <td><? echo $fila['product_name'] ?></td>
        <td><? echo $fila['product_description'] ?></td>
        <td><? echo $fila['product_reference'] ?></td>
        <td><? echo $fila['product_value'] ?></td>
      </tr>
    <?
      } 

      mysql_free_result($resultado);
    ?>  
    </tbody>
  </table>
</body>
</html>
<?
  mysql_close($enlace);
?>