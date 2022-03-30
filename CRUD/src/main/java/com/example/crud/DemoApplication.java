package com.example.crud;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

import com.example.crud.controller.DemoForJobSeekerController;
import com.example.crud.service.DemoForJobSeekerServiceIMPL;

@SpringBootApplication
@ComponentScan(basePackageClasses = {DemoForJobSeekerController.class, DemoForJobSeekerServiceIMPL.class})
public class DemoApplication {

	public static void main(String[] args) {
		SpringApplication.run(DemoApplication.class, args);
	}

}
