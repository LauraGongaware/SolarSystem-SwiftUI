//
//  PlanetDetailView.swift
//  SolarSystem
//
//  Created by Laura Gongaware on 7/6/22.
//

import SwiftUI

struct PlanetDetailView: View {
    
    @Binding var planet: Planet
    
    var body: some View {
        ZStack {
            Image("galaxy")
                .resizable()
                .frame(maxHeight: .infinity)
                .edgesIgnoringSafeArea(.all)
            VStack (alignment: .center) {
                Text(planet.planetName)
                    .font(.largeTitle)
                VStack (alignment: .leading, spacing: 20) {
                        Image(planet.planetName.lowercased())
                        Text("Maximum Distance From Sun: \(planet.millionKMsFromSun) million km")
                        Text("Day Length in Earth Days: \(planet.dayLength)")
                        Text("Planet Diameter: \(planet.diameter) km")
            }
            .foregroundColor(.white)
                
            }
            .foregroundColor(.white)
        }
    }
}

struct PlanetDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PlanetDetailView(
            planet: .constant(
              Planet(
                planetName: "Earth", diameter: 10, dayLength: 10, millionKMsFromSun: 10, orderNumber: 1))
          )
    }
}
