package com.codeplanetweb.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TestRestService {

	@Autowired
	TestRestRepository testRestRepository;
	
	public List getFirstApi(String email) {
	  return testRestRepository.getFirstApi(email);
	}

}