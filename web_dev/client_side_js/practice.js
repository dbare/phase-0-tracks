var html = document.getElementById('about-my-pet');
	html.style.backgroundColor = "red";
	html.style.border = "10px solid black";
	html.addEventListener("click", addGreenBorder);


// we couldnt get this one to work correctly //

//var p = document.getElementsTagName("p");
//	p.style.border = "2px solid black";


function addGreenBorder(event) {
	console.log("click has happened:");
	console.log(event);
	event.target.style.border = "10px solid green";
}

