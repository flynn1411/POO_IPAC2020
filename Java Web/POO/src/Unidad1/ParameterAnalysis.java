package Unidad1;

/**
 * Representa un fila en el arreglo de resultados
 * @author POO
 * @version 0.1.0
 */
public class ParameterAnalysis {
	
	/** Contiene el valor del parámetro */
	private String value;
	
	/** Contiene la longitud del elemento */
	private int length;
	
	/** Contiene el tipo de dato */
	private String type;
	
	public ParameterAnalysis(String value, int length, String type) {
		
		this.value = value;
		this.length = length;
		this.type = type;
	}

	/**
	 * @return the value
	 */
	public String getValue() {
		return value;
	}

	/**
	 * @param value the value to set
	 */
	public void setValue(String value) {
		this.value = value;
	}

	/**
	 * @return the length
	 */
	public int getLength() {
		return length;
	}

	/**
	 * @param length the length to set
	 */
	public void setLength(int length) {
		this.length = length;
	}

	/**
	 * @return the type
	 */
	public String getType() {
		return type;
	}

	/**
	 * @param type the type to set
	 */
	public void setType(String type) {
		this.type = type;
	}

}