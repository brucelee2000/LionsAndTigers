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
        
    }
}