import Foundation

protocol EntertainmentSystem {
    var hasTV: Bool { get set }
    
    func turnOnTV() -> Void
    func turnOffTV() -> Void
}

protocol WaterSystem {
    var waterCapacity: Double { get set }
    func fillWaterTank() -> Void
    func drainWaterTank() -> Void
}

class Comper: EntertainmentSystem, WaterSystem {
    
    var hasTV: Bool
    var waterCapacity: Double
    var fillWaterTankValue: Int
    var drainWaterTankValue: Int
    
    init() {
        self.fillWaterTankValue = 0
        self.drainWaterTankValue = 100
        self.hasTV = true
        self.waterCapacity = 0
    }
    
    func turnOnTV() {
        if self.hasTV {
            print("TV is turning on")
            self.hasTV = !self.hasTV
        } else {
            print("TV is already on")
        }
    }
    
    func turnOffTV() {
    if !self.hasTV {
            print("TV is turning off now")
            self.hasTV = !self.hasTV
        } else {
            print("TV is already off")
        }
    }
    
    func fillWaterTank() {
        if self.waterCapacity == 0 {
            print("Water tank is empty. Filling water tank...")
            self.waterCapacity = 100
        } else {
            print("Water tank is already full")
        }
    }
    
    func drainWaterTank() {
        if self.waterCapacity > 0 {
            print("Water tank is full. Draining water tank...")
            self.waterCapacity = 0
        } else {
            print("Water tank is already empty")
        }
    }
}

let campingTrailer = Comper()

campingTrailer.turnOnTV()
campingTrailer.turnOffTV()
campingTrailer.turnOnTV()
campingTrailer.turnOffTV()

print()
campingTrailer.fillWaterTank()
campingTrailer.drainWaterTank()
