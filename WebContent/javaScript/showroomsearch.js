function getDistrict(value)
{
	if(value==="")
		{
		alert("Please Select State");
		}
	else
		{
		$(document).ready(function(){
			$.ajax({
				type: "post",
				url: "jsp/searchshowroomdistrict.jsp",
				data:{'state':value},
			success: function(data) {
			 $("#district").html(data);
			},
			  error:function (xhr, ajaxOptions, thrownError){
				    alert("error"); 
				    alert(xhr.status);
				    alert(thrownError);
				  }  
			});
		});
		}
}

function getShowRoom(value)
{
	if(value==='')
			{
			alert("Please Select State");
			}
		else
			{
			var district=$("#state").val();
			$(document).ready(function(){
				$.ajax({
					type: "post",
					url: "jsp/showroomsearchaction.jsp",
					data:{'district':value,'state':district},
				success: function(data) {
					 $("#div6").html(data);
				},
				  error:function (xhr, ajaxOptions, thrownError){
					    alert("error"); 
					    alert(xhr.status);
					    alert(thrownError);
					  }  
				});
			});
			}
	
}