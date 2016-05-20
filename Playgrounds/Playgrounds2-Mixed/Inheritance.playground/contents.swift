// Inheritance

// Base Class
class Vehicle {
    var numberOfWheels: Int
    var maxPassengers: Int
    func description() -> String {
        return "\(numberOfWheels) wheels up to \(maxPassengers) passengers"
    }
    init() {
        numberOfWheels = 0
        maxPassengers = 1
    }
}
let someVehicle = Vehicle()

class Bicycle: Vehicle {
    override init() {
        super.init()
        numberOfWheels = 2
    }
}
let bicycle = Bicycle()
print("Bicycle: \(bicycle.description())")

class Tandem: Bicycle {
    override init() {
        super.init()
        maxPassengers = 2
    }
}
let tandem = Tandem()
print("Tandem: \(tandem.description())")


// Overriding
class Car: Vehicle {
    var speed: Double = 0.0
    override init() {
        super.init()
        maxPassengers = 5
        numberOfWheels = 4
    }
    override func description() -> String
    {
        return super.description() + "; " + "traveling at \(speed) mph"
    }
}
let car = Car()
print("Car: \(car.description())")

class SpeedLimitedCar: Car {
    override var speed: Double {
    get {
        return super.speed
    }
    set {
        super.speed = min(newValue, 40.0)
    }
    }
}
let limitedCar = SpeedLimitedCar()
limitedCar.speed = 60.0
print("SpeedLimitedCar: \(limitedCar.description())")

class AutomaticCar: Car {
    var gear = 1
    override var speed: Double {
    didSet {
        gear = Int(speed / 10.0) + 1
    }
    }
    override func description() -> String {
        return super.description() + " in gear \(gear)"
    }
}
let automatic = AutomaticCar()
automatic.speed = 35.0
print("utomaticCar: \(automatic.description())")







