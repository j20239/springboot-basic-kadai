package com.example.springkadaitodo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.example.springkadaitodo.service.ToDoService;

@Controller
public class ToDoController {
	@Autowired
	private ToDoService service;
	@GetMapping("/todo")
	public String displayAllToDo(Model model) {
		model.addAttribute("todos",service.getAllToDo());
		return "todoView";
	}
}
