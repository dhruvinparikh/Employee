//
//  main.swift
//  Employee
//
//  Created by Parikh Dhruvin S. on 3/13/18.
//  Copyright © 2018 Parikh Dhruvin S. All rights reserved.
//

import Foundation

let employee1 = Employee(employeeID:17,employeeName:"Dhruvin",gross_sales:10000.0,commission_rate:10)
print(employee1.toString())
print("Salary is :",employee1.calculateSalary())

let employee2 = Employee(employeeID: 18, employeeName: "David")
print(employee2.toString())
employee2.gross_sales = 20000
employee2.commission_rate = 20.0
print(employee2.toString())
print("Salary is ",employee2.calculateSalary())

