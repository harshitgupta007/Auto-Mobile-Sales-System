<html>
<head>
<style>
.testdiv{
	width:680px;
	height:500px;
	
}
</style>

</head>

<body>
<font color="white" size="3">
<div class="testdiv">
<table cellpadding="4" width="100%" cellspacing="1">
<tr>
<td>CustomerID:<font color="red">*</font></td>
<td><font color="black"><input type=text name="id" id="custid" size="20" placeholder="Adhar Card No" required></font></td>

</tr>
<tr>
<td>Name:<font color="red">*</font></td>
<td><font color="black"><input type=text name="name" id="name" size="25" placeholder="Customer name" required></td>
</font></tr>
<tr>
<td>Gender:<font color="red">*</font></td>
<td><font color="black"><select id="gender" value="">
<option>Select Gender</option>
<option>Male</option>
<option>Female</option>
</select></td>
<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;DOB<font color="red">*</font></td>
<td><font color="black"><input type="text" name="dob" id="dob"required></font></td>
</tr>
<tr>
<td>Address:<font color="red">*</font></td>
<td><font color="black"><input type="text" name="addr" id="addr" size="20" placeholder="Address" required></font></td>
<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Street:</td><td><font color="black"><input type="text" name="pstreet" id="pstreet" size="10" placeholder="Street"></font></td>
</tr>
<tr>
<td>District<font color="red">*</font></td><td><font color="black"><input type="text" name="pstreet" id="district" size="15" placeholder="Street"></font></td>
<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;State<font color="red">*</font></td><td><font color="black"><input type="text" name="state" id="state" size="20" placeholder="Street"></font></td>
</tr>
<tr>
<td>PinCode:<font color="red">*</font></td>
<td><font color="black"><input type=text name="pincode" id="pincode"  maxlength="6" pattern="[0-9]{6}" placeholder="Pincode"required></td>
</font></tr>
<tr>
<td>Email:</td>
<td><font color="black"><input type="email" name="email" id="email" size="20" placeholder="test@gm.com"></font></td>
</tr>
<tr>
<td>MobileNo:<font color="red">*</font></td>
<td> <font color="black"><input type="text" id="mob"   pattern="[0-9]{10}" title="Mobile Number"placeholder="Mobile No"required>
</font></td>
</tr>
<tr>
<td>Std:</td>
<td><font color="black"><input type="text" name="std" id="std" size="11" placeholder="Std"></font></td>
<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Phone:</td>
<td><font color="black"><input type="text" name="phno" id="phno" size="11" placeholder="Phone Number"></td>
</font></tr>

<tr>
<td>Vin No:<font color="red">*</font></td>
<td><font color="black"><input type="text" name="vin" id="vin" size="15" placeholder="Bike Vin No"></font></td>
<tr>
<tr>
<td>Sell Price:<font color="red">*</font></td>
<td><font color="black"><input type="text" name="vin" id="sellcost" size="15" placeholder="Sell Price Rs"></font></td>
<tr>
<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td></tr>
<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
<td colspan="1"><font color="black">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="Submit Form" onclick="submitSell()"/></font></td>
</tr>
<tr align="center"><p id="div8" font color="blue"></p></tr>
</table>
 </div>
 </font>
</body>
</html>