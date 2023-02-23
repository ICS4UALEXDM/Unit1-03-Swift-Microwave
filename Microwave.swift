import Foundation
import Glibc
//
//  Einstein.swift
//
//  Created by Alex De Meo
//  Created on 2023/02/11
//  Version 1.0
//  Copyright (c) 2023 Alex De Meo. All rights reserved.
//
//  This program calculates the Energy released when mass.
// is converted to energy

// creating constants
let secPerMin = 60
let subTime = 60.0
let soupTime = 105.0
let pizzaTime = 45.0
let soupStr = "soup"
let subStr = "sub"
let pizzaStr = "pizza"
var valid = false
let max = 3.0
let min = 0.0
var timeUnf = 0.0

// Getting the radius
print("What is your item: ", terminator: "")
let item = readLine()!
print("How many \(item)s do you have: ", terminator: "")

if let numItems = Double(readLine()!) {
    // Deciding what to output
    if (numItems > min && numItems <= max) {

        // Doing the math
        if (item == soupStr) {
            timeUnf = soupTime * (((numItems - 1) / 2) + 1)
            valid = true
        } else if (item == pizzaStr) {
            timeUnf = pizzaTime * (((numItems - 1) / 2) + 1)
            valid = true
        } else if (item == subStr) {
            timeUnf = subTime * (((numItems - 1) / 2) + 1)
            valid = true
        } else {
            print("\(item) is not an option!")
        }
        if (valid) {
            let mins = Int(timeUnf) / secPerMin
            let secs = Int(timeUnf) % secPerMin
            if (String(secs).count == 1) {
                print(
                    "You need to put \(mins):0\(secs) on the microwave timer"
                    )
            } else {
                print(
                    "You need to put \(mins):\(secs) on the microwave timer"
                    )
            }
        }
    } else {
        print("Selection must be between 1-3.")
    }
} else {
    print("non-numerical input is invalid.")
}