function ParagraphTag(){
	this.name = "p";
	
	this.createTag = function(content) {
		return `<${this.name}>${content}</${this.name}>`;
	};
}