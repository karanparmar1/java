package com.kar.techparts;

import java.io.IOException;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class TechPartsApplication {

	public static void main(String[] args) throws IOException {
		SpringApplication.run(TechPartsApplication.class, args);
		openHomePage();
	}
	

	public static void openHomePage() throws IOException {

		Runtime rt = Runtime.getRuntime();
		rt.exec("rundll32 url.dll,FileProtocolHandler " + "http://localhost:8080/techparts.com");
	}

}
