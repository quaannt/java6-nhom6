package com.asm;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.scheduling.annotation.EnableScheduling;

@SpringBootApplication
@EnableScheduling
public class ASMGD2Application {

	public static void main(String[] args) {
		SpringApplication.run(ASMGD2Application.class, args);
	}

}
