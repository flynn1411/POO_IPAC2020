package Unidad1;

/**
 * Una etiqueta de HTML Span (<span></span>).
 * @author swd
 * @version 0.1.0
 */

public class SpanTag extends HTMLTag {

    public SpanTag(){
    	this.name = "span";
    }

    public SpanTag(String content){
        this.content = content;
        this.name = "span";
    }
	
}
