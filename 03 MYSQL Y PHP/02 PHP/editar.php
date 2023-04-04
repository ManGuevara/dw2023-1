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
            <?php
                $id = $_GET['id'];
                // echo $id;
                $query = "SELECT * FROM peliculas WHERE peli_id = {$id}";
                $queryRes = mysqli_query($conexion, $query);
                $fila = mysqli_fetch_assoc($queryRes);
                // print_r($fila);
            ?>
            <form class="col-md-6 mt-4 pb-5" method="post">
                <div class="form-group">
                    <label for="peli_nombre">Nombre</label>
                    <input 
                        type="text" 
                        id="peli_nombre" 
                        class="form-control" 
                        name="peli_nombre"
                        value="<?php echo $fila['peli_nombre']; ?>"
                    >
                </div>
                <div class="form-group">
                    <label for="peli_genero">Género</label>
                    <input type="text" id="peli_genero" class="form-control" name="peli_genero" value="<?php echo $fila['peli_genero']; ?>">
                </div>
                <div class="form-group">
                    <label for="peli_estreno">Fecha estreno</label>
                    <input type="date" id="peli_estreno" class="form-control" name="peli_estreno" value="<?php echo $fila['peli_estreno']; ?>">
                </div>
                <div class="form-group">
                    <label for="peli_restricciones">Restricciones</label>
                    <input type="text" id="peli_restricciones" class="form-control" name="peli_restricciones" value="<?php echo $fila['peli_restricciones']; ?>">
                </div>
                <div class="form-group">
                    <label for="peli_img">URL img</label>
                    <input type="text" id="peli_img" class="form-control" name="peli_img" required value="<?php echo $fila['peli_img']; ?>">
                </div>
                <div class="form-group">
                    <label for="peli_dire_id">Director</label>
                    <select name="peli_dire_id" id="peli_dire_id" class="form-control" required>
                        <?php
                            $queryDire = "SELECT * FROM directores";
                            $queryDireRes = mysqli_query($conexion, $queryDire);
                            while($filaDire = mysqli_fetch_assoc($queryDireRes)){
                                // dire = 4 | peli_dire_id = 3
                                // sin son iguales -> option que tenga el atributo selected
                                // si no son -> option sean normales
                                $dire_id = $filaDire['dire_id'];
                                $director = $filaDire['dire_nombres'] . " " . $filaDire['dire_apellidos'];

                                if($dire_id == $fila['peli_dire_id']){
                                    ?>
                                        <option value="<?php echo $dire_id; ?>" selected>
                                            <?php echo $director; ?>
                                        </option>                                    
                                <?php }
                                else {
                                    ?>
                                        <option value="<?php echo $dire_id; ?>">
                                            <?php echo $director; ?>
                                        </option> 
                                <?php }
                            }
                        ?>
                    </select>
                </div>
                <div class="form-group">
                    <input type="submit" value="Guardar" name="guardar" class="btn btn-primary">
                </div>
            </form>
            <?php
                
            ?>
        </div>
    </section>
</body>
</html>