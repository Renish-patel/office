package com.swarck.Resulesetextractor;
import org.springframework.context.ApplicationContext;  
import org.springframework.context.support.ClassPathXmlApplicationContext;  
import java.util.List;  

public class test {
	 	public static void main(String[] args) {  
	    ApplicationContext ctx = new ClassPathXmlApplicationContext("com/swarck/Resulesetextractor/BA.xml");  
	    EmployeeDao dao=(EmployeeDao)ctx.getBean("edao");  
	    List<Employee> list=dao.getAllEmployees();  
	          
	    for(Employee e:list)  
	        System.out.println(e);  
	          
	    }  
	  
	}  

