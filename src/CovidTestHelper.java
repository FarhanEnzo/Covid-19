/**
 * + * @author erfan
 * + * @since 6/12/20
 * +
 */
public class CovidTestHelper {

    public int getResult(CovidQa covidQa) {
        int result = 0;
        String suggestion ;

        if (covidQa.getAgeGroup().equals("10 - 20")) {
            result = result + 10;
        }
        if (covidQa.getAgeGroup().equals("30 - 40")) {
            result = result + 20;
        }
        if (covidQa.getAgeGroup().equals("30 - 40")) {
            result = result + 30;
        }
        if (covidQa.getAgeGroup().equals("> 40")) {
            result = result + 40;
        }

        if (covidQa.getAgeGroup().equals("96°F-98.6°F")) {
            result = result + 0;
        }
        if (covidQa.getAgeGroup().equals("98.6°F-102°F")) {
            result = result + 10;
        }
        if (covidQa.getAgeGroup().equals("> 102°F")) {
            result = result + 20;
        }

        if (covidQa.getArea().equals("Bashabo")) {
            result = result + 20;
        }

        return result;
    }

}
