package Unidad1;

/**
 * Una etiqueta de HTML Anchor (<a></a>) posee la capacidad de enlazar una página con otra.
 * El atributo href contiene la dirección del recurso destino.
 * @author swd
 * @version 0.1.0
 */

public class AnchorTag extends HTMLTag {
	
	private String href;

    public AnchorTag(){}

    public AnchorTag(String href){
        this.href=href;
    }
	
}
