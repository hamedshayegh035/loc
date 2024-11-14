<!DOCTYPE html>
<html>
<head>
   <title>موقعیت مکانی من</title>
</head>
<body>
   <button onclick="getLocation()">موقعیت من را بگیر</button>
   <p id="location"></p>

   <script>
      function getLocation() {
         if (navigator.geolocation) {
            navigator.geolocation.getCurrentPosition(showPosition);
         } else {
            document.getElementById("location").innerHTML = "مرورگر شما از Geolocation پشتیبانی نمی‌کند.";
         }
      }

      function showPosition(position) {
         document.getElementById("location").innerHTML = 
            "عرض جغرافیایی: " + position.coords.latitude +
            "<br>طول جغرافیایی: " + position.coords.longitude;
      }
   </script>
</body>
</html>
