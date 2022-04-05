<div id="btn_nuevo" class="modal fade bd-example-modal" tabindex="-1" roles="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-countent">
            <div class="modal-header">
                <button type="button" class="modal-close" data-dismiss="modal" aria-label="Close">
                    <i class="font-ico-close-2"></i>
                </button>
                <h4 class="modal-title" id="mdltitulo"></h4>
                <form action="POST" id="form_producto">
                    <div class="modal-bady">
                        <input type="hidden" id="id_producto" name="id_producto">

                        <div class="form-group">
                            <label class="form-label" for="nombre_producto">Nombre</label>
                            <input type="text" class="form-control" id="nombre_producto" name="nombre_producto" placeholder="Ingrese Nombre" required>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-rounded btn-default" data-dismiss="modal">Cerrar</button>
                        <button type="submit" name="action" id="#" value="add" class="btn btn-rounded btn-primary">Guardar</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>