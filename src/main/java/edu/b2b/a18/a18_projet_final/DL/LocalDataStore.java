package edu.b2b.a18.a18_projet_final.DL;

import edu.b2b.a18.a18_projet_final.Model.Etudiant;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class LocalDataStore {

    private List<Etudiant> etudiants;
    private static final LocalDataStore instance = new LocalDataStore();

    private LocalDataStore() {
        // Sample data
        this.etudiants = new ArrayList<>(Arrays.asList(
                new Etudiant("Jean", "Dupont", "jeandupont@gmail.com", "Mathématiques"),
                new Etudiant("Marie", "Blanco", "marieb@gmail.com", "Informatique"),
                new Etudiant("Jim", "Beam", "jbeam@live.com", "Physique"),
                new Etudiant("Richard", "Gagneu", "richardgagneu@hotmail.com", "Chimie"),
                new Etudiant("Philippe", "Savoyard", "psavoyard@gmail.com", "Biologie"),
                new Etudiant("Sylvie", "Duhamel", "sylvieduhamel@gmail.com", "Géologie")
        ));
    }

    public static LocalDataStore getInstance() {
        return instance;
    }

    public List<Etudiant> getEtudiants() {
        return new ArrayList<>(etudiants); // Retourne une copie de la liste pour éviter les modifications externes
    }

    public void addEtudiant(Etudiant etudiant) {
        this.etudiants.add(etudiant);
    }

    public boolean removeEtudiant(int id) {
        return this.etudiants.removeIf(e -> e.getId() == id);
    }
}
