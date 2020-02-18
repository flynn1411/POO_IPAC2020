package Unidad1;

/**
 * Una etiqueta de HTML Anchor (<a></a>) posee la capacidad de enlazar una página con otra.
 * El atributo href contiene la dirección del recurso destino.
 * @author swd
 * @version 0.1.0
 */

public class AnchorTag extends HTMLTag {
	
	private String href;

    public AnchorTag(){
    	this.name = "a";
    	this.href = "";
    }
    
    public AnchorTag(String content) {
    	this.name = "a";
    	this.content = content;
    }

    public AnchorTag(String href, String content){
        this.href = href;
        this.name = "a";
        this.content = content;
    }
    
    public String print(){
    	
    	StringBuilder hrefTag = new StringBuilder("");
        StringBuilder styleTag = new StringBuilder("");

        if (this.style.length()>0){
            styleTag.append(" style='");
            styleTag.append(this.style);
            styleTag.append("'");
        }
        
        if(this.href.length() > 0) {
        	hrefTag.append(String.format(" href = '%s'", this.href));
        }
        
        StringBuilder result = new StringBuilder(String.format("<%s%s%s>", this.name, styleTag.toString(), hrefTag.toString()));
        result.append(this.content);
        result.append(String.format("<%s>",this.name));
        return result.toString();
    }
	
}
