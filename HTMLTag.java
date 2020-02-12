package Unidad1;

public class HTMLTag{
    /** Nombre de etiqueta*/
    protected String name;

    /** El estilo de la etiqueta*/
    protected String style;

    /** El contenido de la etiqueta*/
    protected String content;

    public HTMLTag(String name, String style, String content){
        this.name = name;
        this.style = style;
        this.content = content;
    }

    public void setName(String name){}

    public void setStyle(String style){}

    public void setContent(String content){}

    public String getName(){
        return this.name;
    }

    public String getStyle(){
         return this.style;
    }

    public String getContent(){
        return this.content;
    }

    public String print(){

        StringBuilder styleTag = new StringBuilder("");

        if(this.style.length > 0){
            styleTag.append(" style='");
            styleTag.append(this.style);
            styleTag.append(";'");
        }

        StringBuilder result = new StringBuilder(String.format( "<%s%s>", this.name, styleTag.toString() ));


        result.append(String.format( format, args))

        return result.toString();
    }

}