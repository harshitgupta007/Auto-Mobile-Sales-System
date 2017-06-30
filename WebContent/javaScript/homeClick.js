function homeClick()
{
	$("#div5").empty();
	$("#div6").empty();
	$("#div10").empty();
	$("#div7").empty();
}

function aboutus()
{
	$("#div5").empty();
	$("#div6").empty();
	$("#div10").empty();
	$("#div7").empty();
	$("#div8").empty();
	
	$(document).ready(function(){
		$.ajax({
			type: "get",
			url : "html/aboutus.html",
			success: function(data)
			{
				$("#div5").html(data);
			},
			error: function(xhr,ajaxOptions,thrownError)
			{
				alert("Error In Request");
			}
		
			
		});
		
	});
}
function gallary()
{
	$("#div5").empty();
	$("#div6").empty();
	$("#div10").empty();
	$("#div7").empty();
	$("#div8").empty();
	$(document).ready(function(){
		
		$.ajax({
			type: "get",
			url : "jsp/gallary.jsp",
		success: function(data)
		{
			$("#div6").html(data);
		},
		error: function(xhr,ajaxOptions,thrownError)
		{
			alert("Error in Request");
			alert("xhr.status");
			alert("thrownError");
		}
			
		});
	});
	}
function dealerSearch()
{	

	$("#div5").empty();
	$("#div6").empty();
	$("#div10").empty();
	$("#div7").empty();
	$(document).ready(function(){
		$.ajax({
			type: "post",
			url: "jsp/dealersearch.jsp",
		success: function(data) {
			 $("#div5").html(data);
		},
		  error:function (xhr, ajaxOptions, thrownError){
			    alert("error"); 
			    alert(xhr.status);
			    alert(thrownError);
			  }  
		});
	});
}

function showroomSearch()
{
	$("#div5").empty();
	$("#div6").empty();
	$("#div10").empty();
	$("#div7").empty();
	$(document).ready(function(){
		$.ajax({
			type: "post",
			url: "jsp/showroomsearch.jsp",
		success: function(data) {
			 $("#div5").html(data);
		},
		  error:function (xhr, ajaxOptions, thrownError){
			    alert("error"); 
			    alert(xhr.status);
			    alert(thrownError);
			  }  
		});
	});
}

function customerClick()
{
	$("#div5").empty();
	$("#div6").empty();
	alert("This Module Under Development");
	return;
	$(document).ready(function(){
		$.ajax({
			type: "post",
			url: "jsp/login.jsp",
		success: function(data) {
			 $("#div5").html(data);
		},
		  error:function (xhr, ajaxOptions, thrownError){
			    alert("error"); 
			    alert(xhr.status);
			    alert(thrownError);
			  }  
		});
	});
}
function dealerClick()
{
	$("#div5").empty();
	$("#div6").empty();
	$("#div10").empty();
	$(document).ready(function(){
		$.ajax({
			type: "post",
			url: "jsp/dealerlogin.jsp",
		success: function(data) {
			 $("#div5").html(data);
		},
		  error:function (xhr, ajaxOptions, thrownError){
			    alert("error"); 
			    alert(xhr.status);
			    alert(thrownError);
			  }  
		});
	});
}
function dealerLogin()
{
	$("#div6").empty();
	$("#div10").empty();
	$("#div7").empty();
	var username=$("#uname").val(),
		password=$("#pass").val();
	if(username==''){
		alert("User name Required");
		return;
	}
	else if(password==''){
		alert("Password Required");
		return;
	}
		
	$(document).ready(function(){
		$.ajax({
			type: "post",
			url : "jsp/dealerlogin2.jsp",
			data :{'username':username,'password':password},
			success:function(data)
			{
				$("#div5").html(data);
			},
			error:function(xhr,ajaxOptions,thrownError)
			{
				alert("Error ");
				alert("xhr.status");
				alert("thrownError");
			}
		});
	});
}
function showroomClick()
{
	$("#div5").empty();
	$("#div6").empty();
	$("#div10").empty();
	$(document).ready(function(){
		$.ajax({
			type: "post",
			url: "jsp/showroomlogin.jsp",
		success: function(data) {
			 $("#div5").html(data);
		},
		  error:function (xhr, ajaxOptions, thrownError){
			    alert("error"); 
			    alert(xhr.status);
			    alert(thrownError);
			  }  
		});
	});
}
function showroomLogin()
{
	$("#wrong").empty();
	var username=$("#uname").val(),
		pass=$("#pass").val();
	$(document).ready(function(){
		$.ajax({
			type: "post",
			url: "jsp/showroomlogin2.jsp",
			data: {'username':username,'password':pass},
		success: function(data){
			$("#div5").empty();
			$("#div5").html(data);
		},
		  error:function (xhr, ajaxOptions, thrownError){
			    alert("error"); 
			    alert(xhr.status);
			    alert(thrownError);
			  }  
		});
	});
}
function showroomLogout()
{
	$("#div5").empty();
	$("#div6").empty();
	$("#div10").empty();
	$("#div7").empty();
     $(document).ready(function(){
		$.ajax({
			type: "post",
			url: "jsp/showroomlogout.jsp",
			success: function(data)
			{
				$("#div5").html(data);
			},
		 error:function (xhr, ajaxOptions, thrownError){
			    alert("error"); 
			    alert(xhr.status);
			    alert(thrownError);
			  } 
		});  
});
}
function dealerLogout()
{
	$("#div5").empty();
	$("#div6").empty();
	$("#div7").empty();

     $(document).ready(function(){
		$.ajax({
			type: "post",
			url: "jsp/dealelogout.jsp",
			success: function(data)
			{
				$("#div5").html(data);
			},
		 error:function (xhr, ajaxOptions, thrownError){
			    alert("error"); 
			    alert(xhr.status);
			    alert(thrownError);
			  } 
		});  
});
}

function schangePassword()
{
	$("div6").empty();
	$(document).ready(function(){
		$.ajax({
			type:"get",
			url: "jsp/schangepassword.jsp",
			success: function(data)
			{
				$("#div6").html(data);
			},
			error:function(xhr,ajaxOptions,thrownError){
				alert("error");
				alert(xhr.status);
				alert(thrownError);
			}
		});
	});
}

function applyPassword()
{
	var newpassword=$("#newpass").val(),
		sid        =$("#sid").val();
	$(document).ready(function(){
		$.ajax({
			type: "post",
			url: "jsp/sapplypassword.jsp",
			data: {'pass':newpassword,'sid':sid},
			success: function(data)
			{
				alert("Password Succesfully Change Please Login Again");
				$("#div6").empty();
				$("#div5").empty();
			},
			error: function(xhr,ajaxOptions,thrownError)
			{
				alert("Error in change Password");
				alert(xhr.status);
				aler(thrownError);
			}
			
		});
	});
}

function bikeInformation()
{
	$("#div5").empty();
	$("#div7").empty();

	$("#div6").empty();
	$(document).ready(function(){
		$.ajax({
			type: "get",
			url : "jsp/bikeinformation.jsp",
			success:function(data){
				$("#div6").html(data);
			},	
		error:function(xhr,ajaxOptions,thrownError)
		{
			alert("Given Bike Not found");
			alert(xhr.status);
			alert(thrownError);
		}
		});
	});
}

function searchBike()
{
	var vin=$("#vin").val();
	$("#div7").empty();
	$("#div6").empty();
	$(document).ready(function(){
		
		$.ajax({
			type:"post",
			url :"jsp/searchbike.jsp",
			data:{'vin':vin},
			success: function(data)
			{
				$("#div7").html(data);
			},
			error: function(xhr,ajaxOptions,thrownError)
			{
				alert("Error in Request");
				alert("xhr.status");
				alert(thrownError);
			}
			
		});
	});
}

function requesttoDealer()
{
	$("#div8").empty();
	$("#div6").empty();
	$("#div7").empty();
	$(document).ready(function(){
		$.ajax({
			type: "get",
			url: "jsp/requesttodealer.jsp",
			success:function(data)
			{
				$("#div6").html(data);
			},
		error: function(xhr,ajaxOptions,thrownError)
		{
			alert("Error in Request to Dealer");
			alert("xhr.status");
			alert("thrownError");
		}
		});
	});
}
function requesttoCompany()
{
	$("#div8").empty();
	$("#div6").empty();
	$("#div7").empty();
	$(document).ready(function(){
		$.ajax({
			type: "get",
			url: "jsp/requesttocompany.jsp",
			success:function(data)
			{
				$("#div6").html(data);
			},
		error: function(xhr,ajaxOptions,thrownError)
		{
			alert("Error in Request to Dealer");
			alert("xhr.status");
			alert("thrownError");
		}
		});
	});

}

function getColor()
{
	$("#div8").empty();
	$("#div7").empty();
	var modelname=$("#mname").val();
	$(document).ready(function(){
		$.ajax({
			type: "post",
			url: "jsp/getbikecolor.jsp",
			data:{'modelname':modelname},
			success: function(data)
			{
				$("#color").html(data);
			},
			error: function(xhr,ajaxOptions,thrownError)
			{
				alert("Error in Bike Color Processing");
				alert("xhr.status");
				alert("thrownError");
			}
		});
	});
	}

function showroomSubmit()
{
	$("#div8").empty();
	$("#div7").empty();
	var showroomid=$("#sid").val(),
		modelname=$("#mname").val(),
		color=$("#color").val(),
		quantity=$("#quantity").val(),
		dealerid=$("#dealerid").text();
		$(document).ready(function(){
			$.ajax({
				type: "post",
				url: "jsp/submitshowroomrequest.jsp",
				data: {'showroomid':showroomid,'modelname':modelname,'color':color,'quantity':quantity,'dealerid':dealerid},
				success: function(data)
				{
					$("#div7").html(data);
				},
				error: function(xhr,ajaxOptions,thrownError)
				{
					alert("Error in Submit");
					alert("xhr.status");
					alert("thrownError");
				}
			});
		});
}
function dealerSubmit()
{
	$("#div7").empty();
	var	modelname=$("#mname").val(),
		color=$("#color").val(),
		quantity=$("#quantity").val(),
		dealerid=$("#dealerid").text();
		$(document).ready(function(){
			$.ajax({
				type: "post",
				url: "jsp/submitdealerrequest.jsp",
				data: {'modelname':modelname,'color':color,'quantity':quantity,'dealerid':dealerid},
				success: function(data)
				{
					$("#div7").html(data);
				},
				error: function(xhr,ajaxOptions,thrownError)
				{
					alert("Error in Submit");
					alert("xhr.status");
					alert("thrownError");
				}
			});
		});
}
function showroombikeEntry()
{
	$("#div8").empty();
	$("#div7").empty();
	$("#div6").empty();
	$(document).ready(function(){
		$.ajax({
			type: "get",
			url : "jsp/showroombikeentry.jsp",
			success: function(data)
			{
				$("#div6").html(data);
			},
			error: function(xhr,ajaxOptions,thrownError)
			{
				alert("Error");
				alert("xhr.status");
				alert("thrownError");
			}
		});
	});
}
function dealerbikeEntry()
{
	$("#div8").empty();
	$("#div7").empty();
	$("#div6").empty();
	$(document).ready(function(){
		$.ajax({
			type: "get",
			url : "jsp/dealerbikeentry.jsp",
			success: function(data)
			{
				$("#div6").html(data);
			},
			error: function(xhr,ajaxOptions,thrownError)
			{
				alert("Error");
				alert("xhr.status");
				alert("thrownError");
			}
		});
	});
}
function showroomStock()
{
	$("#div8").empty();
	$("#div7").empty();
	var showroomid=$("#sid").val(),
		vinno=$("#vinno").val();
		$(document).ready(function(){
			$.ajax({
				type: "post",
				url : "jsp/submitshowroombike.jsp",
				data: {'showroomid':showroomid,'vinno':vinno},
				success: function(data)
				{
					$("#div7").html(data);
				},
				error: function(xhr,ajaxOptions,thrownError)
				{
					alert("Error In your Request");
					alert("xhr.status");
					alert("thrownError");
				}
			});
		});
}
function dealerStock()
{
	$("#div7").empty();
	var dealerid=$("#dealerid").text(),
		vinno=$("#vinno").val();
		$(document).ready(function(){
			$.ajax({
				type: "post",
				url : "jsp/submitdealerbike.jsp",
				data: {'dealerid':dealerid,'vinno':vinno},
				success: function(data)
				{
					$("#div7").html(data);
				},
				error: function(xhr,ajaxOptions,thrownError)
				{
					alert("Error In your Request");
					alert("xhr.status");
					alert("thrownError");
				}
			});
		});
}

function getShowroomStock()
{
	$("#div6").empty();
	$("#div7").empty();
	$("#div8").empty();
	var sid=$("#sid").val();
	$(document).ready(function(){
		$.ajax({
			type: "get",
			url: "jsp/getshowroomstock.jsp",
			data: {'showroomid':sid},
			success: function(data)
			{
				$("#div6").html(data);
			},
			error: function(xhr,ajaxOptions,thrownError)
			{
				alert("Error in Requesting");
				alert("xhr.status");
				alert("thrownError");
			}
			
		});
	});
}

function getdealerStock()
{
	$("#div8").empty();
	$("#div6").empty();
	$("#div7").empty();
	var dealerid=$("#dealerid").text();
	$(document).ready(function(){
		$.ajax({
			type: "post",
			url: "jsp/getdealerstock.jsp",
			data: {'dealerid':dealerid},
			success: function(data)
			{
				$("#div6").html(data);
			},
			error: function(xhr,ajaxOptions,thrownError)
			{
				alert("Error in Requesting");
				alert("xhr.status");
				alert("thrownError");
			}
			
		});
	});
}

function getSellForm()
{
	$("#div8").empty();
	$("#div6").empty();
	$("#div7").empty();
	$(document).ready(function(){
		$.ajax({
			type:"get",
			url : "jsp/customerinformation.jsp",
			success: function(data){
				$("#div6").html(data);
			},
			error: function(xhr,ajaxOptions,thrownError){
				alert("Error in Respond");
				alert("xhr.status");
				alert("thrownError");
			}
		});
		
	});
}

function submitSell()
{
	$("#div7").empty();
	$("#div8").empty();
	var showroomid=$("#sid").val(),
		custid=$("#custid").val(),
		name=$("#name").val(),
		gender=$("#gender").val(),
		dob =$("#dob").val(),
		addr=$("#addr").val(),
		pstreet=$("#pstreet").val(),
		pincode=$("#pincode").val(),
		email=$("#email").val(),
		mob=$("#mob").val(),
		std=$("#std").val(),
		phno=$("#phno").val(),
		vin=$("#vin").val(),
		sellcost=$("#sellcost").val(),
		district=$("#district").val(),
		state=$("#state").val();
		
		$(document).ready(function(){
			$.ajax({
				type: "post",
				url: "jsp/customersubmit.jsp",
				data: {'sid':showroomid,'custid':custid,'name':name,'gender':gender,'dob':dob,'addr':addr,'street':pstreet,'pincode':pincode,'district':district,'state':state,'email':email,'mob':mob,'std':std,'phno':phno,'vin':vin,'sellcost':sellcost},
				success:function(data)
				{
					$("#div8").html(data);
				},
				error:function(xhr,ajaxOptions,thrownError)
				{
					alert("Error in submit form");
					alert("xhr.status");
					alert("thrownError");
				}
			});
		});
	}

function getshowroomRequest()
{
	$("#div7").empty();
	$("#div8").empty();
	var dealerid=$("#dealerid").text();
	$(document).ready(function(){
		$.ajax({
			type : "post",
			url : "jsp/getshowroomrequest.jsp",
			data: {'dealerid':dealerid},
			success: function(data)
			{
				$("#div6").html(data);
			},
			error: function(xhr,ajaxOptions,thrownError)
			{
				alert("Error Showroom Request");
				alert("xhr.status");
				alert("thrownError");
			}
		});
	});	
}

function supplytoShowroom()
{
	$("#div6").empty();
	$("#div7").empty();
	$("#div8").empty();
	var dealerid=$("#dealerid").text();
	$(document).ready(function(){
		$.ajax({
			type : "get",
			url : "jsp/supplytoshowroom.jsp",
			data :{'dealerid':dealerid},
			success: function(data)
			{
				$("#div6").html(data);
			},
			error: function(xhr,ajaxOption,thrownError)
			{
				alert("Error in Supply Request");
				alert("xhr.status");
				alert("thrownError");
			}
			
		});
		
	});
}

function submitShowroomSupply()
{
	$("#div7").empty();
	$("#div8").empty();
	var dealerid=$("#dealerid").text(),
		vinno	=$("#vinno").val(),
		showroomname	=$("#showroomname").val();
	if(vinno=='')
		{
		alert("Enter vin no");
		return;
		}
	 else if(name="")
	{
		alert("Select Showroom Name");
		return;
	}
	$(document).ready(function(){
		$.ajax({
			type: "post",
			url : "jsp/submitshowroomsupply.jsp",
			data : {'vinno':vinno,'dealerid':dealerid,'showroomname':showroomname},
			success: function(data)
			{
				$("#div7").html(data);
			},
			error: function(xhr,ajaxOptions,thrownError)
			{
				alert("Error in Submission");
				alert("xhr.status");
				alert("thrownError");
			}
		});
	});
}

function getshowroomCart()
{
	$("#div7").empty();
	$("#div8").empty();
	$("#div6").empty();
	var sid=$("#sid").val();
	$(document).ready(function(){
		$.ajax({
			type : "get",
			url : "jsp/getshowroomsellinfo.jsp",
			data : {'sid':sid},
			success : function(data)
			{
				$("#div6").html(data);
			},
			error : function(xhr,ajaxOptions,thrownError)
			{
				alert("Error in Request");
				alert("xhr.status");
				alert("thrownError");
			}
		});
	});
}

function customerInformation()
{
	$("#div7").empty();
	$("#div8").empty();
	$("#div6").empty();
	$(document).ready(function(){
		$.ajax({
			type :  "get",
			url : "jsp/getcustomerinformation.jsp",
			success: function(data)
			{
				$("#div6").html(data);
			},
			error : function(xhr,ajaxOptions,thrownError)
			{
				alert("Error in Request");
				alert("xhr.status");
				alert("thrownError");
			}
		});
	});
}

function searchCustomer()
{
	$("#div7").empty();
	$("#div8").empty();
	var custid=$("#custid").val();
	if(custid=="")
		{
		alert("Enter Customer Id");
		return;
		
		}
	$(document).ready(function(){
		$.ajax({
			type : "post",
			url : "jsp/searchcustomerinformation.jsp",
			data : {'custid':custid},
			success: function(data)
			{
				$("#div6").html(data);
			},
			error : function(xhr,ajaxOptions,thrownError)
			{
				alert("Error In Request");
				alert("xhr.status");
				alert("thrownError");
			}
		});
	})
}