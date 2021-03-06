//
//  Lion.swift
//  LionsAndTigers
//
//  Created by Yosemite on 11/30/14.
//  Copyright (c) 2014 Yosemite. All rights reserved.
//

import Foundation
import UIKit

class Lion {
    var age = 0
    var isAlphaMale = false
    var image = UIImage(named: "")
    var name = ""
    var subspecies = ""
    
    func roar() {
        println("Lion: Roar Roar!")
    }

    // In the class, we can access property
    // In the struct, we cannot access property
    func changeTOAlphaMale() {
        self.isAlphaMale = true
    }
    
    func randomFact() -> String {
        var randomFact:String
        
        if isAlphaMale {
            randomFact = "Male lions are easy to recognize to their distinct smell."
        } else {
            randomFact = "Female lions form the stable social unit."
        }
        
        return randomFact
    }
}
