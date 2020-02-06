package Unidad1;

import java.util.ArrayList;
import java.util.Iterator;
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
public class ParameterManager{
    /** Cuantifica la cantidad de parámetros. */
    private int count;

    public ReponseParameterManager analize (Map<String, String[]> parameters){
    	
    	List<ParameterAnalysis> results = new ArrayList<>();
        ReponseParameterManager rpm = new ReponseParameterManager();
        
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
        	
        	//Ejemplo primitivo de la generaci�n de la matriz
        	StringBuilder p = new StringBuilder("");
        	for(String element: parameter) {
        		int length;
        		String parameterType;
        		
        		//Tama�o en caracteres del valor del par�metro
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
        	
        	rpm.setCount(parameters.size());
        	System.out.println(p);
        	rpm.setResult(results);
        }
        
        //rpm.setCount(count);
        return rpm;
    }

}