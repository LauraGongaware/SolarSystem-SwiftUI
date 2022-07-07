//
//  Planet.swift
//  SolarSystem
//
//  Created by Laura Gongaware on 7/6/22.
//

import Foundation

class Planet: Identifiable {
    var planetName: String
    var imageName: String
    var diameter: Int
    var dayLength: Double
    var millionKMsFromSun: Double
    var orderNumber: Int
    
    init(planetName: String, diameter: Int, dayLength: Double, millionKMsFromSun: Double, orderNumber: Int) {
        self.planetName = planetName
        self.imageName = planetName.lowercased()
        self.diameter = diameter
        self.dayLength = dayLength
        self.millionKMsFromSun = millionKMsFromSun
        self.orderNumber = orderNumber
    }
}
