public class CovidTestHelper {

    public int getResult(CovidQa covidQa) {

        int result = 0;

        if ("0 - 20".equals(covidQa.getAgeGroup())) {
            result = result + 3;
        }
        if (covidQa.getAgeGroup().equals("21 - 30")) {
            result = result + 5;
        }
        if (covidQa.getAgeGroup().equals("32 - 40")) {
            result = result + 10;
        }
        if (covidQa.getAgeGroup().equals("41 - 50")) {
            result = result + 20;
        }
        if (covidQa.getAgeGroup().equals("52 - 60")) {
            result = result + 30;
        }
        if (covidQa.getAgeGroup().equals("60+")) {
            result = result + 40;
        }

        if (covidQa.getTemperature().equals("96F-98.6F")) {
            result = result + 0;
        }

        if (covidQa.getTemperature().equals("98.6F-102F")) {
            result = result + 23;
        }

        System.out.println("helper: temperature: " + covidQa.getTemperature());
        if (covidQa.getTemperature().equals("102F")) {
            result = result + 33;
        }

        if (exist(covidQa.getSymptoms(),"Fever or chills")) {
            result = result + 12;
        }

        if (exist(covidQa.getSymptoms(), "Trouble breathing or shortness of breath")) {
            result = result + 21;
        }

        if (exist(covidQa.getSymptoms(),"Chest pain or pressure")) {
            result = result + 20;
        }

        if (exist(covidQa.getSymptoms(),"Dry cough")) {
            result = result + 9;
        }

        if (exist(covidQa.getSymptoms(),"Fatigue")) {
            result = result + 19;
        }
        if (exist(covidQa.getSymptoms(),"Muscle or body aches")) {
            result = result + 15;
        }
        if (exist(covidQa.getSymptoms(),"Sore throat")) {
            result = result + 10;
        }
        if (exist(covidQa.getSymptoms(),"Mucus or phlegm")) {
            result = result + 9;
        }
        if (exist(covidQa.getSymptoms(),"None of the above")) {
            result = result + 0;
        }


        if (exist(covidQa.getPreDisease(),"Blood pressure")) {
            result = result + 9;
        }

        if (exist(covidQa.getPreDisease(),"Asthma")) {
            result = result + 22;
        }

        if (exist(covidQa.getPreDisease(),"Liver disease")) {
            result = result + 9;
        }

        if (exist(covidQa.getPreDisease(),"Diabetics")) {
            result = result + 9;
        }

        if (exist(covidQa.getPreDisease(),"Cancer")) {
            result = result + 19;
        }

        if (exist(covidQa.getPreDisease(),"Kidney disease")) {
            result = result + 9;
        }

        if (exist(covidQa.getPreDisease(),"Heart disease")) {
            result = result + 9;
        }
        if (exist(covidQa.getPreDisease(),"Lung disease")) {
            result = result + 23;
        }
        if (exist(covidQa.getPreDisease(),"None of the above")) {
            result = result + 0;
        }
        if (covidQa.getHabit().equals("Yes")) {
            result = result + 7;

        }
        if (covidQa.getHabit().equals("No")) {
            result = result + 0;


        }
        if (covidQa.getHabit().equals("Often")) {
            result = result + 5;

        }


        return result;
    }

    public int smokeHabit (CovidQa covidQa) {

        int smokeHabit = 0;

        if (covidQa.getHabit().equals("No")) {
            smokeHabit = smokeHabit + 0;
        }

        if (covidQa.getHabit().equals("Yes")) {
            smokeHabit = smokeHabit + 1;
        }
        if (covidQa.getHabit().equals("Often")) {
            smokeHabit = smokeHabit + 2;
        }

        return smokeHabit;
    }

    public int pregnant (CovidQa covidQa) {

        int pregnant = 0;

        if (covidQa.getPregnant().equals("yes")) {
            pregnant = pregnant + 1;

        }
        if (covidQa.getPregnant().equals("no")) {
            pregnant = pregnant + 0;
        }
        return pregnant;
    }

    public boolean exist(String[] array, String str) {
        for (int i = 0; i < array.length; i++) {
            if (str.equals(array[i])) {
                return true;
            }
        }

        return false;
    }
}
