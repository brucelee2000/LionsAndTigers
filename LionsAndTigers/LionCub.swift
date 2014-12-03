//
//  LionCub.swift
//  LionsAndTigers
//
//  Created by Yosemite on 12/2/14.
//  Copyright (c) 2014 Yosemite. All rights reserved.
//

import Foundation
import UIKit

// Add a subclass
class LionCub:Lion {
   
    var isMale = false
    
    func rubLionCubBelly() {
        println("LionCub: Snuggle and be happy")
    }
    
    // Add addtional functionality by combining "override" and "super"
    override func roar() {
        super.roar()
        println("LionCub: Growl Growl")
    }
    
    override func randomFact() -> String {
        var randomFactString:String = ""
        if isMale {
            randomFactString = "Cubs are usually hidden in dense bush for about six weeks"
        } else {
            randomFactString = "Cubs begin to eat meat at the age of six weeks"
        }
        
        return randomFactString
    }
    
}