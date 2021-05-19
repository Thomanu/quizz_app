<?php

class database
{
    protected $db;

    public function __construct()
    {
        try {
            $this->db = new PDO('mysql:host=' . HOST . ';dbname=' . DBNAME . ';charset=utf8', LOGIN, PASSWORD);
        } catch (Exception $exc) {
            echo $exc->getMessage();
        }
    }

    public function __destruct()
    {
        $this->db = NULL;
    }
}


// Supprimer une questions //
function delete_question($id){
    $pdo = db_connect();
    $sql = "DELETE FROM `questions` WHERE `id` = :id";

    $req = $pdo->prepare($sql);

    $req->bindValue(':id', $id, PDO::PARAM_INT);

    try {
        // exécuter la requête
        $req->execute();
        // renvoie le nombre d'enregistrement créé.
        return $req->rowCount();
        
    }catch(PDOException $e){
        return false;
    }
}
//Fin supprimer une questions //