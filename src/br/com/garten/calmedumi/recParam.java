package br.com.garten.calmedumi;

import java.io.IOException;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/recParam")
public class recParam extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String amostraLab;
		String amostraGrt;

		System.out.println("testando");

		amostraLab = request.getParameter("lab");
		amostraGrt = request.getParameter("grt");
	
		Amostra amostra = new Amostra();
		
		amostra.setAmostraGarten(amostraGrt);
		amostra.setAmostraLaboratorio(amostraLab);
		
		HttpSession sess = request.getSession();
		List<Amostra> amostras = (List<Amostra>) sess.getAttribute("amostras");
		if(amostras == null) {
			amostras = new LinkedList<Amostra>();
		}
		
		amostras.add(amostra);
		sess.setAttribute("amostras", amostras);
		response.sendRedirect("pag1.jsp");
		
	}
}
