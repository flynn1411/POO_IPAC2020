package Unidad1;

/**
  * Representa a un usuario conectado.
  * @author swd
  * @version 0.1.0
  */

public class User{
	
	/** Nombre del usuario*/
    private String fullName;
    
    /** Edad del usuario*/
    private int age;

    public User(String fullName, int age){
        this.fullName = fullName;
        this.age = age;
    }

	/**
	 * @return the fullName
	 */
	public String getFullName() {
		return fullName;
	}

	/**
	 * @param fullName the fullName to set
	 */
	public void setFullName(String fullName) {
		this.fullName = fullName;
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

	

}