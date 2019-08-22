<?php
    /**
     * Created by PhpStorm.
     * User: angem
     * Date: 18-Aug-19
     * Time: 12:35 PM
     */
    if (isset($_POST['dateOpe']) && isset($_POST['nom_dest']) && isset($_POST['pren_dest']) && isset($_POST['mtt']) && isset($_POST['mbr_inter']) && isset($_POST['com_dest']) && isset($_POST['cate'])) {

        $date_ope = $_POST['dateOpe'];
        $montant = $_POST['mtt'];
        $nom_dest = $_POST['nom_dest'];
        $pren_dest = $_POST['pren_dest'];
        $titre_dest = isset($_POST['titre_dest']) ? $_POST['titre_dest'] : "";
        $tel_dest = isset($_POST['tel_dest']) ? $_POST['tel_dest'] : "";
        $com_dest = isset($_POST['com_dest']) ? $_POST['com_dest'] : "";
        $mbr_intermediaire = $_POST['mbr_inter'];
        $commentaires = $_POST['com'];
        $id_categorie = $_POST['cate'];

        $nom_mbr = explode(' ', $mbr_intermediaire, 2); //
        $nom = $nom_mbr[0];
        $prenoms = $nom_mbr[1];

        $id_mois = "M" . date('m');
        $year = date('y');

        $connection = mysqli_connect('localhost', 'root', '', 'gestion_treso_arba');

        $com = mysqli_real_escape_string($connection, $commentaires);

        // 1- First, we create a new line in table 'operations'
        // 2- Then, we do the same in table 'interlocuteurs'
        // 3- Finally, we do the same in 'operations_interlocuteurs'

        /* - 1 - */
        $sql_last = "SELECT id_operation FROM operations ORDER BY id_operation DESC LIMIT 1";

        $result = mysqli_query($connection, $sql_last);
        $number = 0;

        if ($result->num_rows > 0) {
            $ids = $result->fetch_all(MYSQLI_ASSOC);

            foreach ($ids as $id) {
                $id_last_op = $id['id_operation'];
            }

            $id_year = substr($id_last_op, 0, 2);

            $number = $id_year == $year ? substr($id_last_op, 6) : $number;
        }

        $number = sprintf('%04d', ++$number);
        $id_ope = $year . "-OP-" . $number;
        $id_mois = "M" . date('m');
        $today = date('Y-m-d');
        $an = substr($today, 0, 4);
        $obs = "DECAISSEMENT";

        $sql_intermediaire = "SELECT id_membre FROM membres WHERE nom_membre = '{$nom}' AND pren_membre = '{$prenoms}'";
        $result = mysqli_query($connection, $sql_intermediaire);
        $ids = $result->fetch_all(MYSQLI_ASSOC);

        foreach ($ids as $id) {
            $id_intermediaire = $id['id_membre'];
        }

        $sql_op = "INSERT INTO operations (id_operation, id_membre, id_mois, id_categorie, montant_operation, obs_operation, date_saisie_operation, date_operation, annee_operation) VALUES ('{$id_ope}', '{$id_intermediaire}', '{$id_mois}', '{$id_categorie}', {$montant}, '{$obs}', '{$today}', '{$date_ope}', {$an})";
        if ($result = mysqli_query($connection, $sql_op)) {

            /* - 2 - */

            // Checking whether the name entered exists
            $sql_exist = "SELECT * FROM interlocuteurs WHERE nom_interlocuteur = '{$nom_dest}' AND pren_interlocuteur = '{$pren_dest}'";
            $result = mysqli_query($connection, $sql_exist);
            if ($result->num_rows > 0) {
                // Getting the id of the existing "interlocuteur"
                $ids = $result->fetch_all(MYSQLI_ASSOC);

                foreach ($ids as $id) {
                    $id_interlocuteur = $id['id_interlocuteur'];
                }
            }
            else {
                $sql_last = "SELECT id_interlocuteur FROM interlocuteurs ORDER BY id_interlocuteur DESC LIMIT 1";

                $result = mysqli_query($connection, $sql_last);
                $number = 0;
                if ($result->num_rows > 0) {
                    $ids = $result->fetch_all(MYSQLI_ASSOC);

                    foreach ($ids as $id) {
                        $id_last = $id['id_interlocuteur'];
                    }

                    $number = substr($id_last, 3);
                }

                $number = sprintf('%02d', ++$number);
                $id_interlocuteur = "ITL" . $number;
            }

            // Saving in table 'interlocuteurs'
            $sql_dest = "INSERT INTO interlocuteurs (id_interlocuteur, nom_interlocuteur, pren_interlocuteur, titre_interlocuteur, contact_interlocuteur, localite_interlocuteur) VALUES ('{$id_interlocuteur}', '{$nom_dest}', '{$pren_dest}', '{$titre_dest}', '{$tel_dest}', '{$com_dest}')";

            if ($result = mysqli_query($connection, $sql_dest)) {

                /* - 3 - */
                // Saving in table 'operations_interlocuteurs'
                $sql_op_dest = "INSERT INTO operations_interlocuteurs (id_operation, id_interlocuteur, date_operation_interlocuteur, commentaires) VALUES ('{$id_ope}', '{$id_interlocuteur}', '{$date_ope}', '{$com}')";

                if ($result = mysqli_query($connection, $sql_op_dest))
                    echo "Saved";
                else {
                    echo "{$id_ope} saved - {$id_interlocuteur} saved - {$id_ope}-{$id_interlocuteur} not saved  -  ";
                    echo $sql_op_dest;
                }

            }
            else {
                echo "{$id_ope} saved - {$id_interlocuteur} not saved  -  ";
                echo $sql_dest;
            }

        }
        else {
            echo "{$id_ope} not saved  -  ";
            echo $sql_intermediaire . "  -  ";
            echo $sql_op;
        }

    }
    else
        echo "Veuillez renseigner tous les champs";