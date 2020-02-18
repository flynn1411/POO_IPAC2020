package Unidad1;

import java.util.List;

/**
  * Es la respuesta del análisis de parámetros.
  * @author @POO
  * @version 0.1.0 
  */
public class ResponseParameterManager{
    /**La cantidad de parámetro */
    private int count;
    /** */
    private List<ParameterAnalysis> results;
    
	public void setCount(int count) {
		// TODO Auto-generated method stub
		this.count = count;
	}

	public void setResult(List<ParameterAnalysis> results) {
		this.results = results;
		
    }
    
    public List<ParameterAnalysis> getResults(){
        return this.results;
    }

	public int getCount() {
		// TODO Auto-generated method stub
		return this.count;
	}
}