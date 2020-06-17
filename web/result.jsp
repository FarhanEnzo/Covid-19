<%--
  User: Farhan
  Date: 6/12/20
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>COVID-19 TEST</title>

<%--    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">--%>
    <link rel="stylesheet" href="resource/css/bootstrap.min.css">
    <link href='https://fonts.googleapis.com/css?family=Homenaje' rel='stylesheet'>
    <link href='https://fonts.googleapis.com/css?family=Graduate' rel='stylesheet'>
    <link href='https://fonts.googleapis.com/css?family=Caesar Dressing' rel='stylesheet'>
    <link href='https://fonts.googleapis.com/css?family=Alef' rel='stylesheet'>


    <script src="resource/js/bootstrap.min.js"></script>
    <script src=" https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.3/Chart.min.js"></script>


<%--                                    style sheet--%>

    <style>

        body, html {
            height: 100%;
            margin-bottom:0px;
            margin-top: -30px;
            margin-left: 0;
            margin-right: 0;
        }

        .bg {
            /* The image used */
            background-image: url("https://images.unsplash.com/photo-1588615419942-9f1d6b4f04fc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1504&q=80");

            /* Full height */
            height: 70%;

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

    <script type="text/javascript">
        var rts_configuration =
        {
            RTS_key: 'Key-Provided-to-Licensed-Client'
        }
    </script>
    <script src="https://www.realtimestatistics.net/rts/RTSp.js" type="text/javascript"></script>
</head>


<%--                                        body --%>

<body style="background-color: #FBFCFC">

<div class="bg"></div>

<div class="container; text-center" >
    <div class="alert alert-warning"
         role="alert"
         style="font-family: DejaVu Sans Mono, monospace;
         font-size: 10px">
        <p> <span style="font-size: 15px"> '${name}'</span> Your Corona predicted result is below ! </p>
    </div>
    <br>
    <br>

<%--                            divided into 3 coloum--%>

    <div class="row">
        <div class="col-sm-2">
        </div>

        <div class="col-sm-8">

            <div class="alert alert-danger"
<%--                 style="height: 45px;"--%>
                 role="alert"
                 style="font-family: DejaVu Sans Mono, monospace; font-size: 10px">
                <p> Your area <span style="font-size: 15px">'${area}'</span>  is in red zone! </p>
            </div>


            <div  class="text-info">
                <label style="font-family:Alef ;font-size: 22px;
                font-size: 20px"> Your approximate Covid possibility: ${result}%</label>
                <br>
                <div class="progress" style="height: 20px;">
                    <div class="progress-bar" role="progressbar" style="width:${result}%;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                </div>
            </div>

            <br>
            <br>
            <br>
            <br>


            <c:choose>
                <c:when test="${result < 50}">

                    <div class="shadow p-3 mb-5 bg-white rounded  alert alert-dark">

                            ঘন ঘন হাত ধুতে থাকুন
                            হ্যান্ড স্যানিটাইজার বা সাবান দিয়ে হাত ধুয়ে ফেলুন।

                            সামাজিক দূরত্ব বজায় রাখুন
                            কাশি বা হাঁচি হয় এমন কারও সাথে অন্তত 2 মিটার (6 ফুট) দূরত্ব বজায় রাখুন।

                            চোখ, নাক এবং মুখ স্পর্শ করা এড়িয়ে চলুন
                            আপনি হাত দিয়ে যে কোন কিছু স্পর্শ করার মাধ্যমে ভাইরাসের সংস্পর্শে
                        আসতে পারেন। আপনার হাতে থেকে আপনার চোখ, নাক বা মুখের মাধ্যমে ভাইরাস শরীরে প্রবেশ করতে পারে।

                    </div>
                </c:when>

                <c:otherwise>

                    <div class="shadow p-3 mb-5 bg-white rounded  alert alert-secondary">

                        ডাক্তারের পরামর্শ নিন, আপনার চিকিৎসা প্রয়োজন।
                        অতিদ্রুত নিজেকে একটি ঘরে আলাদা করে ফেলুন।
                        লক্ষণগুলো আরো নিবিড়ভাবে পর্যবেক্ষণ করুন। অবস্থার অবনতি হলে তাৎক্ষনিক মেডিকেল সহায়তার নিন।

                    </div>
                </c:otherwise>
            </c:choose>

            <div class="row">

                <div class="col-sm-2">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRJ6XHQBS01XqSp9eVd_nXmahqahUWU5SV5T-mBwIc8-mNelvlW&usqp=CAU"
                         class="img-fluid img-thumbnail"
                         alt="Responsive image">

                </div>

                <div class="col-sm-10 alert alert-secondary"
                     role="alert"
                     style="height: 140px ;
                     font-family: DejaVu Sans Mono, monospace;
                     font-size: 10px ;padding-top: 35px" >

                    <c:if test="${smokeHabit == 2}">

                        <div >
                            <p>   If you want to stop smoking, you can make small changes to your
                                lifestyle that may help you resist the temptation to light up.
                            </p>
                            Think positive. ...
                            Make a plan to quit smoking. ...

                            Consider your diet. ...

                            Change your drink. ...

                            Identify when you crave cigarettes. ...

                            Get some stop smoking support. ...

                            Get moving. ...
                            Make non-smoking friends.
                        </div>

                    </c:if>
                    <c:if test="${smokeHabit == 1}">

                        <div  >
                            <p>As smoking is injurious to health.</p>
                            <p>Quit your smoking habit</p>

                        </div>

                    </c:if>
                    <c:if test="${smokeHabit == 0}">

                        <div >
                            You have really a strong personality

                        </div>

                    </c:if>

                </div>

            </div>

            <c:choose>
                <c:when test="${pregnant == 1}">

                    <div class="row">

                        <div class="col-sm-8 alert alert-secondary"
                             role="alert"
                             style="height: 195px ;
                     font-family: DejaVu Sans Mono, monospace;
                     font-size: 10px ;padding-top: 50px" >



                            <div >
                                <p>    Congratulations to the mom-to-be! ...
                                </p>
                                <p>    Congratulations on your new little bundle of joy!
                                </p>
                                <p>     We are so excited to meet your little one when they come out. ...
                                </p>

                            </div>



                        </div>

                        <div class="col-sm-4"  >

                            <img  src="https://miro.medium.com/max/1280/1*6cKOIk45hIbGxW8gG5Dxbg.gif"
                                  class="img-fluid img-thumbnail"
                                  alt="Responsive image">

                        </div>
                    </div>

                </c:when>

                <c:otherwise>

                </c:otherwise>
            </c:choose>



<%--            <c:choose>--%>
<%--                <c:when test="${smokeHabit == 1}">--%>

<%--                    <div class="shadow p-3 mb-5 bg-white rounded">--%>
<%--                       Forbid your smoking habit--%>
<%--                    </div>--%>
<%--                </c:when>--%>

<%--                <c:otherwise>--%>
<%--                    <div class="shadow p-3 mb-5 bg-white rounded">--%>
<%--                       You have really a strong personality--%>

<%--                    </div>--%>
<%--                </c:otherwise>--%>


<%--            </c:choose>--%>





            <br>
            <br>
            <br>

<%--            <div class="alert alert-warning"--%>
<%--                 role="alert"--%>
<%--                 style="font-family: DejaVu Sans Mono, monospace">--%>
<%--                <p>--%>
<%--                    According to researchers in China, these were the--%>
<%--                    most common symptoms among people who had COVID-19 :--%>
<%--                </p>--%>
<%--            </div>--%>
            <br>
            <br>



            <div class="row">

                <div class="col-sm-6">
                    <img src="https://images.unsplash.com/photo-1588775373957-75bcf1bd3dc1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=80"
                         class="img-fluid img-thumbnail"
                         alt="Responsive image">
                    </div>
                <div class="col-sm-6 alert alert-light"
                     role="alert"
                     style="font-size: 10px">

                    Can Coronavirus Survive Heat?

                    You may have wondered if the new coronavirus would go away as the summer weather warms and gets more humid. But scientists recently looked at the few small studies on the subject and found there isn’t enough evidence to know if this is true.

                    To start with, the real-world conditions in which the virus infects people can be hard to reproduce in a lab. Different humidity levels, in particular, can be tough to re-create. Plus, temperature and humidity can vary quite a bit depending on where you are, especially in a country as large as the U.S.

                    Also, some strains of the virus can change depending on the environment. They may survive and thrive in various geographic regions or climates.

                    Even when scientists study real-world examples, the evidence is unclear. Though some viral illnesses seem to slow in the summer months, this isn’t always the case. In countries such as Australia and Iran, COVID-19 has spread very quickly despite warm and humid weather.

                    Every virus and pandemic is different, and there are a number of things that influence them, even in hot and humid weather. With COVID-19, there is simply not enough evidence to know if there will be a significant slowdown in infections as temperatures rise.

                    That’s why experts recommend that you don’t assume that summer months will be safer for the transfer of COVID-19 and that you to continue to take appropriate steps to protect yourself and those around you.

                </div>

            </div>

            <div class="row">

                <div class="col-sm-6 alert alert-light"
                     role="alert"
                     style="font-size: 10px">

                    Symptoms of COVID-19
                    The main symptoms include:

                    Fever
                    Coughing
                    Shortness of breath
                    Trouble breathing
                    Fatigue
                    Chills, sometimes with shaking
                    Body aches
                    Headache
                    Sore throat
                    Loss of smell or taste
                    Nausea
                    Diarrhea

                    The virus can lead to pneumonia, respiratory failure, septic shock, and death. Many COVID-19 complications may be caused by a condition known as cytokine release syndrome or a cytokine storm. This is when an infection triggers your immune system to flood your bloodstream with inflammatory proteins called cytokines. They can kill tissue and damage your organs.

                    If you notice the following severe symptoms in yourself or a loved one, get medical help right away:

                    Trouble breathing or shortness of breath
                    Ongoing chest pain or pressure
                    New confusion
                    Can’t wake up fully
                    Bluish lips or face

                </div>
                <div class="col-sm-6">
                    <img src="https://images.unsplash.com/photo-1588775005506-cc9c22cdef84?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=80"
                         class="img-fluid img-thumbnail"
                         alt="Responsive image">
                </div>

            </div>

            <div class="row">

                <div class="col-sm-6">
                    <img src="https://images.unsplash.com/photo-1588775046415-869163bf70d9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=80"
                         class="img-fluid img-thumbnail"
                         alt="Responsive image">
                </div>
                <div class="col-sm-6 alert alert-light"
                     role="alert"
                     style="font-size: 10px">
                    What temperature indicates a fever
                    High body temperature is one of the first symptoms of illness, and a fever is an indication that your body is fighting off an infection, like the flu virus. According to Cleveland Clinic, temperatures above 100.4°F are considered a fever for adults.

                    But for children, Cleveland Clinic says fever indications can vary depending on how you take the reading:

                    99.5°F or higher for oral temperature
                    100.4°F or higher for rectal temperature
                    99°F or higher for underarm temperature
                    Fevers are often associated with other symptoms like chills, headaches, tiredness, body aches, and sweating.

                    If you're feeling feverish, Brantly advises measuring your temperature and recording it several times a day, as thermometers aren't always accurate and your temperature may rise and fall throughout the day.

                    While most fevers usually resolve themselves within a week, there are certain steps you can take to relieve discomfort, such as staying hydrated, dressing in lightweight clothing, and getting plenty of rest.

                    Fever is also a common symptom of the coronavirus. If you think you may have a fever associ
                </div>

            </div>


            <div class="row">


                <div class="col-sm-6 alert alert-light"
                     role="alert"
                     style="font-size: 10px">
                    cough
                </div>

                <div class="col-sm-6">
                    <img src="https://images.unsplash.com/photo-1588775073690-3cbd3be13ef0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=80"
                         class="img-fluid img-thumbnail"
                         alt="Responsive image">
                </div>

            </div>

            <div class="row">

                <div class="col-sm-6">
                    <img src="https://images.unsplash.com/photo-1588775017410-b0d77bd85a16?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=80"
                         class="img-fluid img-thumbnail"
                         alt="Responsive image">
                </div>
                <div class="col-sm-6 alert alert-light"
                     role="alert"
                     style="font-size: 10px">
                    shortness of breath
                </div>
            </div>

            <div class="row">

                <div class="col-sm-6 alert alert-light"
                     role="alert"
                     style="font-size: 10px">
                    thank you
                </div>


                <div class="col-sm-6">
                    <img src="https://images.unsplash.com/photo-1588615419966-0c0f3bb797b3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=80"
                         class="img-fluid img-thumbnail"
                         alt="Responsive image">
                </div>
            </div>

            <br>
            <br>

            <blockquote  style="font-family: DejaVu Sans Mono, monospace ;font-size: 13px"
                         class="alert alert-secondary" role="alert">
                According to researchers in China, these were the
                most common symptoms among people who had COVID-19
            </blockquote>

            <div class="container">

                <canvas id="myChart">

                </canvas>

            </div>

            <script>

                var myChart = document.getElementById('myChart').getContext('2d');
                var barChart = new Chart(myChart, {
                    // The type of chart we want to create
                    type: 'bar',

                    // The data for our dataset
                    data: {

                        labels: ['Lack of appetite', 'Body aches', 'Fatigue', 'Shortness of breath', 'Fever', 'Cough', 'Mucus/phlegm'],

                        datasets: [{
                            label: 'percentage of patients ',
                            backgroundColor: 'rgb(255, 99, 132)',
                            borderColor: 'rgb(255, 99, 132)',
                            data: [40, 35, 70, 31, 99, 59, 27],
                        }]
                    },

                    // Configuration options go here
                    options: {

                        title: {
                            Display: true,
                            text:'According to researchers in China, these were the most common symptoms among people who had COVID-19 :',
                            fontSize:25,
                        }
                    }
                });
            </script>
            <br>
            <br>
            <br>



            <a href="index.jsp" style="text-decoration: none">  <div class="form-group">
                <button type="submit"
                        class="btn btn-outline-success btn-block"
                        style="font-family: Andale Mono, monospace">Test again
                </button>
            </div></a>

        </div>

<%--                                     divided colom ended here--%>
    </div>

        <%--            <div>--%>

<%--                <iframe width="560" height="315" src="https://www.youtube.com/embed/TZ6sMPSqwno"--%>
<%--                        frameborder="0"--%>
<%--                        ></iframe>--%>
<%--            </div>--%>
<%--            --%>

        <div class="col-sm-2" style="background-color: #FBFCFC">
        </div>
    </div>
</div>
<br>
<br>
<br>
<br>

<footer class="footer-distributed">
    <div  style="font-family: Andale Mono, monospace;
          text-align: center;">@stayHome staySafe</div>
</footer>
</body>
</html>
