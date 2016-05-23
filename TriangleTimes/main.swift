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
var angle1 : Int = getAngleWithPrompt("Angle 1? ")
var angle2 : Int = getAngleWithPrompt("Angle 2? ")
var angle3 : Int = getAngleWithPrompt("Angle 3? ")

