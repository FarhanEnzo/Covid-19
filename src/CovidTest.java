
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
        String habit = req.getParameter("habit");
        String pregnant = req.getParameter("pregnant");

        req.setAttribute("gender", gender);
        req.setAttribute("ageGroup", ageGroup);
        req.setAttribute("temperature", temperature);
        req.setAttribute("symptoms", symptoms);
        req.setAttribute("preDisease", preDisease);
        req.setAttribute("name", name);
        req.setAttribute("area", area);
        req.setAttribute("habit", habit);
        req.setAttribute("pregnant", pregnant);



        CovidTestHelper helper = new CovidTestHelper();

        System.out.println("temperature: " + temperature);
        CovidQa covidQa = new CovidQa( name, ageGroup,  area,
                 temperature, symptoms, gender, preDisease, habit, pregnant);

        int result = helper.getResult(covidQa);
        req.setAttribute("result", result);

        int smokeHabit = helper.smokeHabit(covidQa);
        req.setAttribute("smokeHabit", smokeHabit);


        int Qpregnant = helper.pregnant(covidQa);
        req.setAttribute("Qpregnant", Qpregnant);

        req.getRequestDispatcher("result.jsp").forward(req, resp);
    }
}
