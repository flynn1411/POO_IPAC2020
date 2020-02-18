package Unidad1;

/** 
 * Permite limpiar y validar distintos tipos de parámetros para la gestión de usuarios
 * @author swd
 * @version 0.1.0 
 **/

public class Validator {

	/**
	  * Procesa un nombre de ususario y devuelve una cadena válida.
	  * @param userName El nombre de usuario
	  * @return El nombre de usuario limpio de caracteres inválidos
	  */
	public String cleanUserName(String userName) {
		
		userName = userName.trim().replaceAll("\\W+", "");
		return userName;
	}
	
	
	/** 
	 * Procesa una eda de usuario y devuelve la cadena validar.
	 * @param age Edad del usuario
	 * @return Un valor numérico (entero) con la edad del usuario.
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
	
}
