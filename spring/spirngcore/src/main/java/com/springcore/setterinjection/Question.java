package com.springcore.setterinjection;

import org.springframework.beans.factory.BeanFactory;  
import org.springframework.beans.factory.xml.XmlBeanFactory;  
import org.springframework.core.io.ClassPathResource;  
import org.springframework.core.io.Resource;  

public class Question {

	public static void main(String[] args) {

		Resource r = new ClassPathResource("com/springcore/setterinjection/applicationContext.xml");
		BeanFactory factory=new XmlBeanFactory(r);  
	      
		test q=(test)factory.getBean("q");  
	    q.displayinfo();
	      

	}

}
	