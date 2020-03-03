package Unidad1;

/** 
 * Permite dibujar una figura rectangular en la pantalla usando etiquetas de HTML.
 * @author POO
 * @version 0.1.0
 */

public class Rectangle{
    /** 
     * Constructor vacio de clase
     */

     public Rectangle(){}

     public String draw(Point p, int h, int w, String color, int times, int zIndex){
        if(times == 0){
           return this.draw(p, h, w, color, zIndex);
        }
        else{
        	Point newPoint = new Point( String.format(" %s, %s", p.getX()+2, p.getY() +2) );
        	return this.draw(p, h, w, color, zIndex).replace("&nbsp", this.draw(newPoint, h, w, color, zIndex-1, times-1));
        }
     }

     public String draw(Point p, int h, int w, String color, int zIndex){

        StringBuilder result = new StringBuilder(
           String.format("<div style='border 1px solid black; background-color: %s; position: fixed; top: %svh; left: %svw; width: %svw; height: %svh; z-index: %s;'>&nbsp;</div>",
           color,
           p.getY(),
           p.getX(),
           w,
           h,
           zIndex)
        );
   
        return result.toString();
     }

     public String draw(Point pointA, Point pointB, String color, int zIndex){

        int h = pointB.getY();
        int w = pointB.getX();
        
        return this.draw(pointA, h, w, color, zIndex);
     }

}