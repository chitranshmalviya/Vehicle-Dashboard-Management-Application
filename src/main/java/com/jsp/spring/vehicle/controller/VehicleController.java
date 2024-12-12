package com.jsp.spring.vehicle.controller;

import java.util.List;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.jsp.spring.vehicle.entity.Vehicle;
import com.jsp.spring.vehicle.service.VehicleService;

@Controller
public class VehicleController {
	
	private final VehicleService vehicleService; 

	public VehicleController(VehicleService vehicleService) {
		this.vehicleService = vehicleService;
	}

	@RequestMapping(path = "/add-vehicle", method = RequestMethod.POST)
	public ModelAndView addVehicle(@ModelAttribute Vehicle vehicle) {
		vehicleService.addVehicle(vehicle);
		return new ModelAndView("redirect:/index.jsp");
	}
	
	@RequestMapping("/display-all-vehicle")
	public ModelAndView findAllVehicle() {
		List<Vehicle> vehicle = vehicleService.displayVehicle();
		return new ModelAndView("FindVehicle.jsp" , "vehicle", vehicle);	
	}
	
	@RequestMapping("/delete-vehicle")
	public ModelAndView deleteVehicle(@RequestParam("vehicle_id") int vehicleId) {
		vehicleService.deleteVehicle(vehicleId);
		return new ModelAndView("redirect:display-all-vehicle");
	}
	
	@RequestMapping(path ="/update-vehicle", method = RequestMethod.GET)
	public ModelAndView updateProductRequest(@RequestParam("vehicle_id") int vehicleId){
		Vehicle vehicle = vehicleService.findVehicleById(vehicleId);
		return new ModelAndView("UpdateVehicle.jsp", "vehicle", vehicle);
	}

	@RequestMapping(path = "/update-vehicle", method = RequestMethod.POST)
	public ModelAndView updateVehicle(Vehicle vehicle) {
		vehicleService.updateVehicle(vehicle);
		return new ModelAndView("redirect:/display-all-vehicle");
	}
}