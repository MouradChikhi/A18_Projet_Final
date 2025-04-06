package edu.b2b.a18.a18_projet_final.Dal;

import edu.b2b.a18.a18_projet_final.DL.LocalDataStore;
import edu.b2b.a18.a18_projet_final.Model.Etudiant;

import java.util.ArrayList;
import java.util.List;

public class EtudiantDAOLocal implements EtudiantDAO {
    private LocalDataStore datastore;

    public EtudiantDAOLocal() {
        this.datastore = LocalDataStore.getInstance();
    }

    @Override
    public List<Etudiant> getAllEtudiants() {
        if (this.datastore == null) {
            throw new IllegalStateException("La base de données n'est pas initialisée.");
        }
        return new ArrayList<>(this.datastore.getEtudiants()); // Retourne une copie de la liste pour éviter les modifications externes
    }

    @Override
    public void addEtudiant(Etudiant etudiant) {
        if (this.datastore == null) {
            throw new IllegalStateException("La base de données n'est pas initialisée.");
        }
        this.datastore.addEtudiant(etudiant);
    }
}
