package edu.b2b.a18.a18_projet_final.Controler;

import edu.b2b.a18.a18_projet_final.Dal.EtudiantDAO;
import edu.b2b.a18.a18_projet_final.Dal.EtudiantDAOLocal;
import edu.b2b.a18.a18_projet_final.Model.Etudiant;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
@WebServlet(name = "HomeServlet", value = "/")
public class HomeServlet extends HttpServlet {
    private String message;

    public void init() {
        message = "Hello World!";
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        try {
            EtudiantDAO etudiantDAO = new EtudiantDAOLocal();
            List<Etudiant> etudiants= new ArrayList<>();
            etudiants = etudiantDAO.getAllEtudiants();
            request.setAttribute("etudiants", etudiants);
            String message = "Hello World!";
            request.setAttribute("message", message);
            request.getRequestDispatcher("index.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void destroy() {
    }
}
