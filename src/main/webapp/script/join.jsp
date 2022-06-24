<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<script type="text/javascript">
$("#id").focus();

$("#form").submit(function(){
	var submitResult = true


$(".txt").css("display","none");
	
var idReg = /^[a-zA-Z]\w{6,16}$/g;

if(!idReg.text($("#id").val())){
	$("#idReg").css("display","block"));
	submitResult=false;
}else if ($("#check_id").val()=="0"){
	$("#idRegCheck").css("display","block");
	submitResult=false;
}

var passwdReg = ^/(?=-.*[a-zA-Z])(?=-.*[0-9])(?=-.*[~!@#$%^&*_-]).{10,20}$/g;
if($("#passwd").val()==""){
	$("#passwdMsg").css("display","block");
	submitResult=false;
}else if(!passwdReg.test($("#passwd").val())){
	$("#passwdRegMsg").css("display","block");
	submitResult=false;
}

if ($("#passwd").val()!=$("#repasswd").val()){
	$("#repasswdMatchMsg").css("display","block");
	submitResult=false;
}

var emailReg = /^([a-zA-Z0-9._-]+@[a-zA-Z0-9._-]+(\.[a-zA-Z0-9]+)+)*$/g;

var mobile1Reg=/\d{3,4}/;
var mobile2Reg=/\d{4}/;

})

if(!idReg.text($("#id").val())){
	$("#idReg").css("display","block"));
	return;
} else if ($("#check_id").val()=="0"){
	$("#idRegCheck").css("display","block");
	return;
}

window.open("<%=request.getContextPath()%>/member/id_check.jsp?id="+$("#id").val()
		,"idcheck","width=450,height=100,left=700,top=400");
		
});

$("#id").change(function(){
	$("#check_id").val("0");
});

$("#addressNo").click(function()){
	window.open("<%= request.getContextPath()%>/login/post_search"
			,"postsearch","width=550,height=600,left=600,top=250");
});

</script>

<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
$("#addressNo").click(function() {	
    new daum.Postcode({
        oncomplete: function(data) {
        	join.zipcode.value=data.zonecode;;
    		join.address1.value=data.roadAddress;
        }
    }).open();
});
</script>