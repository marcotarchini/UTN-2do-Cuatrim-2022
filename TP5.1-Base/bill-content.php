<?php
include('header.php');
include('nav.php');
?>
<main class="py-5">
     <div class="container">
          <h3 class="mb-1">Datos de la Factura</h3>

          <div class="bg-light-alpha p-1">
               <div class="row">
                    <div class="col-lg-3">
                         <label for="">Fecha</label>
                         <input type="date" class="form-control form-control-ml" disabled value="">
                    </div>

                    <div class="col-lg-3">
                         <label for="">Tipo</label>
                         <input type="text" class="form-control form-control-ml" disabled value="">
                    </div>

                    <div class="col-lg-3">
                         <label for="">Numero</label>
                         <input type="number" class="form-control form-control-ml" disabled value="">
                    </div>
               </div>
     </div><br>

     <div class="container">
          <h2 class="mb-4">Agregar Item a Factura</h2>

          <form class="bg-light-alpha p-3">
               <div class="row">
                    <div class="col-lg-4">
                         <div class="form-group">
                              <label for="">Nombre</label>
                              <input type="text" name="" class="form-control" required>
                         </div>
                    </div>
                    <div class="col-lg-4">
                         <div class="form-group">
                              <label for="">Descripcion</label>
                              <input type="text" name="" class="form-control" >
                         </div>
                    </div>
                    <div class="col-lg-2">
                         <div class="form-group">
                              <label for="">Precio</label>
                              <input type="number" name="" class="form-control" required>
                         </div>
                    </div>
                    <div class="col-lg-2">
                         <div class="form-group">
                              <label for="">Cantidad</label>
                              <input type="number" name="" class="form-control" min="1" required>
                         </div>
                    </div>
               </div>
               <button type="button" name="button" class="btn btn-dark ml-auto d-block">Agregar</button>
          </form>
     </div>
     <br>
     <section id="listado" class="mb-5">
          <div class="container">
               <h2 class="mb-4">Detalles de Factura</h2>
               <table class="table bg-light-alpha">
                    <thead>
                         <th>Nombre</th>
                         <th>Descripcion</th>
                         <th>Precio</th>
                         <th>Cantidad</th>
                         <th>Sub-total</th>
                    </thead>
                    <tbody>
                         <tr>
                              <td>x</td>
                              <td>x</td>
                              <td>x</td>
                              <td>x</td>
                              <td>x</td>
                         </tr>
                         <tr>
                              <td>x</td>
                              <td>x</td>
                              <td>x</td>
                              <td>x</td>
                              <td>x</td>
                         </tr>
                         <tr>
                              <td>x</td>
                              <td>x</td>
                              <td>x</td>
                              <td>x</td>
                              <td>x</td>
                         </tr>
                    </tbody>
               </table>
          </div>
     </section>

     <div class="container">
          <div class="bg-light-alpha p-1">
               <div class="row">
                    <div class="col-lg-4">
                         <div class="form-group text-white">
                              <label for="" class="ml-1"><b>IMPORTE TOTAL A FACTURAR</b></label>
                              <input type="text" value="" class="form-control ml-1 text-strong" disabled>
                         </div>
                    </div>
                    <div class="form-group">
                         <button type="button" class="btn-fix btn btn-danger mt-3" onclick="" >Procesar Factura</button>
                    </div>
               </div>
          </div>
     </div>
</main>

<?php include('footer.php') ?>
