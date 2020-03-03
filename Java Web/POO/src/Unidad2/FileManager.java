package Unidad2;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStreamReader;

public class FileManager {
	
	public String path() {
		
		File f = new File(".");
		
		return f.getAbsolutePath();
	}
	
	public String read(String fileName) {
		
		StringBuilder content = new StringBuilder("");
		
		try{
			
			FileInputStream fis = new FileInputStream(fileName);
			InputStreamReader isr = new InputStreamReader(fis);
			BufferedReader br = new BufferedReader(isr);
			
			try {
				
				String line;
				
				while( (line = br.readLine()) != null ) {
					content.append(line);
					content.append("\n");
				}
				
			}finally {
				
				br.close();
				
			}
			
			
		}catch(Exception e) {
			System.out.print(e);
		}
		
		return content.toString();
	}
	
	public void write(String fileName, String content) {
		this.create(fileName, content);
	}
	
	public void create(String fileName, String content) {
		
		try {
			
			FileOutputStream UwU_Reader = new FileOutputStream(fileName);
			
			try {
				byte[] b = content.getBytes();
				UwU_Reader.write(b);
			}finally {
				UwU_Reader.close();
			}
			
		}catch(Exception e) {
			
		}
		
	}
	
}
