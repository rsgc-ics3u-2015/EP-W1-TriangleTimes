//
//  main.swift
//  TriangleTimes
//
//  Created by Russell Gordon on 2016-05-23.
//  Copyright © 2016 Royal St. George's College. All rights reserved.
//

import Foundation

/*
 * Get input
 */
var angle1 : Int = -1
repeat {
    
    // Get raw input
    print("Angle 1? ", terminator: "")
    if let input = readLine() {
        
        // We have input, try to cast it as an integer
        if let integer = Int(input) {
            
            // We have an integer, is it in an acceptable range?
            if integer > 0 && integer < 180 {
                
                // Angle provided is valid, so keep it
                angle1 = integer
                
            }
            
        }
        
    }
    
} while angle1 == -1

