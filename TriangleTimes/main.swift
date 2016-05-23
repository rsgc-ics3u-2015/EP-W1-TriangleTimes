//
//  main.swift
//  TriangleTimes
//
//  Created by Russell Gordon on 2016-05-23.
//  Copyright © 2016 Royal St. George's College. All rights reserved.
//

import Foundation

/*
 * Functions used below
 */

func getAngleWithPrompt(message : String) -> Int {
    
    var angle : Int = -1
    
    repeat {
        
        // Get raw input
        print(message, terminator: "")
        if let input = readLine() {
            
            // We have input, try to cast it as an integer
            if let integer = Int(input) {
                
                // We have an integer, is it in an acceptable range?
                if integer > 0 && integer < 180 {
                    
                    // Angle provided is valid, so keep it
                    angle = integer
                    
                }
                
            }
            
        }
        
    } while angle == -1
    
    return angle
    
}


/*
 * Get input
 */
let angle1 : Int = getAngleWithPrompt("Angle 1? ")
let angle2 : Int = getAngleWithPrompt("Angle 2? ")
let angle3 : Int = getAngleWithPrompt("Angle 3? ")

/*
 * Process & show output
 */

// Look for invalid sum of angles
if angle1 + angle2 + angle3 != 180 {
    
    print("Error")
    
} else {
    
    // Try to determine what type of triangle this is
    if angle1 == angle2 && angle2 == angle3 {
        
        print("Equilateral")
        
    } else if angle1 == angle2 || angle1 == angle3 || angle2 == angle3 {
        
        print("Isosceles")
        
    } else {
        
        print("Scalene")
        
    }
    
}












