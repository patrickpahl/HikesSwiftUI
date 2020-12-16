//
//  HikeDetail.swift
//  SwiftUI-Udemy
//
//  Created by Patrick Pahl on 12/8/20.
//

import SwiftUI

struct HikeDetail: View {
    
    let hike: Hike
    @State private var zoomed: Bool = false
    
    var body: some View {
        VStack {
            Image(hike.imageURL)
                .resizable()
                .aspectRatio(contentMode: self.zoomed ? .fill : .fit)
                .onTapGesture {
                    withAnimation {
                        self.zoomed.toggle()
                    }
                }
            Text(hike.name)
            let formattedMiles = String(format: "%.2f", hike.miles)
            Text(formattedMiles)
        }.navigationTitle(hike.name)
    }
}

// Creates the preview
struct HikeDetail_Previews: PreviewProvider {
    static var previews: some View {
        HikeDetail(hike: Hike(name: "Angels Landing", imageURL: "1", miles: 12.4))
    }
}
