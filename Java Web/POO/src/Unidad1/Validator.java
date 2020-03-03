package Unidad1;

/** 
 * Permite limpiar y validar distintos tipos de par�metros para la gesti�n de usuarios
 * @author swd
 * @version 0.1.0 
 **/

public class Validator {

	/**
	  * Procesa un nombre de ususario y devuelve una cadena v�lida.
	  * @param userName El nombre de usuario
	  * @return El nombre de usuario limpio de caracteres inv�lidos
	  */
	public String cleanUserName(String userName) {
		
		userName = userName.trim().replaceAll("\\W+", "");
		return userName;
	}
	
	
	/** 
	 * Procesa una eda de usuario y devuelve la cadena validar.
	 * @param age Edad del usuario
	 * @return Un valor num�rico (entero) con la edad del usuario.
	 */
	public int cleanAge(String age) {
		
		age = age.trim().replaceAll("\\D+", "");
		return Integer.parseInt(age);
	}
	
	/**
	  * Permite limpiar un campo de texto "text area", eliminando posibles etiquetas de HTML en el contenido
	  * @param htmlContent Una cadena de un "text area"
	  * @version 0.1.0
	  */
	public String cleanHTMLContent(String htmlContent) {
		htmlContent = htmlContent.trim().replaceAll("</?[^>]+>", "");
		return htmlContent;
	}
	
	public int maxInt(String number, int min, int max) {
		
		return Integer.parseInt(number);
	}

	/** 
	 * Permite validar un parámetro color. Si el parámetro no tiene la forma de un color, se retorna el color rojo.
	 * @param colo Cadena con el formato del color
	 * @return El color válido
	 */
	public String color(String color){
		color = color.trim();

		if( color.matches("([a-z]{3,8})") ){
			return color;
		}
		else if( color.matches("([\\\\da-f]{2}){3})") ) {
			return String.format("#%s", color);
		}
		else{
			return "red";
		}
	}
	
}
