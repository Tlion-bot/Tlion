import a.produce;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "AddCartTipServlet", value = "/addCartTip")
public class AddCartTipServlet extends HttpServlet {
    @Override

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");

        HttpSession session = request.getSession();
        produce[] produces=(produce[])session.getAttribute("produce");
        String a=request.getParameter("id");
        int a2 = Integer.parseInt(a)-1;
        for(int i=0;i<4;i++)
        {   if (i==a2)
            produces[i].setNum(produces[i].getNum()+1);
            }
        session.setAttribute("produce", produces);
        response.getWriter().println("<h1>已加入购物车<br/>"
                + "<a href='"+request.getContextPath()+"/shopping.jsp'>继续购物</a><br/>"
                + "<a href='"+request.getContextPath()+"/show.jsp'>查看购物车</a><br/>");
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
