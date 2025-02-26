<?php include('conexion.php'); ?>
<?php ob_start(); ?>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pelicomic</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/4.6.2/css/bootstrap.min.css" integrity="sha512-rt/SrQ4UNIaGfDyEXZtNcyWvQeOq0QLygHluFQcSjaGB04IxWhal71tKuzP6K8eYXYB6vJV4pHkXcmFGGQ1/0w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
    <h1 class="text-center pt-5 pb-5 bg-primary text-white">Bienvenidos(as) a Pelicomic</h1>
    <section class="container">
        <div class="row p-4">
            <a href="./" class="btn btn-success">HOME</a>
        </div>
        <div class="row justify-content-center">
            <h4 class="text-center col-md-12">Ingresa los datos de la pelicula</h4>
            <form class="col-md-6 mt-4 pb-5" method="post">
                <div class="form-group">
                    <label for="peli_nombre">Nombre</label>
                    <input type="text" id="peli_nombre" class="form-control" name="peli_nombre">
                </div>
                <div class="form-group">
                    <label for="peli_genero">Género</label>
                    <input type="text" id="peli_genero" class="form-control" name="peli_genero">
                </div>
                <div class="form-group">
                    <label for="peli_estreno">Fecha estreno</label>
                    <input type="date" id="peli_estreno" class="form-control" name="peli_estreno">
                </div>
                <div class="form-group">
                    <label for="peli_restricciones">Restricciones</label>
                    <input type="text" id="peli_restricciones" class="form-control" name="peli_restricciones">
                </div>
                <div class="form-group">
                    <label for="peli_img">URL img</label>
                    <input type="text" id="peli_img" class="form-control" name="peli_img" required>
                </div>
                <div class="form-group">
                    <label for="peli_dire_id">Director</label>
                    <select name="peli_dire_id" id="peli_dire_id" class="form-control" required>
                        <option value="" disabled selected>Selecciona una opción</option>
                        <?php
                            $query = "SELECT * FROM directores";
                            $queryRes = mysqli_query($conexion, $query);
                            while($fila = mysqli_fetch_assoc($queryRes)){
                                ?>
                                    <option value="<?php echo $fila['dire_id']; ?>">
                                        <?php echo $fila['dire_nombres'] . " " . $fila['dire_apellidos'];  ?>
                                    </option>
                            <?php }
                        ?>
                    </select>
                </div>
                <div class="form-group">
                    <input type="submit" value="Guardar" name="guardar" class="btn btn-primary">
                </div>
            </form>
            <?php
                if(isset($_POST['guardar'])){
                    $peli_nombre = $_POST['peli_nombre'];
                    // echo $peli_nombre;
                    $peli_genero = $_POST['peli_genero'];
                    $peli_estreno = $_POST['peli_estreno'];
                    $peli_restricciones = $_POST['peli_restricciones'];
                    $peli_img = $_POST['peli_img'];
                    $peli_dire_id = $_POST['peli_dire_id'];
                    // echo $peli_img;
                    $query = "INSERT INTO peliculas (peli_nombre, peli_genero, peli_estreno, peli_restricciones, peli_img, peli_dire_id) VALUES ('{$peli_nombre}', '{$peli_genero}', '{$peli_estreno}', '{$peli_restricciones}', '{$peli_img}', {$peli_dire_id})";
                    mysqli_query($conexion, $query);
                    header('Location: subir.php');
                }
            ?>
        </div>
    </section>
</body>
</html>