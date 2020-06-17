
public class CovidQa {

    private String gender;
    private String ageGroup;
    private String temperature;
    private String[] symptoms;
    private String[] preDisease;
    private String habit;
    private String name;
    private String area;
    private String pregnant;



    public CovidQa(String name, String ageGroup, String area,
                   String temperature, String[] symptoms,
                   String gender,String[] preDisease, String habit, String pregnant) {
        this.name = name;
        this.ageGroup = ageGroup;
        this.area = area;
        this.temperature = temperature;
        this.symptoms = symptoms;
        this.gender = gender;
        this.preDisease = preDisease;
        this.habit = habit;
        this.pregnant = pregnant;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAgeGroup() {
        return ageGroup;
    }

    public void setAgeGroup(String ageGroup) {
        this.ageGroup = ageGroup;
    }

    public String getArea() {
        return area;
    }

    public void setArea(String area) {
        this.area = area;
    }

    public String getTemperature() {
        return temperature;
    }

    public void setTemperature(String temperature) {
        this.temperature = temperature;
    }

    public String[] getSymptoms() {
        return symptoms;
    }

    public void setSymptoms(String[] symptoms) {
        this.symptoms = symptoms;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String[] getPreDisease() {
        return preDisease;
    }

    public void setPreDisease(String[] preDisease) {
        this.preDisease = preDisease;
    }

    public String getHabit() {
        return habit;
    }
    public void setHabit(String habit) {
        this.habit = habit;
    }

    public String getPregnant() {
        return pregnant;
    }

    public void setPregnant(String pregnant) {
        this.pregnant = pregnant;
    }
}
