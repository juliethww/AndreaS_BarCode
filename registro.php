<?php
	require 'conexion/conexion.php';
    $db = new Database();
    $conectar = $db->conectar();
    require 'vendor/autoload.php';

    use Picqer\Barcode\BarcodeGeneratorPNG;
    
    $usua = $conectar->prepare("SELECT * FROM lote");
    $usua->execute();
    $asigna = $usua->fetchAll(PDO::FETCH_ASSOC);
    
    
    if ((isset($_POST["enviar"]) && ($_POST["enviar"]) == "formu")) {
        $id_lote = $_POST['id_lote'];
        $barrio = $_POST['barrio'];
        $frente = $_POST['frente'];
        $ancho = $_POST['ancho'];
        $dueño = $_POST['dueño'];

        echo '<script>alert ("Formulario Exitoso"); </script>';
        echo '<script>window.location="registro.php"</script>';

        $cod_bar = uniqid() . rand(1000, 9999);
        $generator = new BarcodeGeneratorPNG();
        $codigo_barras_imagen = $generator->getBarcode($cod_bar, $generator::TYPE_CODE_128);
        file_put_contents(__DIR__.'/images/' . $cod_bar . '.png', $codigo_barras_imagen);
    
    
        $insertsql = $conectar->prepare("INSERT INTO lote (id_lote, barrio, frente, ancho, dueño, cod_bar) VALUES (?, ?, ?, ?, ?, ?)");
        $insertsql->execute([$id_lote, $barrio, $frente, $ancho, $dueño, $cod_bar]);
    }
    
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/css.css">
    <link rel="stylesheet" href="css/tabla.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans&display=swap">

    <title>Formularios</title>
</head>
<body>
    <div class="container mt-5">
        <div class="formulario-container">
            <form action="registro.php" method="POST" class="formulario">
                <label for="id_lote">ID de Lote:</label>
                <input type="text" id="id_lote" name="id_lote" readonly>

                <label for="barrio">Barrio:</label>
                <input type="text" id="barrio" name="barrio" required>

                <label for="frente">Frente:</label>
                <input type="text" id="frente" name="frente" required>

                <label for="ancho">Ancho:</label>
                <input type="text" id="ancho" name="ancho" required>

                <label for="dueño">Dueño:</label>
                <input type="text" id="dueño" name="dueño" required>

                <input type="submit" name="enviar" value="enviar">
                <input type="hidden" name="enviar" value="formu">
            </form>
        </div>
    </div>

    <div class="container mt-3">
        <table>
            <thead>
                <tr>
                    <th>ID de Lote</th>
                    <th>Barrio</th>
                    <th>Frente</th>
                    <th>Ancho</th>
                    <th>Dueño</th>
                    <th>Código de Barras</th>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($asigna as $row) : ?>
                    <tr>
                        <td><?php echo $row['id_lote']; ?></td>
                        <td><?php echo $row['barrio']; ?></td>
                        <td><?php echo $row['frente']; ?></td>
                        <td><?php echo $row['ancho']; ?></td>
                        <td><?php echo $row['dueño']; ?></td>
                        <td>
                            <img src="images/<?php echo $row['cod_bar']; ?>.png" alt="Código de Barras" style="max-width: 220px;">
                        </td>
                    </tr>
                <?php endforeach; ?>
            </tbody>
        </table>
    </div>
</body>
</html>
