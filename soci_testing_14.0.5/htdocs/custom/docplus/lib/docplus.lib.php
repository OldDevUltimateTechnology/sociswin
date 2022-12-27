<?php

require_once DOL_DOCUMENT_ROOT.'/custom/docplus/class/categoria.class.php';
require_once DOL_DOCUMENT_ROOT.'/custom/docplus/class/carpeta.class.php';
require_once DOL_DOCUMENT_ROOT.'/custom/docplus/class/documento.class.php';
require_once DOL_DOCUMENT_ROOT.'/custom/docplus/class/campo.class.php';

/**
 * 
 * SUBIR ARCHIVOS
 * 
 * 
 * @param   string      $tmp_file   Cadena con la ubicación temporal del archivo subido
 * @param   string      $filename   Nombre original del archivo
 * @param   string      $modulo     Módulo al que pertenece el documento
 * @param   int         $obj_id     ID de la observación
 * @param   int         $doc_id     ID del documento
 * 
 * @return  string|bool      Dirección en la que se guardó el archivo | false
 *                              
 * 
 */

 function uploadFile($tmp_file, $filename, $modulo, $obj_id, $doc_id) {

    // Dirección de la carpeta donde se va a subir el archivo
    $upload_dir = DOL_DOCUMENT_ROOT .'/custom/docplus/upload/'. $modulo .'/' . $obj_id . '/' . $doc_id;

    // Dirección incluyendo el nombre del archivo
    $imageFileType = strtolower(pathinfo($filename, PATHINFO_EXTENSION));
    $file = $upload_dir . "/". $filename;

    
    if (!file_exists($upload_dir)) {
        $created = mkdir($upload_dir, 0777, true);
    }
    else if (file_exists($file))
    {
        $cur_file = $file;

        $index = 1;
        while (file_exists($cur_file))
        {
            $cur_file = $upload_dir . "/" . $index . "_" . $filename;

            $index++;
        }
        
        $file = $cur_file;
    }
    
    $location = DOL_URL_ROOT .'/custom/docplus/upload/'. $modulo .'/'. $obj_id . '/' . $doc_id .'/'. $filename;

    $result = move_uploaded_file($tmp_file, $file);

    if ($result) {
        return $location;
    }
    return false;

}

/**
 * 
 * ELIMINAR ARCHIVO
 * 
 * 
 * @param   int         $obj_id     ID del objeto
 * @param   int         $doc_id     ID del documento
 * @param   string      $filename   Nombre original del archivo
 * @param   string      $modulo     Módulo al que pertenece el documento
 * 
 * @return  int         $res     Resultado positivo si salió bien, negativo si no
 * 
 * Crea la dirección de la carpeta donde se guarda la imagen
 * Genera la dirección del archivo
 * Elimina el archivo
 * Elimina la carpeta                              
 * 
 */

 function deleteFiles($obj_id, $doc_id, $filename, $modulo){

    $dir = DOL_DOCUMENT_ROOT .'/custom/docplus/upload/'. $modulo .'/' . $obj_id .'/'. $doc_id;
    
    $remove_path = $dir . '/' .$filename;

    $res = 1;

    if (file_exists($remove_path)){
        if (unlink($remove_path)){
            $res = 1;
        }
        else
        {
            $res = -1;
        }
    }
    
    return $res;

}

/**
 * Obtener los objetos padre de las carpetas
 * 
 * @param   Carpeta     $carpeta        Carpeta a evaluar
 * @param   array       $parent_list    Lista de padres actual
 * 
 * @return  array       $parent_list    Lista de padres obtenida
 */
function folder_parents($carpeta, $parent_list)
{
    global $db;

    // Se guarda la carpeta actual en la lista
    $parent_list[] = $carpeta->id;
    
    // Si el padre es una carpeta, se obtiene su información
    // y se vuelve a llamar a la función para actualizar la lista
    if ($carpeta->tipo_parent == "carpeta")
    {
        $next_carpeta = new Carpeta($db);
        $next_carpeta->fetch($carpeta->fk_parent);
    
        $parent_list = folder_parents($next_carpeta, $parent_list);        
    }
    // Si el padre es una categoria, quiere decir que se llegó al final
    // y se guarda directamente en la lista
    else if ($carpeta->tipo_parent == "categoria")
    {
        $parent_list[] = $carpeta->fk_parent;
    }

    return $parent_list;
}

/**
 * Obtener los elementos padre de un documento o una carpeta
 * 
 * @param   Documento|Carpeta   $object     Objeto del que obtener los padres
 * 
 * @return  string  $parents    Padres del objeto, separados por ","
 */
function get_parents($object)
{
    global $db;

    $parent_list = array();
    if ($object->tipo_parent == "carpeta")
    {
        $carpeta = new Carpeta($db);
        $carpeta->fetch($object->fk_parent);
        
        $parent_list = folder_parents($object, $parent_list);
    }
    else if ($object->tipo_parent == "categoria")
    {
        $parent_list[] = $object->fk_parent;
    }
    
    $parents = "";
    for ($i = 0; $i < count($parent_list); $i++) 
    {
        $parents .= $parent_list[$i];
        
        if ($i + 1 < count($parent_list))
        {
            $parents .= ",";
        }
    }
    
    return $parents;
}

/**
 * Obtener el listado de archivos en una carpeta
 * 
 * @param   string  $path   Dirección de la carpeta
 * 
 * @return  array   $files  Listado de archivos dentro de la carpeta
 */
function get_doc_files($path)
{
    $files = array();

    if (file_exists(DOL_DOCUMENT_ROOT . $path))
    {
        // Se eliminan las direcciones '.' y '..' que añade linux automáticamente
        $folder = array_diff(scandir(DOL_DOCUMENT_ROOT . $path), array('.', '..'));
    
        // Se crea un nuevo arreglo que tiene como key el nombre del archivo, y como
        // contenido su fecha de modificación
        $file_dates = array();
        foreach ($folder as $file)
        {
            $file_dates[$file] = filemtime(DOL_DOCUMENT_ROOT . $path . '/'. $file);
        }
    
        // Se organiza el arreglo en orden descendente según las fechas
        arsort($file_dates);
    
        // Se construye un nuevo arreglo que va a contenter el nombre del archivo y la
        // fecha ya ordenados
        foreach ($file_dates as $file => $value)
        {
            $files[] = array(
                'file' => $file,
                'date' => $file_dates[$file]
            );
        }
    }

    return $files;
}