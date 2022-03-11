package com.cicdjava.controller;

import java.util.List;
import java.util.Map;

import javax.websocket.server.PathParam;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api")
public class TestController {
	
	@Autowired
	private TestRepository testRepository;
	
	
	@PostMapping("/")
	private String insertData() {
		try {
			TestEntity tE = new TestEntity();
			tE.setName("chaitanya bodala");
			tE.setNickName("chy");
			tE.setMail("kc@gmail.com");
			testRepository.save(tE);
		} catch (Exception e) {
			System.out.println("failed :" + e.getMessage());
		}
		return "inserted";
	}
	
	@GetMapping("/")
	private TestEntity getData(@PathParam("id") long id) {
		return testRepository.findById(id).get();
	}
	
	@GetMapping("/list")
	private Iterable<TestEntity> getList() {
		return testRepository.findAll();
	}
	

}
