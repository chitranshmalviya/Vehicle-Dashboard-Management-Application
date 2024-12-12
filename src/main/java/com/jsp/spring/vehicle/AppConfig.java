package com.jsp.spring.vehicle;

import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

@Configuration
@ComponentScan(basePackages = {"com.jsp.spring.vehicle"})
public class AppConfig {
	
	@Bean
	EntityManagerFactory entityManagerFactory() {
		return Persistence.createEntityManagerFactory("abc");
	}
}