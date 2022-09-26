<?php
include('header.php');
include('nav.php');
?>
<main class="py-5">
     <section id="listado" class="mb-5">
          <div class="container">
               <h3 class="mb-3">Datos del Usuario</h3>

               <div class="bg-light-alpha p-2">
                    <div class="row">
                         <div class="col-lg-4">
                              <label for="">Nombre</label>
                              <input type="text" name="" class="form-control form-control-ml" disabled value="">
                         </div>

                         <div class="col-lg-3">
                              <label for="">Apellido</label>
                              <input type="text" name="" class="form-control form-control-ml" disabled value="">
                         </div>

                         <div class="col-lg-2">
                              <label for="">DNI</label>
                              <input type="number" name="" class="form-control form-control-ml" disabled value="">
                         </div>

                         <div class="col-lg-3">
                              <label for="">Email</label>
                              <input type="text" name="" class="form-control form-control-ml" disabled value="">
                         </div>
                    </div>
          </div><br>
          <div class="container">
               <h2 class="mb-4">Agregar Factura</h2>

               <form class="bg-light-alpha p-5">
                    <div class="row">
                         <div class="col-lg-3">
                              <div class="form-group">
                                   <label for="">Fecha</label>
                                   <input type="date" name="" value="" class="form-control">
                              </div>
                         </div>
                         <div class="col-lg-3">
                              <div class="form-group">
                                   <p>Tipo</p>
                                   <input type="radio" name="" value="" class="radioSize">Factura A
                                   <input type="radio" name="" value="" class="radioSize">Factura B
                              </div>
                         </div>
                         <div class="col-lg-3">
                              <div class="form-group">
                                   <label for="">Numero</label>
                                   <input type="number" name="" value="" class="form-control" min="0">
                              </div>
                         </div>
                    </div>
                    <button type="button" name="button" class="btn btn-dark ml-auto d-block">Agregar</button>
               </form>
          </div>
     </section>
</main>

<?php include('footer.php') ?>
