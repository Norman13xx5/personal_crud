<?php
require_once("../config/conexion.php");
require_once("../models/Producto.php");
$producto = new Producto();

switch ($_GET["op"]) {
    case "listar":
        $datos = $producto->get_producto();
        $data = Array();
        foreach ($datos as $row) {
            $sub_array = array();
            $sub_array[] = $row["nombre_producto"];
            $sub_array[] = '<button type="button" onClick="editar('.$row["id_producto"].');" id="'.$row["id_producto"].'" class=btn btn-outline-primary btn-icon"><div><i class="fa fa-edit"></i></div></button>';
            $sub_array[] = '<button type="button" onClick="eliminar('.$row["id_producto"].');" id="'.$row["id_producto"].'" class=btn btn=outline-danger bnt=ico"><div><i class="fa fa-trash"></i></div></button>';
            $data[]=$sub_array;
        }
        $results = array(
            "sEcho" => 1,
            "iTotalRecords" => count($data),
            "iTotalDisplayRecords" => count($data),
            "aaData" => $data
        );
        echo json_encode($results);

        break;

        case "guardaryeditar";
            $datos = $producto->get_producto_x_id($_POST["id_producto"]);
            if(empty($_POST["id_producto"])){
                if(is_array($datos)==true and count($datos)==0){
                    $producto->insert_producto($_POST["nombre_producto"]); 
                }
            }else{
                $producto->update_producto($_POST["id_producto"],$_POST["nombre_producto "]);
            }
            break;

        case "mostrar":
            $datos = $producto->get_producto_x_id($_POST["id_producto"]);
            if(is_array($datos)==true and count($datos)>0){
                foreach($datos as $row){
                    $output["id_producto"] = $row["id_producto"];
                    $output["nombre_producto"] = $row["nombre_producto"];

                }
            }
            break;
        case "elimiar":
            $producto->delete_producto($_POST["id_producto"]);
            break;

}
