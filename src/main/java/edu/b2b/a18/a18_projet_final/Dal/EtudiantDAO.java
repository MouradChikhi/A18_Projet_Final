package edu.b2b.a18.a18_projet_final.Dal;

import edu.b2b.a18.a18_projet_final.Model.Etudiant;

import java.util.List;

public interface EtudiantDAO {
    List<Etudiant> getAllEtudiants();
    void addEtudiant(Etudiant etudiant);
}
