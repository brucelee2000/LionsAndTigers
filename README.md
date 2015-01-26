# LionsAndTigers

"self" in class and struct
--------------------------
***self* can be used only on fuction in struct (reference copy)**

***self* can be used on both function and variable in class (reference copy)**

    func chuffManyTimes(times:Int) {
        for var chuff = 0; chuff < times; ++chuff {
            // self can be used only on fuction in struct (reference copy)
            // self can be used on both function and variable in class (reference copy)
            self.chuff()
        }
    }
    
Property member accessibility for member function
----------------------------------------------
**ONLY accessible in class NOT in struct**

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
    }
    
Subclass usage
--------------

    // Add a subclass
    class LionCub:Lion {
        
        func rubLionCubBelly() {
            println("LionCub: Snuggle and be happy")
        }
    }
    
*override* and *super* to extend functionality for subclass
-----------------------------------------------------------

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
