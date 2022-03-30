package com.example.crud;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

import com.example.crud.controller.UserController;
import com.example.crud.service.UserServiceIMPL;

@SpringBootApplication
@ComponentScan(basePackageClasses = {UserController.class, UserServiceIMPL.class})
public class DemoApplication {

	public static void main(String[] args) {
		SpringApplication.run(DemoApplication.class, args);
	}

}
