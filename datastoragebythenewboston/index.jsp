<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style> 

#leftbox{
 float:left; 
 padding:50px; 
 border:3px solid red; 
}
#rightbox{
 float:left;
 padding:100px;
 border:3px solid blue;
 margin-left:10px;
}

</style>


<script>
function doFirst(){
	var button=document.getElementById("button");
	button.addEventListener("click",saveCrap,false);
	
}
function saveCrap(){
	
	var one=document.getElementById("one").value;
	var two=document.getElementById("two").value;
	sessionStorage.setItem(one,two);
	display(one);
}
function display(one){
	
	var rightbox=document.getElementById("rightbox");
	var two=sessionStorage.getItem(one);
	rightbox.innerHTML=" The key is "+one+" The value is "+two; 
}

window.addEventListener("load",doFirst,false);
</script>
</head>


<body>
<!-- This is tutorial 48 -->
<section id="leftbox">
<form>
<p>boxone: <input type="text" id="one" /></p>
<p>boxtwo: <input type="text" id="two" /></p>
<p><input type="button" value="save"  id="button"></p>
</form>
</section>
<section id="rightbox">
Nothing is here!
</section>

</body>
</html>