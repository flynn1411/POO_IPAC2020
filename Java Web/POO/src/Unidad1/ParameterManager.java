package Unidad1;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/*

Visibilidad:
Caracteristica de los objetos
    Public:Cuando el atributo o método se puede ver desde dentro o fuera de la clase.
    Private:No se puede heredar ni son visibles fuera de la clase.
    Protected: No son visibles fuera de la clase pero son heredables.

*/
/**
 * Gestiona la cantidad de parámetros recibidos.
 * Cuantifica y categoriza los parámetros recibidos por el programa.
 * @author @POO
 * @version 0.1.0
 */
public class ParameterManager {
	
	
	
public ResponseParameterManager analyze (Map<String, String[]> parameters){
    	
    	int count = 0;
    	ResponseParameterManager rpm = new ResponseParameterManager();
    	List<ParameterAnalysis> results = new ArrayList<>();
        
        for (String[] parameter: parameters.values()) {
        	
        	/**
        	 * hobbie=1
        	 * age=20
        	 * name=POO
        	 * hobbie=1
        	 * hobbie=1
        	 * hobbie=0
        	 * hobbie=7
        	 */
        	
        	//Ejemplo primitivo de la generación de la matriz
        	//StringBuilder p = new StringBuilder("");
        	for(String element: parameter) {
        		
        		count++;
        		
        		int length;
        		String parameterType;
        		
        		//Tamaño en caracteres del valor del parámetro
        		length = element.length();
        		
        		//element contiene el valor del parametro que se procesa
        		if(element.matches("-?\\d+(\\.\\d+)?")) {
        			parameterType = "numeric";
        		}else {
        			parameterType = "alphanumeric";
        		}
        		
        		results.add(
        				new ParameterAnalysis(element, length, parameterType)
        				);
        		
        	}
        	
        	rpm.setCount(count);
        	//System.out.println(p);
        	rpm.setResult(results);
        }
        
        //rpm.setCount(count);
        return rpm;
    }
    
    public String convertResponseToHTML(ResponseParameterManager rpm) {
    	
    	int count = rpm.getCount();
    	List<ParameterAnalysis> results = rpm.getResults();
    	
    	StringBuilder html = new StringBuilder("<table border ='1'>");
    	
    	html.append( String.format("<tr><td>Parámetros encontrados:</td><td>%s</td></tr>", count) );
    	html.append( String.format("<tr><td colspan='2'>%s</td></tr>", this.convertResultsToHTMLTable(results) ) );
    	
    	html.append("</table>");
    	return html.toString();
    }
    
    private String convertResultsToHTMLTable( List<ParameterAnalysis> results ) {
    	int count = 1;
    	StringBuilder html = new StringBuilder("<table border='1'>");
    	
    	html.append("<thead>");
	    	html.append("<tr>");
				html.append( "<th>No.</th>" );
				html.append( "<th>Valor</th>" );
				html.append( "<th>Tamaño en Carácteres</th>" );
				html.append( "<th>Tipo de Dato</th>" );
			html.append("</tr>");
		html.append("<thead>");
		
		html.append("<tbody>");
    	
		try {
			for( ParameterAnalysis element: results ) {
	    		html.append("<tr>");
	    			html.append( String.format( "<td>%s</td>" , count ) );
	    			html.append( String.format( "<td>%s</td>" , element.getValue() ) );
	    			html.append( String.format( "<td>%s</td>" , element.getLength() ) );
	    			html.append( String.format( "<td>%s</td>" , element.getType() ) );
	    		html.append("</tr>");
	    		count++;
	    	}
		}catch(Exception e) {
			System.out.println("Error: " + e);
		}
    	
    	
    	html.append("</tbody>");
    	html.append("</table>");
    	return html.toString();
    }
	
}
