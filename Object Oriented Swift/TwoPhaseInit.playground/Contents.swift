/*:
 ## Learn Swift
 ### Object Oriented Swift
 ### Two Phase Initializations
 
 Problem: How can one init init the other?
 */

//: Design Rocket Ship
struct NuclearRocket {
    var meters: Double
    var liters: Double
    
    //init for 🇰🇷
    init(meters: Double, liters: Double) {
        self.meters = meters
        self.liters = liters
    }
    
    //Init for 🇺🇸
    init(ft: Double, gallon: Double) {
        let convertedMeters = ft/3.28
        let convertedLiters = gallon * 3.78
        
        self.init(meters: convertedMeters, liters: convertedLiters)
    }
}

// 🇰🇷 Scientist
var rocket = NuclearRocket(meters: 20, liters: 20)
rocket.liters
rocket.meters

// 🇺🇸 Scientist
var newRocket = NuclearRocket(ft: 300, gallon: 2)
newRocket.liters
newRocket.meters
