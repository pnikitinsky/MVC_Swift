//
//  Car.swift
//  MvvmTest
//
//  Created by Pavel Nikitinskiy on 11/11/16.
//  Copyright © 2016 Pavel Nikitinskiy. All rights reserved.
//

import Foundation
class Car {
    var model = ""
    var make = ""
    var horsepower = 0
    var photoURL = ""
    
    init(model: String, make: String, horsepower: Int, photoURL: String) {
        self.model = model
        self.make = make
        self.horsepower = horsepower
        self.photoURL = photoURL
    }
}



class CarViewModel {
    private var car: Car?
    var modelText: String? {
        return car?.model
    }
    var makeText: String? {
        return car?.make
    }
    var horsepowerText: String? {
        guard let horsepower = car?.horsepower else {
            return nil
        }
        return "\(horsepower) HP"
    }
    var titleText: String? {
        guard let make = car?.make,
            let model = car?.model
            else {
            return nil
        }
        return "\(make) \(model)"
    }
    var photoURL: NSURL? {
        guard let photoURL = car?.photoURL
            else {
            return nil
        }
        return NSURL(string: photoURL)
    }
    
    init(car: Car) {
        self.car = car
    }
    
    
    
}
