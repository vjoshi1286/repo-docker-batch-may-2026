package com.example.demo;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class Restcontroller {
	
	 @GetMapping("/api/message")
	    public String getMessage() {
	        return "Welcome to voidinfinity creating docker image with spring boot angular application 1.2.4";
	    }

}
