package Unidad1;
/*

Visibilidad:
Caracteristica de los objetos
    Public:Cuando el atributo o método se puede ver desde dentro o fuera de la clase.
    Private:No se puede heredar ni son visibles fuera de la clase.
    Protected: No son visibles fuera de la clase pero son heredables.

*/
/**
    Gestiona la cantidad de parámetros recibidos.
    Cuantifica y categoriza los parámetros recibidos por el programa.
    @author @POO
    @version 0.1.0
 */
public class ParameterManager{
    /** Cuantifica la cantidad de parámetros. */
    private int count;

    /**
    @param count Establece la Cantidad de parametros detectados
    */
    public void setCount(int count){
        this.count = count;
    }

    /**
    Obtiene la cantidad de parámetros
    @return count
     */
    public int getCount(){
        return count;
    }

    public ReponseParameterManager analize (Map<String, String[]>){
        ReponseParameterManager rpm = new ReponseParameterManager()
        return rpm;
    }

}