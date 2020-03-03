package Unidad2;

public class Factorial {
	
	public int calc(int n) {
		if(n<2) {
			return 1;
		}
		else {
			return n*this.calc(n-1);
		}
	}
	
}
