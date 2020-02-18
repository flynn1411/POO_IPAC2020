package Unidad1;

/** 
 * Permite establecer un punto como parámetro "X y Y" que hacen referencia a una figura geométrica.
 * @author POO
 */

public class Point{
    
    /** La coordenada x del punto */
    private int x;

    /** La coordenada y del punto */
    private int y;

    public Point(String pointAsString ){
        pointAsString = pointAsString.trim();

        if(pointAsString.matches("\\d+, \\d+")) {

            String[] temporalPoint = pointAsString.split(",");
            this.x = Integer.parseInt(temporalPoint[0]);
            this.y = Integer.parseInt(temporalPoint[1]);

        }

        else{
            this.x = 0;
            this.y = 0;
        }
    }

    public int getX(){
        return this.x;
    }

    public int getY(){
        return this.y;
    }

}