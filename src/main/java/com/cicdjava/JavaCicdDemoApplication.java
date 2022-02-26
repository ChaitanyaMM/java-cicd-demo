package com.cicdjava;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
@RequestMapping("/api")
public class JavaCicdDemoApplication {

	public static void main(String[] args) {
		SpringApplication.run(JavaCicdDemoApplication.class, args);
	}

	@GetMapping("/bootup")
	public String OnBootUp() {

		return "Jenkins_CI_CD_is_UPPP!...";
	}

}
