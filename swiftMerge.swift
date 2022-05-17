import Foundation


enum TypeOfDevice{
    case PUMP; 
}


class Pump: Namable, Stringable{
    var serialNumber: String
    var power: Int

    init(serialNumber: String, power: Int){
        self.serialNumber = serialNumber
        self.power = power
    }

    func getClassName() -> String{
        return String(describing: Pump.self)
    }

    func toString(){
        let pumpMirror = Mirror(reflecting: self)
        let properties = pumpMirror.children
        print(getClassName());

        for property in properties{
            print("\(property.label!) = \(property.value)")
        }
    }
}


class Device : DeviceIdentifiable, Namable, Stringable{
    var deviceType: TypeOfDevice
    var identifier: String
    var weight: Double


    init(deviceType: TypeOfDevice, identifier: String, weight: Dobule)
    {
        self.deviceType = deviceType
        self.identifier = identifier
        self.weight = weight
    }

    func getIdentity() -> String{
            return self.identifier
    }

    func getClassName() -> String{  
         return String(describing: Device.self)   
    }
}

protocol DeviceIdentifiable {
    
    func getIdentity() -> String   
}

protocol Namable{
    func getClassName() -> String
}

protocol Stringable{
    func toString() -> String
}
