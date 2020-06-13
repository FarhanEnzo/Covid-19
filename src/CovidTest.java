
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class CovidTest extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String gender = req.getParameter("gender");
        String ageGroup = req.getParameter("age");
        String temperature = req.getParameter("temperature");
        String[] symptoms = req.getParameterValues("symptoms");
        String[] preDisease = req.getParameterValues("preDisease");
        String name = req.getParameter("name");
        String area = req.getParameter("area");


        req.setAttribute("name", name);
        req.setAttribute("ageGroup", ageGroup);
        req.setAttribute("area", area);
        req.setAttribute("temperature", temperature);

        CovidTestHelper helper = new CovidTestHelper();
        CovidQa covidQa = new CovidQa( name, ageGroup,  area,
                 temperature, symptoms, gender, preDisease);

        int result = helper.getResult(covidQa);

        req.setAttribute("result", result);

        req.getRequestDispatcher("result.jsp").forward(req, resp);
    }
}
