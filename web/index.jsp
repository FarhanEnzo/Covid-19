<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <title>COVID-19</title>

<%--    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">--%>
    <link rel="stylesheet" href="resource/css/bootstrap.min.css">
    <link href='https://fonts.googleapis.com/css?family=Allan' rel='stylesheet'>
    <link href='https://fonts.googleapis.com/css?family=Caesar Dressing' rel='stylesheet'>
    <link href='https://fonts.googleapis.com/css?family=Caveat' rel='stylesheet'>
    <link href='https://fonts.googleapis.com/css?family=Graduate' rel='stylesheet'>
    <link href='https://fonts.googleapis.com/css?family=Homenaje' rel='stylesheet'>
    <link href='https://fonts.googleapis.com/css?family=Alef' rel='stylesheet'>

    <script src="resource/js/jquery.min.js"></script>
    <script src="resource/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>

    <script>
        $(document).ready(function() {
            $('#femaleSection').hide();
        });

        function showHideSection() {
            var genderVal = $('input[name="gender"]:checked').val();
            if (genderVal === 'Male') {
                $('#femaleSection').hide();
            } else {
                $('#femaleSection').show();
            }
        }
    </script>

    <style>
        body, html {
            height: 100%;
            margin-bottom:0;
            margin-top: 0;
            margin-left: 0;
            margin-right: 0;
        }

        .bg {
            /* The image used */
            background-image: url("resource/image/cov.jpg");

            /* Full height */
            height: 50%;

            /* Center and scale the image nicely */
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
        }

        *{
            padding:0;
            margin:0;
        }


        /* The footer is fixed to the bottom of the page */

        footer{
            /*position: fixed;*/
            bottom: 0;
        }

        .footer-distributed{
            background-color: #E5E7E9   ;
            box-sizing: border-box;
            width: 100%;
            text-align: left;
            font: bold 16px sans-serif;
            padding: 10px 10px 20px 10px;
            /*position: fixed;*/
            bottom: 0;
        }

    </style>

</head>

<body style="background-color: #FBFCFC">

<%--<nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top">--%>

<%--    <h1 class="text-secondary" style="font-family: Caesar Dressing, monospace;font-size: 22px" >--%>
<%--        Covid-19 Risk Test !</h1>--%>

<%--</nav>--%>

<div class="bg"></div>

<div class="alert alert-warning"
     role="alert"
     style="font-family: DejaVu Sans Mono, monospace; font-size: 10px">
    <p> People with COVID-19 have had a wide range of
        symptoms reported – ranging from mild symptoms to
        severe illness.
        Symptoms may appear 2-14 days after
        exposure to the virus.

        Anyone can get COVID-19, and most infections are usually mild,
        especially in children and young adults. But if you aren’t in an
        area where COVID-19 is spreading, haven’t traveled from an area
        where it’s spreading, and haven’t been in contact with someone
        who has it, your risk of infection is low.

        People over 65 are most likely to get a serious illness,
        as are those who live in nursing homes or long-term care facilities,
        who have weakened immune systems.
    </p>
</div>
<br>
<br>

<div class="container">
    <div class="row">
        <div class="col-sm-2">
        </div>
        <%--                                          started from here--%>
        <div class="col-sm-8">
            <h6 class="text-info text-center"
                style="font-family: DejaVu Sans Mono, monospace">
                Co-operate us with some information below</h6>
            <br>

            <form action="Cov" method="post">

                <div style="font-family: DejaVu Sans Mono, monospace">
                    <br>
                <%--                                              gender section--%>

                    <div class="shadow p-3 mb-5 bg-white rounded alert alert-info"
                         role="alert" >
                        <label class="text-success"
                               style="font-family:Alef ;
                                font-size: 15px">Mention your gender : </label>

                        <div class="form-check">
                            <input type="radio"
                                   class="form-check-input"
                                   id="genderMale"
                                   name="gender"
                                   value="Male"
                                   onclick="showHideSection()" checked> Male
                        </div>

                        <div class="form-check">
                            <input type="radio"
                                   class="form-check-input"
                                   id="genderFemale"
                                   name="gender"
                                   value="Female"
                                   onclick="showHideSection()"> Female
                        </div>

                    </div>

<%--                                                                  female section--%>

                    <div id="femaleSection"
                         class="shadow p-3 mb-5 bg-white rounded alert alert-info"
                         role="alert" >

                        <label class="text-success"
                               style="font-family:Alef ;
                               font-size: 15px">Are you pregnant ?</label>

                        <div class="form-check">
                            <input type="radio"
                                   class="form-check-input"
                                   id="femaleYes"
                                   name="pregnant"
                                   value="yes"> yes
                        </div>

                        <div class="form-check">
                            <input type="radio"
                                   class="form-check-input"
                                   id="femaleNo"
                                   name="pregnant"
                                   value="no"> no
                        </div>
                    </div>

                    <%--                                 age section--%>

                    <div class="shadow p-3 mb-5 bg-white rounded alert alert-info" role="alert" >
                        <label class="text-success"
                               style="font-family:Alef ;
                               font-size: 15px">Mention your age : </label>

                        <div class="form-check">
                            <input type="radio"
                                   class="form-check-input"
                                   id="age1"
                                   name="age"
                                   value="0 - 20"
                                   checked> 0 - 20

                        </div>

                        <div class="form-check">
                            <input type="radio"
                                   class="form-check-input"
                                   id="age2"
                                   name="age"
                                   value="21 - 30"> 21 - 30
                        </div>

                        <div class="form-check">
                            <input type="radio"
                                   class="form-check-input"
                                   id="age3"
                                   name="age"
                                   value="31 - 40"> 31 - 40
                        </div>

                        <div class="form-check">
                            <input type="radio"
                                   class="form-check-input"
                                   id="age4"
                                   name="age"
                                   value="41 - 50"> 41 - 50
                        </div>

                        <div class="form-check">
                            <input type="radio"
                                   class="form-check-input"
                                   id="age5"
                                   name="age"
                                   value="51 - 60"> 51 - 60
                        </div>

                        <div class="form-check">
                            <input type="radio"
                                   class="form-check-input"
                                   id="age6"
                                   name="age"
                                   value=" 60+"> 60+
                        </div>


                    </div>

                    <%--            temperature section--%>

                    <div class="shadow p-3 mb-5 bg-white rounded alert alert-info" role="alert" >

                        <label class="text-success"
                               style="font-family:Alef ;font-size: 15px">
                            Mention your temperature :
                            <span style="font-size: 10px"> (in Fahrenheit)</span>
                        </label>

                        <div class="form-check">
                            <input type="radio"
                                   class="form-check-input"
                                   id="radio1"
                                   name="temperature"
                                   value="96F-98.6F" checked> 96°F - 98.6°F
                        </div>

                        <div class="form-check">
                            <input type="radio"
                                   class="form-check-input"
                                   id="radio2"
                                   name="temperature"
                                   value="98.6F-102F"> 98.6°F - 102°F
                        </div>

                        <div class="form-check">
                            <input type="radio"
                                   class="form-check-input"
                                   id="radio3"
                                   name="temperature"
                                   value="102F"> 102°F +
                        </div>
                    </div>

                    <%--                  symptoms section--%>

                    <div class="shadow p-3 mb-5 bg-white rounded alert alert-info" role="alert" >
                        <label class="text-success"
                               style="font-family:Alef ;font-size: 15px">
                            Mention your symptoms :
                            <span style="font-size: 10px">(You can select multiple)</span></label>

                        <div class="form-check">
                            <input type="checkbox"
                                   class="form-check-input"
                                   id="symptoms1"
                                   name="symptoms"
                                   value="Fever or chills"
                                   checked> Fever or chills

                        </div>

                        <div class="form-check">
                            <input type="checkbox"
                                   class="form-check-input"
                                   id="symptoms2"
                                   name="symptoms"
                                   value="Trouble breathing or shortness of breath"> Trouble breathing or shortness of breath
                        </div>

                        <div class="form-check">
                            <input type="checkbox"
                                   class="form-check-input"
                                   id="symptoms3"
                                   name="symptoms"
                                   value="Chest pain or pressure"> Chest pain or pressure
                        </div>

                        <div class="form-check">
                            <input type="checkbox"
                                   class="form-check-input"
                                   id="symptoms4"
                                   name="symptoms"
                                   value="Dry cough"> Dry cough
                        </div>

                        <div class="form-check">
                            <input type="checkbox"
                                   class="form-check-input"
                                   id="symptoms5"
                                   name="symptoms"
                                   value="Fatigue"> Fatigue
                        </div>

                        <div class="form-check">
                            <input type="checkbox"
                                   class="form-check-input"
                                   id="symptoms6"
                                   name="symptoms"
                                   value="Muscle or body aches"> Muscle or body aches
                        </div>

                        <div class="form-check">
                            <input type="checkbox"
                                   class="form-check-input"
                                   id="symptoms7"
                                   name="symptoms"
                                   value="Sore throat"> Sore throat
                        </div>

                        <div class="form-check">
                            <input type="checkbox"
                                   class="form-check-input"
                                   id="symptoms8"
                                   name="symptoms"
                                   value="Mucus or phlegm"> Mucus or phlegm
                        </div>

                        <div class="form-check">
                            <input type="checkbox"
                                   class="form-check-input"
                                   id="symptoms9"
                                   name="symptoms"
                                   value="None of the above"> None of the above
                        </div>
                    </div>

                    <%--                  Any disease you have suffered from below--%>


                    <div class="shadow p-3 mb-5 bg-white rounded alert alert-info" role="alert" >
                        <label class="text-success"
                               style="font-family:Alef ;font-size: 15px">
                            Any disease you have suffered or suffering ?
                            <span style="font-size: 10px">(You can select multiple)</span>
                        </label>

                        <div class="form-check">
                            <input type="checkbox"
                                   class="form-check-input"
                                   id="preDisease1"
                                   name="preDisease"
                                   value="Blood pressure" checked> High blood pressure

                        </div>
                        <div class="form-check">
                            <input type="checkbox"
                                   class="form-check-input"
                                   id="preDisease2"
                                   name="preDisease"
                                   value=" Asthma"
                                   > Asthma

                        </div>

                        <div class="form-check">
                            <input type="checkbox"
                                   class="form-check-input"
                                   id="preDisease4"
                                   name="preDisease"
                                   value="Liver disease"
                                   > Liver disease

                        </div>

                        <div class="form-check">
                            <input type="checkbox"
                                   class="form-check-input"
                                   id="preDisease5"
                                   name="preDisease"
                                   value="Diabetics"> Diabetics
                        </div>

                        <div class="form-check">
                            <input type="checkbox"
                                   class="form-check-input"
                                   id="preDisease6"
                                   name="preDisease"
                                   value="Cancer"> Cancer treatment, especially chemotherapy
                        </div>

                        <div class="form-check">
                            <input type="checkbox"
                                   class="form-check-input"
                                   id="preDisease7"
                                   name="preDisease"
                                   value="Kidney disease"> Kidney disease that needs dialysis
                        </div>

                        <div class="form-check">
                            <input type="checkbox"
                                   class="form-check-input"
                                   id="preDisease8"
                                   name="preDisease"
                                   value="Heart disease"> Heart disease
                        </div>

                        <div class="form-check">
                            <input type="checkbox"
                                   class="form-check-input"
                                   id="preDisease9"
                                   name="preDisease"
                                   value="Lung disease"> Lung disease
                        </div>
                        <div class="form-check">
                            <input type="checkbox"
                                   class="form-check-input"
                                   id="preDisease10"
                                   name="preDisease"
                                   value="None of the above"> None of the above
                        </div>
                    </div>

<%--                                        habit--%>

                    <div class="shadow p-3 mb-5 bg-white rounded alert alert-info" role="alert" >
                        <label class="text-success"
                               style="font-family:Alef ;font-size: 15px"> Any habit of smoking ?
                        </label>

                        <div class="form-check">
                            <input type="radio"
                                   class="form-check-input"
                                   id="habit1"
                                   name="habit"
                                   value="Yes" checked> Yes

                        </div>

                        <div class="form-check">
                            <input type="radio"
                                   class="form-check-input"
                                   id="habit2"
                                   name="habit"
                                   value="No"> No

                        </div>

                        <div class="form-check">
                            <input type="radio"
                                   class="form-check-input"
                                   id="habit3"
                                   name="habit"
                                   value="Often"> Often
                        </div>
                    </div>
                </div>

                <%--                  another block--%>

                <div class="shadow p-3 mb-5 bg-white rounded alert alert-info" role="alert" >

                    <div class="text-success">
                        <label for="name"
                               style="font-family:Alef ;font-size: 15px">Name</label>
                        <input type="text"
                               class="form-control form-control-sm"
                               id="name"
                               placeholder="Name"
                               name="name">
                    </div>
                    <br>

                    <div class="text-success">
                        <label for="area"
                               style="font-family:Alef ;font-size: 15px">Select your living area</label>
                        <select  class="form-control form-control-sm"
                                 id="area"
                                 name="area">
                            <option value="" disabled selected>Choose your option</option>
<%--                            <option value="" disabled selected--%>
<%--                                    style="font-family: Andale Mono, monospace "--%>
<%--                                    class="text-info">Under Dhaka North City Corporation</option>--%>

                            <option>Bashundhara</option>
                            <option>Badda</option>
                            <option>Cantonment</option>
                            <option>Mohakhali</option>
                            <option>Tejgaon</option>
                            <option>Rampura</option>
                            <option>Aftabnagar</option>
                            <option>Mohammadpur</option>
                            <option>Kallyanpur</option>
                            <option>Gulshan</option>
                            <option>Moghbazar</option>
                            <option>Airport</option>
                            <option>Banasree</option>
                            <option>Rayerbazar</option>
                            <option>Rajabazar</option>
                            <option>Uttara</option>
                            <option>Mirpur</option>



                            <option>Jatrabari</option>
                            <option>Demra</option>
                            <option>Gendaria</option>
                            <option>Lalbagh</option>
                            <option>Azimpur</option>
                            <option>Basabo</option>
                            <option>Paltan</option>
                            <option>Kalabagan</option>
                            <option>Ramna</option>
                            <option>Sutrapur</option>
                            <option>Malibagh</option>
                            <option>Kotwali</option>
                            <option>Tikatoli</option>
                            <option>Shahjahanpur</option>
                            <option>Motijeel</option>
                            <option>Shahjahanpur</option>
                            <option>Wari</option>
                            <option>Khilgaon</option>
                            <option>Poribagh</option>
                            <option>Shahbag</option>
                            <option>Eskaton</option>
                            <option>Kodomtoli</option>
                            <option>Laxmibazar</option>
                            <option>Elephant</option>
                            <option>Segunbagicha</option>


                        </select>
                    </div>
<%--                --%>
                </div>

                <br>
                <br>

                <%--                  submit button--%>

                <div class="form-group">
                    <button type="submit"
                            class="btn btn-outline-success btn-block"
                            style="font-family: Andale Mono, monospace">Submit
                    </button>
                </div>
            </form>
        </div>

        <%--      ends here--%>

        <div class="col-sm-2">
        </div>
    </div>
</div>

<br>
<br>
<br>
<br>

<div >
    <footer class="footer-distributed">
        <div  style="font-family: Andale Mono, monospace;
          text-align: center;">@stayHome staySafe</div>
    </footer>
</div>

</body>
</html>
