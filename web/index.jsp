<%--
  Created by IntelliJ IDEA.
  User: erfan
  Date: 6/12/20
  Time: 12:43 PM
  To change this template use File | Settings | File Templates.
--%>


<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <title >COVID-19 TEST</title>

    <link rel="stylesheet" href="resource/css/bootstrap.min.css">
    <script src="resource/js/bootstrap.min.js"></script>

</head>
<body  style="background-color: #FBFCFC">

<div class="container">
    <div class="row" >
        <div class="col-sm" >
        </div>

        <%--      started from here--%>

        <div class="col-sm" >

          <h2 class="text-danger; text-center"
              style="font-family: DejaVu Sans Mono, monospace;
              padding-top: 20px">
            Covid-19 Test !</h2>

          <br>
          <br>

          <form action="Cov" method="post">

              <div class="shadow p-3 mb-5 bg-white rounded">

                <div>
                  <label class="text-success"
                         style="font-family: Andale Mono, monospace">Mention your gender : </label>

                  <div class="form-check">
                    <input type="radio"
                           class="form-check-input"
                           id="rad1"
                           name="gender"
                           value="Male"
                           checked> Male

                  </div>

                  <div class="form-check">
                    <input type="radio"
                           class="form-check-input"
                           id="rad2"
                           name="gender"
                           value="Female"> Female
                  </div>

                </div>
                <br>

                <%--                  age section--%>

                <div>
                  <label class="text-success"
                         style="font-family: Andale Mono, monospace">Mention your age : </label>

                  <div class="form-check">
                    <input type="radio"
                           class="form-check-input"
                           id="radi1"
                           name="age"
                           value="10 - 20"
                           checked> 10 - 20

                  </div>

                  <div class="form-check">
                    <input type="radio"
                           class="form-check-input"
                           id="radi2"
                           name="age"
                           value="30 - 40"> 20 - 30
                  </div>

                  <div class="form-check">
                    <input type="radio"
                           class="form-check-input"
                           id="radi3"
                           name="age"
                           value="30 - 40"> 30 - 40
                  </div>

                  <div class="form-check">
                    <input type="radio"
                           class="form-check-input"
                           id="radi4"
                           name="age"
                           value="> 40"> > 40
                  </div>

                </div>
                <br>

                <%--            temperature section--%>

                <div>

                  <label class="text-success"
                         style="font-family: Andale Mono, monospace">Mention your temperature : </label>

                  <div class="form-check">
                    <input type="radio"
                           class="form-check-input"
                           id="radio1"
                           name="temperature"
                           value="96°F-98.6°F" checked>
                    শরীরের তাপমাত্রা স্বাভাবিক আছে 96°F-98.6°F
                  </div>

                  <div class="form-check">
                    <input type="radio"
                           class="form-check-input"
                           id="radio2"
                           name="temperature"
                           value="98.6°F-102°F"> জ্বর 98.6°F-102°F
                  </div>

                  <div class="form-check">
                    <input type="radio"
                           class="form-check-input"
                           id="radio3"
                           name="temperature"
                           value="> 102°F">
                    অনেক জ্বর > 102°F
                  </div>
                </div>
                <br>

                <%--                  symptoms section--%>

                <div>
                  <label class="text-success"
                         style="font-family: Andale Mono, monospace">Mention your symptoms : </label>
                  <div class="form-check">
                    <input type="checkbox"
                           class="form-check-input"
                           id="radio4"
                           name="symptoms"
                           value="Fever"
                           checked> Fever

                  </div>

                  <div class="form-check">
                    <input type="checkbox"
                           class="form-check-input"
                           id="radio5"
                           name="symptoms"
                           value="Difficulty breathing or shortness of breath"> Difficulty breathing or shortness of breath
                  </div>

                  <div class="form-check">
                    <input type="checkbox"
                           class="form-check-input"
                           id="radio6"
                           name="symptoms"
                           value="Chest pain or pressure"> Chest pain or pressure
                  </div>

                  <div class="form-check">
                    <input type="checkbox"
                           class="form-check-input"
                           id="radio7"
                           name="symptoms"
                           value="Dry cough"> Dry cough
                  </div>

                  <div class="form-check" >
                    <input type="checkbox"
                           class="form-check-input"
                           id="radio66"
                           name="symptoms"
                           value="None of the above"> None of the above
                  </div>
                </div>
                <br>

                <%--                  Any disease you have suffered from below--%>


                <div>
                  <label class="text-success"
                         style="font-family: Andale Mono, monospace">Any disease you have suffered from below ? </label>

                  <div class="form-check">
                    <input type="checkbox"
                           class="form-check-input"
                           id="radio8"
                           name="preDisease"
                           value="Blood pressure"
                           checked> Blood pressure

                  </div>

                  <div class="form-check">
                    <input type="checkbox"
                           class="form-check-input"
                           id="radio9"
                           name="preDisease"
                           value="Diabetics"> Diabetics
                  </div>

                  <div class="form-check">
                    <input type="checkbox"
                           class="form-check-input"
                           id="radio10"
                           name="preDisease"
                           value="Cancer"> Cancer
                  </div>

                  <div class="form-check">
                    <input type="checkbox"
                           class="form-check-input"
                           id="radio11"
                           name="preDisease"
                           value="Kidney disease"> Kidney disease
                  </div>

                  <div class="form-check">
                    <input type="checkbox"
                           class="form-check-input"
                           id="radio12"
                           name="preDisease"
                           value="Heart disease"> Heart disease
                  </div>

                  <div class="form-check">
                    <input type="checkbox"
                           class="form-check-input"
                           id="radio13"
                           name="preDisease"
                           value="Lung disease"> Lung disease
                  </div>
                  <div class="form-check">
                    <input type="checkbox"
                           class="form-check-input"
                           id="radio14"
                           name="preDisease"
                           value="None of the above"> None of the above
                  </div>
                </div>

              </div>

<%--                  another block--%>

                  <div class="shadow p-3 mb-5 bg-white rounded">

                    <div class="text-success">
                      <label for="name"
                             style="font-family: Andale Mono, monospace">Name</label>
                      <input type="text" class="form-control" id="name" placeholder="Name" name="name">
                    </div>
                    <br>

                    <div class="text-success">
                      <label for="area"
                             style="font-family: Andale Mono, monospace">Select Area</label>
                      <select class="form-control" id="area" name="area">
                        <option>Bashabo</option>
                        <option>Khilgaon</option>
                        <option>Malibagh</option>
                        <option>Rampura</option>
                        <option>Shahjahanpur</option>
                      </select>
                    </div>
                  </div>

                  <br>
                  <br>

<%--                  submit button--%>

                  <div class="form-group">
                    <button type="submit"
                            class="btn btn-outline-success btn-block"
                            style="font-family: Andale Mono, monospace">Submit</button>
                </div>
            </form>
        </div>

        <%--      ends here--%>

        <div class="col-sm" >
        </div>
    </div>
</div>

</body>
</html>
