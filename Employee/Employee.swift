//
//  Employee.swift
//  Employee
//
//  Created by Parikh Dhruvin S. on 3/13/18.
//  Copyright © 2018 Parikh Dhruvin S. All rights reserved.
//

import Foundation

public class Employee{
    //Name of the class is Employee, having the following stored properties -
    //employee id, employee name, gross sales (amount in dollars) and commission rate.
    public var employeeID: Int
    public var employeeName: String
    public var gross_sales: Double
    public var commission_rate: Double
    
    //One designated initializer which initializes all the properties with values.
    public init(employeeID: Int, employeeName: String, gross_sales: Double, commission_rate: Double){
        self.employeeID=employeeID
        self.employeeName=employeeName
        //no negative values for gross sales
        if(gross_sales >= 0)
        {
            self.gross_sales=gross_sales
            
        }
        else{
            self.gross_sales=0
        }
        //no negative values for commision rate
        if(gross_sales >= 0){
        self.commission_rate=commission_rate
        }
        else{
            self.commission_rate=0
        }
    }
    
    //One designated initializer which initializes all the properties with default values.
    public init(){
        self.employeeID=0
        self.employeeName=""
        self.gross_sales=0
        self.commission_rate=0
    }
    
    //One convenience initializer which initializes only employee id and employee name.
    public convenience init(employeeID: Int, employeeName: String) {
        self.init(employeeID:employeeID,employeeName:employeeName,gross_sales:0,commission_rate:0)
    }
    
    //Add a method in the class – calculateSalary()-> Double which calculates and returns  the earnings of an
    //employee( formula: gross sales * commission rate/100)
    public func calculateSalary() -> Double {
        return gross_sales * commission_rate/100
    }
    
    //Also add a method which returns the sting representation of all the property values.
    public func toString() -> String{
        
        return "EmployeeID : " + String(self.employeeID) + ", EmployeeName : " + self.employeeName + ", gross sales : " + String(self.gross_sales) + ", commission rate : " + String(self.commission_rate)
    }
}
