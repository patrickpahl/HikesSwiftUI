//
//  ContentView.swift
//  SwiftUI-Udemy
//
//  Created by Patrick Pahl on 12/8/20.
//

import SwiftUI

struct ContentView: View {
    
    let hikes = Hike.all()
    
    var body: some View {
        
        NavigationView { // wrap view in nav bar
            List(hikes, id: \.name) { hike in
                NavigationLink( // To segue to next screen
                    destination: HikeDetail(hike: hike),
                    label: {
                        HikeCell(hike: hike)
                    })
            }
            .navigationTitle("Hikes").navigationBarTitleDisplayMode(.inline) // inline puts the title in the nav bar
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HikeCell: View {
    
    let hike: Hike
    
    var body: some View {
        HStack {
            Image(hike.imageURL).resizable()
                .frame(width: 60, height: 60, alignment: .center)
                .cornerRadius(16)
            VStack(alignment: .leading) {
                Text(hike.name).font(.headline)
                let formattedMiles = String(format: "%.2f", hike.miles)
                Text("\(formattedMiles) miles")
            }
        }
    }
}
