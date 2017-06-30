<!DOCTYPE html>
<html>
<head>
</head>
<body>
<select id="state" onchange="getDistrict(this.value)">
<option value="">Select State</option>
  <option value="Uttar Pradesh">Uttar Pradesh</option>
  <option value="Madhya Pradesh">Madhya Pradesh</option>
  <option value="Delhi">Delhi</option>
  <option value="Gujarat">Gujarat</option>
  
</select>

<select id="district" onchange="getShowRoom(this.value)">
<option value="">Select District</option>
</select>
 <script type = "text/javascript"  src = "https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script type="text/javascript" src="javaScript/showroomsearch.js"></script>
</body>
</html>