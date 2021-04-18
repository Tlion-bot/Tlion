import a.produce;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "deleteServlet", value = "/deleteServlet")
public class deleteServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");

        HttpSession session = request.getSession();
        produce[] produces=(produce[])session.getAttribute("produce");
        String a=request.getParameter("id");
        int a2 = Integer.parseInt(a)-1;
        for(int i=0;i<4;i++)
        {   if (i==a2&&produces[i].getNum()!=0)
            produces[i].setNum(produces[i].getNum()-1);
        }
        session.setAttribute("produce", produces);

        request.getRequestDispatcher("/show.jsp").forward(request,response) ;
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
