<?php include('conexion.php'); ?>
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
            <a href="subir.php" class="btn btn-success">Subir pelicula</a>
            <a href="#" class="btn btn-info ml-2">Directores</a>
        </div>
        <div class="row">
            <?php
                // ⚡⚡ CRUD ⚡⚡
                /*
                    C -> CREATE
                    R -> READ
                    U -> UPDATE
                    D -> DELETE
                */
                $query = "SELECT a.peli_nombre, CONCAT(b.dire_nombres, ' ', b.dire_apellidos) AS director, a.peli_restricciones, a.peli_img FROM peliculas a INNER JOIN directores b ON a.peli_dire_id = b.dire_id";
                $queryRes = mysqli_query($conexion, $query);

                while($fila = mysqli_fetch_assoc($queryRes)){
                   ?>
                    <div class="col-md-3 mb-4">
                        <img src="<?php echo $fila['peli_img']; ?>" alt="john wick" width="100%">
                        <h4 class="text-info">
                            <?php 
                                echo $fila['peli_nombre'];
                            ?>
                        </h4>
                        <div>
                            <strong>Director: </strong> <?php echo $fila['director']; ?>
                        </div>
                        <div>
                            <strong>Rating: </strong> <?php echo $fila['peli_restricciones']; ?>
                        </div>
                        <div class="mt-1">
                            <a href="#" class="btn btn-success">editar</a>
                            <a href="#" class="btn btn-danger">borrar</a>
                        </div>
                    </div>
                <?php }
            ?>
            <!-- <div class="col-md-3 mb-4">
                <img src="https://pics.filmaffinity.com/john_wick_chapter_4-101402041-large.jpg" alt="john wick" width="100%">
                <h4 class="text-info">John Wick 4</h4>
                <div>
                    <strong>Director: </strong> Chad Stahelski
                </div>
                <div>
                    <strong>Rating: </strong> PG-16
                </div>
                <div class="mt-1">
                    <a href="#" class="btn btn-success">editar</a>
                    <a href="#" class="btn btn-danger">borrar</a>
                </div>
            </div> -->
        </div>
    </section>
</body>
</html>