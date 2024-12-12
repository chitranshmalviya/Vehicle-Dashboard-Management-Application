package com.jsp.spring.vehicle.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Vehicle {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String model;
	private String manufacturer;
	private String color;
	private String engineType;
	private int cost;
	
	public int getId() 
	{
		return id;
	}
	public void setId(int id) 
	{
		this.id = id;
	}
	public String getModel() 
	{
		return model;
	}
	public void setModel(String model)
	{
		this.model = model;
	}
	public String getManufacturer()
	{
		return manufacturer;
	}
	public void setManufacturer(String manufacturer) 
	{
		this.manufacturer = manufacturer;
	}
	public String getColor() 
	{
		return color;
	}
	public void setColor(String color)
	{
		this.color = color;
	}
	public String getEngineType()
	{
		return engineType;
	}
	public void setEngineType(String engineType)
	{
		this.engineType = engineType;
	}
	public int getCost()
	{
		return cost;
	}
	public void setCost(int cost)
	{
		this.cost = cost;
	}
}