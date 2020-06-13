<%--
  User: Farhan
  Date: 6/12/20
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>COVID-19 TEST</title>

    <link rel="stylesheet" href="resource/css/bootstrap.min.css">
    <script src="resource/js/bootstrap.min.js"></script>
</head>
<body style="background-color: #FBFCFC">

<div class="container; text-center" >

    <h3 style="padding-top: 200px;
            font-family: DejaVu Sans Mono, monospace">
        ${name} Your Corona predicted result is below !</h3>

    <div class="row">
        <div class="col-sm">
        </div>

        <div class="col-sm">

            <br>
            <br>

            <div  class="text-warning">
                <label style="font-family:Andale Mono, monospace;
                font-size: 20px">Covid possibility is:</label> ${result}%

                <div class="progress">
                    <div class="progress-bar bg-success"
                         role="progressbar" style="width: ${result}%" aria-valuemax="100"></div>
                </div>
            </div>

            <br>
            <br>

            <c:choose>
                <c:when test="${result < 50}">

                    <div></div>

                    ঘন ঘন হাত ধুতে থাকুন
                    হ্যান্ড স্যানিটাইজার বা সাবান দিয়ে হাত ধুয়ে ফেলুন।

                    সামাজিক দূরত্ব বজায় রাখুন
                    কাশি বা হাঁচি হয় এমন কারও সাথে অন্তত 2 মিটার (6 ফুট) দূরত্ব বজায় রাখুন।

                    চোখ, নাক এবং মুখ স্পর্শ করা এড়িয়ে চলুন
                    আপনি হাত দিয়ে যে কোন কিছু স্পর্শ করার মাধ্যমে ভাইরাসের সংস্পর্শে আসতে পারেন। আপনার হাতে থেকে আপনার চোখ, নাক বা মুখের মাধ্যমে ভাইরাস শরীরে প্রবেশ করতে পারে।




                </c:when>
                <c:otherwise>
                    যেসব প্রতিরোধ আর সতর্কতা অবলম্বন করতে হবে:

                    ডাক্তারের পরামর্শ নিন, আপনার চিকিৎসা প্রয়োজন।
                    অতিদ্রুত নিজেকে একটি ঘরে আলাদা করে ফেলুন।
                    লক্ষণগুলো আরো নিবিড়ভাবে পর্যবেক্ষণ করুন। অবস্থার অবনতি হলে তাৎক্ষনিক মেডিকেল সহায়তার নিন।
                </c:otherwise>
            </c:choose>

            <div>
                <a href="index.jsp">Test agin</a>
            </div>
        </div>

        <div class="col-sm" style="background-color: #FBFCFC">
        </div>
    </div>

</div>
</body>
</html>
