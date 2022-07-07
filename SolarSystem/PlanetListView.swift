//
//  PlanetListView.swift
//  SolarSystem
//
//  Created by Laura Gongaware on 7/6/22.
//

import SwiftUI

struct PlanetListView: View {
    
    @State var viewModel = PlanetDataStore()
    
    var body: some View {
       
        NavigationView {
            VStack {
                Image("galaxy")
                  .resizable()
                  .frame(maxHeight: .infinity)
                  .edgesIgnoringSafeArea(.all)
                  .frame(height: 10)
                  .blur(radius: 30)
               
                VStack {
                    List{
                        ForEach(PlanetDataStore.planets) { planet in
                    NavigationLink {
                        PlanetDetailView(planet: .constant(planet))
                            } label: {
                                    HStack {
                                        Image(planet.planetName.lowercased())
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 100, height: 100, alignment: .leading)
                                        VStack(alignment: .leading) {
                                            Text(planet.planetName)
                                            Text("\(planet.orderNumber)")
                                       
                        }
                            }
                                    .navigationTitle(Text("Solar System"))
                            }
                        }
                        .listRowBackground(Color.clear)
                    }
                }
            }
        }
    }
}

struct PlanetListView_Previews: PreviewProvider {
    static var previews: some View {
        PlanetListView()
            .preferredColorScheme(.dark)
    }
}
