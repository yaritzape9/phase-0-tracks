console.log("Is this working?");

var tag = document.getElementById("hello"); 
tag.style.color = "red";


document.getElementById("cuteness").addEventListener("click", function(){
	x = document.getElementById("details");
    document.getElementById("details").innerHTML = "Of course hes cute hes so tiny and FLUFFY";
    x.style.color = "purple";
});

function myFunction(event) {
    alert("CUTENESS ALLERT PLEASE CONTINUE WITH CAUTION!");
  	event.target.style.border= "solid 5px green";
}

var x = document.getElementById("myBtn");
x.addEventListener("click", myFunction);

