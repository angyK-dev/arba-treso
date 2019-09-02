<?php
    /**
     * Created by PhpStorm.
     * User: angem
     * Date: 27-Aug-19
     * Time: 2:56 PM
     */

    /*if (isset($_GET['typ'])) {
        $id_typ = $_GET['typ'];

        $libelle = $id_typ == 1 ? "Encaissements" : "Décaissements";
    }*/
?>
<input type="hidden" id="head_title" value="Liste des Mouvements">
<div class="bg-white col col-lg-10 mx-auto p-2" style="border-radius: 10px">
    <div class="container-fluid">
        <div class="row mb-4 mx-auto">
            <h2 class="col-auto text-center py-2 px-5 mx-auto cadre-titre">Liste des Mouvements <span>🔄</span></h2>
        </div>
        <div class="col-auto row my-2 mx-0 cadre p-4">
            <div class="col col-lg-auto">
                <label for="date_ope">
                    <input type="date" class="form-control form-control-sm" id="date_ope"
                           placeholder="Membre..." aria-describedby="textHelp">
                    <small id="textHelp" class="form-text text-muted">Renseigner la date de l'opération.
                    </small>
                </label>
            </div>
            <div class="col col-lg-auto">
                <button class="btn btn-sm btn-primary px-4 font-weight-bolder" onclick="filterMouvements()">
                    Afficher <i class="fa fa-arrow-right"></i>
                </button>
            </div>
        </div>
    </div>
    <div id="feedback" class="my-4">
        <div class="border border-primary rounded">
            <table class="table table-sm table-hover bg-light" id="">
                <thead class="bg-primary text-light">
                <tr class="row mx-0">
                    <th class="col-1 text-center">N°</th>
                    <th class="col-2">Date</th>
                    <th class="col">Commentaire</th>
                    <th class="col-2">Montant</th>
                    <th class="col-2">Interlocuteur</th>
                </tr>
                </thead>
                <tbody id="liste_operations"></tbody>
            </table>
        </div>
    </div>

    <!-- Modals -->
    <div class="modal fade" id="feedbackModal" tabindex="-1" role="dialog" aria-labelledby="feedbackModalLabel"
         aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title" id="feedbackModalLabel">ARBA ❌</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <blockquote class="blockquote">
                        <p class="mb-0"></p>
                    </blockquote>
                </div>
            </div>
        </div>
    </div>
</div>