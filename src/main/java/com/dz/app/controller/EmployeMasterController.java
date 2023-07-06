package com.dz.app.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.ListIterator;

import javax.servlet.http.HttpServletRequest;
import javax.websocket.server.PathParam;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.dz.app.model.Employee;

@Controller
public class EmployeMasterController {

	List<Employee> list = new ArrayList<Employee>();
	int id = 0;

	public int getId() {
		id = id + 1;
		return id;
	}

	@RequestMapping("empForm")
	public String showForm() {
		return "emp-form";
	}

	// old ways
	@RequestMapping(value = "register1", method = RequestMethod.POST)
	public String handledForm1(HttpServletRequest request) {

		String name = request.getParameter("name");
		System.out.println("Name: " + name);
		return "emp-form";
	}

	@RequestMapping(value = "register2", method = RequestMethod.POST)
	public String handledForm2(@RequestParam("name") String name, @RequestParam("mobileNumber") String mobile) {

		System.out.println("Name: " + name);
		System.out.println("mb.Number: " + mobile);
		return "emp-form";
	}

	// used to display form with empty object bind to the form .
	@RequestMapping("employeeform")
	public String BindEmptyObject(Model model) {

		model.addAttribute("EmployeeForm", new Employee());
		return "emp-home";
	}

//	@ModelAttribute("list")
//	here it is used to get data only
//	it is always executed with every request	
//	at each handler request this method is called prior to each request
	@ModelAttribute("list")
	public List<Employee> getCommonData() {

//		list.stream().forEach(System.out::println);
		return list;
	}

	@RequestMapping(path = "register", method = RequestMethod.POST)
	public String saveEmployee(Model model, @ModelAttribute("EmployeeForm") Employee employee) {

//		@ModelAttribute("EmployeeForm") Employee employee
//		it is used to set or get data from jsp form 
//		here it store jsp form data into employee object 

		if (employee.getId() != null) {

			ListIterator<Employee> itr = list.listIterator();
			while (itr.hasNext()) {
				Employee emp = itr.next();

				if (employee.getId() == emp.getId()) {
					emp.setName(employee.getName());
					emp.setMobileNumber(employee.getMobileNumber());
				}
			}
		} else {
			employee.setId(getId());
			list.add(employee);
		}

//		System.out.println(list);
		// return "viewList";
//		model.addAttribute("list",list);
//		return "emp-home";
		return "redirect:employeeform";
	}

	// By Id
	@RequestMapping("deleteEmployee")
	public String deleteEmployee(@RequestParam("id") Integer id) {

		ListIterator<Employee> itr = list.listIterator();
		while (itr.hasNext()) {
			Employee employee = itr.next();
			if (employee.getId() == id) {
				itr.remove();
			}
		}
		return "redirect:employeeform";
	}
	
	@RequestMapping("editEmployee")
	public String editEmployee(Model model, @RequestParam("id") Integer id){

		ListIterator<Employee> itr = list.listIterator();
		while (itr.hasNext()) {
			Employee employee = itr.next();
			if (employee.getId() == id) {
				model.addAttribute("EmployeeForm", employee);
			}
		}
		return "emp-home";
	}
	
	//BY Name
	@RequestMapping("deleteEmployeeByName/{fname}")
	public String deleteEmployeeByName(@PathVariable("fname") String name) {

		ListIterator<Employee> itr = list.listIterator();
		while (itr.hasNext()) {
			Employee employee = itr.next();
			if (employee.getName().equals(name)) {
				itr.remove();
			}
		}
		return "view-list";
	}

}
