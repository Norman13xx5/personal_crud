<?php
class Producto extends Conectar
{
    public function get_producto()
    {
        $conectar = parent::conexion();
        parent::set_names();
        $sql = "SELECT * FROM tm_producto WHERE estado=1";
        $sql = $conectar->prepare($sql);
        $sql->execute();
        return $resultado = $sql->fetchAll();
    }
    public function get_producto_x_id($id_producto)
    {
        $conectar = parent::conexion();
        parent::set_names();
        $sql = "SELECT * FROM tm_producto WHERE id_producto = ?";
        $sql = $conectar->prepare($sql);
        $sql->bindValue(1, $id_producto);
        $sql->execute();
        return $resultado = $sql->fetchAll();
    }
    public function delete_producto($id_producto)
    {
        $conectar = parent::conexion();
        parent::set_names();
        $sql = "UPDATE tm_producto 
                SET
                    estado=0,
                    fecha_eliminacion=now()
                WHERE 
                    id_producto = ?";
        $sql = $conectar->prepare($sql);
        $sql->bindValue(1, $id_producto);
        $sql->execute();
        return $resultado = $sql->fetchAll();
    }
    public function insert_producto($nombre_producto, $descripcion_producto)
    {
        $conectar = parent::conexion();
        parent::set_names();
        $sql = "INSERT INTO tm_producto (id_producto, nombre_producto, descripcion_producto, fecha_creacion, fecha_modificacion, fecha_eliminacion, estado) VALUES (NULL, ?, ?, now(), NULL, NULL, 1);";
        $sql = $conectar->prepare($sql);
        $sql->bindValue(1, $nombre_producto);
        $sql->bindValue(2, $descripcion_producto);
        $sql->execute();
        return $resultado = $sql->fetchAll();
    }
    public function update_producto($id_producto, $nombre_producto, $descripcion_producto)
    {
        $conectar = parent::conexion();
        parent::set_names();
        $sql = "UPDATE tm_producto
                SET
                    nombre_producto=?,
                    descripcion_producto=?,
                    fecha_modificacion=now()
                WHERE 
                    id_producto = ?";
        $sql = $conectar->prepare($sql);
        $sql->bindValue(1, $nombre_producto);
        $sql->bindValue(2, $descripcion_producto);
        $sql->bindValue(3, $id_producto);
        $sql->execute();
        return $resultado = $sql->fetchAll();
    }
}
