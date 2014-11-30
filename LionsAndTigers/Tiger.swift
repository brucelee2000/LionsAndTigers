//
//  Tiger.swift
//  LionsAndTigers
//
//  Created by Yosemite on 11/29/14.
//  Copyright (c) 2014 Yosemite. All rights reserved.
//

import Foundation
import UIKit

struct Tiger {
    var age = 0
    var name = ""
    var breed = ""
    var image = UIImage(named: "")
    
    func chuff() {
        println("Tiger: Chuff Chuff!")
    }
    
    func chuffManyTimes(times:Int) {
        for var chuff = 0; chuff < times; ++chuff {
            // self can be used only on fuction in struct (reference copy)
            // self can be used on both function and variable in class (reference copy)
            self.chuff()
        }
    }
    
    func chuffManyTimes(times:Int, isLoud:Bool) {
        for var chuff = 1; chuff <= times; ++chuff {
            if isLoud {
                self.chuff()
            } else {
                println("Tiger: Purr Purr!")
            }
        }
    }
    
    func ageinTigerYears(regularAge:Int) -> Int {
        let newAge = regularAge * 3
        return newAge
    }
    
    func randomFact() -> String {
        let randomNumber = Int(arc4random_uniform(UInt32(3)))
        var randomFact:String
        
        if randomNumber == 0 {
            randomFact = "The Tiger is the biggest species in the cat family"
        } else if randomNumber == 1 {
            randomFact = "Tigers can reach a length of 3.3 meters"
        } else  {
            randomFact = "A group of tigers is known as 'ambush' or 'streak'"
        }
        
        return randomFact
    }
}