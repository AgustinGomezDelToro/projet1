<?php
include __DIR__ . "/../models/userModel.php";
session_start();

/*
if(!empty($_POST['subject'])) {
    echo "SUBJECT ok " . $_POST['subject']. " ID ok" . $_POST["id"];
}else {
    echo "SUBJECT et id errors vide";
}*/


if (isset($_POST["subject"],$_POST["id"])) {
    $id_user = $_POST["id"];
    $recupdonnee = $_POST["subject"];
    User::status($id_user, $recupdonnee);
}





class User
{
    /**
     * @example
     * User::get();
     */

    public static function get()
    {
        $users = UserModel::getAll();
        include 'view/userlist.php';
    }

    public static function status(int $id, int $recupdonnee)
    {
        echo $recupdonnee;
        if ($recupdonnee == 3) {
            try {
                $status = UserModel::deleteUser($id);
                header("Location: ../usermana");
            } catch (PDOException $exception) {
                $exception->getMessage();
            }
        } else {
            try {
                $status = UserModel::updateOneById($id,["state" => $recupdonnee]);
                header("Location: ../usermana");


            } catch (PDOException $exception) {
                $exception->getMessage();
            }
        }
    }

    public static function create(string $firstname, string $lastname, string $email, string $phone, string $pwd, string $pwdConfirm)
    {
        try {
//nettoyer les données
            $email = strtolower(trim($email));
            $firstname = ucwords(strtolower(trim($firstname)));
            $lastname = mb_strtoupper(trim($lastname));
//vérifier les données
            $errors = [];
//Email OK
            if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
                $errors[] = "Email incorrect";
            } else {

                //Vérification l'unicité de l'email
                $user = UserModel::findByEmail($email);
                print_r($user);
                if (!empty($user)) {
                    $errors[] = "L'email existe déjà en bdd";
                }
            }
//prénom : Min 2, Max 45 ou empty
            if (strlen($firstname) == 1 || strlen($firstname) > 45) {
                $errors[] = "Votre prénom doit faire plus de 2 caractères";
            }

//nom : Min 2, Max 100 ou empty
            if (strlen($lastname) == 1 || strlen($lastname) > 100) {
                $errors[] = "Votre nom doit faire plus de 2 caractères";
            }
//Mot de passe : Min 8, Maj, Min et chiffre
            if (strlen($pwd) < 8 ||
                preg_match("#\d#", $pwd) == 0 ||
                preg_match("#[a-z]#", $pwd) == 0 ||
                preg_match("#[A-Z]#", $pwd) == 0
            ) {
                $errors[] = "Votre mot de passe doit faire plus de 8 caractères avec une minuscule, une majuscule et un chiffre";
            }
//Confirmation : égalité
            if ($pwd != $pwdConfirm) {
                $errors[] = "Votre mot de passe de confirmation ne correspond pas";
            }
            if (!preg_match(' /^0[0-9]([-. ]?[0-9]{2}){4}$/', $phone)) {
                $errors[] = 'Numéro de téléphone pas valide';
                //Vérification l'unicité de l'email
                $phone = UserModel::findByPhone($phone);
                if (!empty($phone)) {
                    $errors[] = "Numéro de téléphone existe déjà en bdd";
                }
            }
            print_r($errors);
            echo "cc";
            $pwd = password_hash($pwd, PASSWORD_DEFAULT);
            if (count($errors) == 0) {
                $newUser = UserModel::create([
                    "firstname" => $firstname,
                    "lastname" => $lastname,
                    "phone" => $phone,
                    "email" => $email,
                    "pwd" => $pwd,
                ]);
                if ($newUser == 1) {
                    $result = UserModel::findByEmail($email);
                    if (!$result) {
                        echo "cc";
                        $_SESSION["result"] = $result;
                        header("Location: adminTemplate/pages/sign-up.php");
                    } else {
                        $token = bin2hex(random_bytes(16));
                        $result=UserModel::updateOneById($result["idUser"], ["token" => $token]);
                        $user = UserModel::getOneByToken($token);
                        $_SESSION["info"] = $user;
                       return $user ;

//view/adminDash/dash.php
                    }
                }
            }else{
                $_SESSION["errors"] = $errors;
                header("Location: sign-up.php");
            }
        }catch (PDOException $exception){
            $exception->getMessage();
            $_SESSION["errors"] = $errors;
            print_r($_SESSION["errors"]);
            header("Location: ../adminTemplate/pages/sign-up.php");
        }
    }
    public static function message(){


    }
    
    public static function logout(){
        UserModel::logout();
    }
     
}

        
    

