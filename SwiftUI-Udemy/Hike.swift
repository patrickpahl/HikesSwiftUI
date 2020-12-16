//
//  Hike.swift
//  SwiftUI-Udemy
//
//  Created by Patrick Pahl on 12/8/20.
//

import Foundation

struct Hike {
    
    let name: String
    let imageURL: String
    let miles: Double
    
}

extension Hike {
    static func all() -> [Hike] {
        return [
            Hike(name: "Living Room Hike", imageURL: "1", miles: 6),
            Hike(name: "Snowbird Hike", imageURL: "2", miles: 5.8),
            Hike(name: "Little Cottonwood Canyon Hike", imageURL: "3", miles: 5),
            Hike(name: "Alta Hike", imageURL: "1", miles: 5),
            Hike(name: "Deer Valley Hike", imageURL: "2", miles: 5),
            Hike(name: "Provo Hike", imageURL: "3", miles: 5),
            Hike(name: "Sugar House Hike", imageURL: "1", miles: 6),
            Hike(name: "South Jordan Hike", imageURL: "2", miles: 5.8),
            Hike(name: "Big Cottonwood Canyon Hike", imageURL: "3", miles: 5),
        ]
    }
}
