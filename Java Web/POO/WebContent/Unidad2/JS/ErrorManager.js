function ErrorManager(){
	this.show = function(tag) {
		tag.style.border = "1px solid red";
    	tag.style.color = "red";
    	tag.innerHTML = "Error, nombre de usuario no cumple con el formato.";
	};
	
	this.hide = function(tag) {
		tag.style.border = "0px solid transparent";
		tag.style.color = "transparent";
		tag.innerHTML = "";
	};
}