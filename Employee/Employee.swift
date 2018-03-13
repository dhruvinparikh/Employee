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
    //public var gross_sales: Double
    public var commission_rate: Double
    
    //One designated initializer which initializes all the properties with values.
    public init(employeeID: Int, employeeName: String, gross_sales: Double, commission_rate: Double){
        self.employeeID=employeeID
        self.employeeName=employeeName
        self.gross_sales=gross_sales
        self.commission_rate=commission_rate
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
    
    //no negative values for gross sales
    var gross_sales: Double = 0 {
        willSet(newTotalSteps) {
            print("About to set totalSteps to \(newTotalSteps)")
        }
        didSet {
            if totalSteps > oldValue  {
                print("Added \(totalSteps - oldValue) steps")
            }
        }
    }
}
