package com.jsp.spring.vehicle.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.jsp.spring.vehicle.entity.Vehicle;
import com.jsp.spring.vehicle.repository.VehicleRepository;

@Service
public class VehicleService {
	private final VehicleRepository vehicleRepository;
	

	public VehicleService(VehicleRepository vehicleRepository) {
		this.vehicleRepository = vehicleRepository;
	}


	public void addVehicle(Vehicle vehicle) {
		vehicleRepository.addVehicle(vehicle);
	}


	public List<Vehicle> displayVehicle() {
		return vehicleRepository.findAllVehicle();
	}


	public void deleteVehicle(int vehicleId) {
		vehicleRepository.deleteVehicle(vehicleId);
	}
	

	public Vehicle findVehicleById(int vehicleId) {
		return vehicleRepository.findVehicleById(vehicleId);
	}

	public void updateVehicle(Vehicle vehicle) {
		vehicleRepository.updateVehicle(vehicle);
	}

}
