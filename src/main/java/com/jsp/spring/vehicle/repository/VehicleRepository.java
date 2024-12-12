package com.jsp.spring.vehicle.repository;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.TypedQuery;

import org.springframework.stereotype.Repository;

import com.jsp.spring.vehicle.entity.Vehicle;

@Repository
public class VehicleRepository {

	private final EntityManagerFactory factory;

	public VehicleRepository(EntityManagerFactory factory) {
		this.factory = factory;
	}

	public void addVehicle(Vehicle vehicle) {
		EntityManager manager = factory.createEntityManager();
		EntityTransaction transaction = manager.getTransaction();
		transaction.begin();
		manager.persist(vehicle);
		transaction.commit();
		manager.close();
	}

	public List<Vehicle> findAllVehicle() {
		EntityManager manager = factory.createEntityManager();
		TypedQuery<Vehicle> query = manager.createQuery("from Vehicle", Vehicle.class);
		List<Vehicle> vehicle = query.getResultList();
		manager.close();
		return vehicle;
	}

	public void deleteVehicle(int vehicleId) {
		EntityManager manager = factory.createEntityManager();
		EntityTransaction transaction = manager.getTransaction();
		transaction.begin();
		Vehicle vehicle = manager.find(Vehicle.class,vehicleId );
		manager.remove(vehicle);
		transaction.commit();
		manager.close();
	}

	public Vehicle findVehicleById(int vehicleId) {
		EntityManager manager = factory.createEntityManager();
		Vehicle vehicle = manager.find(Vehicle .class, vehicleId);
		manager.close();
		return vehicle;
	}

	public void updateVehicle(Vehicle vehicle) {
		EntityManager entityManager = factory.createEntityManager();
		EntityTransaction transaction =entityManager.getTransaction();
		transaction.begin();
		entityManager.merge(vehicle);
		transaction.commit();
		entityManager.close();
	}
}
