
package mvc;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class combustivel extends HttpServlet {

    protected void doPost(HttpServletRequest request , HttpServletResponse response) 
            throws ServletException, IOException {
        
        float preco_alcool  = Float.parseFloat(request.getParameter("preco_alcool"));
        float preco_gasolina = Float.parseFloat(request.getParameter("preco_gasolina"));
        
        float calcular_combustivel = preco_alcool / preco_gasolina;
        String mais_vantajoso = null;
        
        if(calcular_combustivel < 0.7)
           mais_vantajoso = "Mais vantajoso abastecer álcool";
        else
            mais_vantajoso = "Mais vantajoso abastecer gasolina";
       
        request.setAttribute("calcular_combustivel", calcular_combustivel);
        request.setAttribute("mais_vantajoso", mais_vantajoso);
        
        request.getRequestDispatcher("calcularCombustivel.jsp").forward(request, response);{
    
}
    }
}
