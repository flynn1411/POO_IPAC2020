package Unidad1;

/** 
 * Clase "Abstracta" de la cual se espera aplica el concepto de herencia.
 * @author swd
 * @version 0.1.0
 */
public class Human {

	/** Nombre del ser humano. */
	protected String name;
	
	/** Edad */
	protected int age;
	
	/** Sexo */
	protected int sex;
	
	/** Nacionalidad */
	protected int nationality;

	/**
	 * @return the name
	 */
	public String getName() {
		return name;
	}

	/**
	 * @param name the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}

	/**
	 * @return the age
	 */
	public int getAge() {
		return age;
	}

	/**
	 * @param age the age to set
	 */
	public void setAge(int age) {
		this.age = age;
	}

	/**
	 * @return the sex
	 */
	public int getSex() {
		return sex;
	}

	/**
	 * @param sex the sex to set
	 */
	public void setSex(int sex) {
		this.sex = sex;
	}

	/**
	 * @return the nationality
	 */
	public int getNationality() {
		return nationality;
	}

	/**
	 * @param nationality the nationality to set
	 */
	public void setNationality(int nationality) {
		this.nationality = nationality;
	}
	
}
