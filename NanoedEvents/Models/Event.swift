//
//  Event.swift
//  NanoedEvents
//
//  Created by Jordan Rilassi on 21/01/2021.
//

import Foundation
import SwiftUI
import CoreLocation

struct Event: Hashable, Codable, Identifiable {
    var id: String
    var name: String
    var park: String
    var state: String
    var description: String
    
    private var imageName: String?
    var image: Image {
        Image(imageName ?? "")
    }
    
    var locationCoordinate: CLLocationCoordinate2D {
        let stringCoordinates = location.components(separatedBy: ", ")
        guard stringCoordinates.count == 2, let latString = (stringCoordinates.first as NSString?), let longString = (stringCoordinates.last as NSString?) else { return CLLocationCoordinate2D(latitude: 0, longitude: 0) }
        let lat = latString.doubleValue
        let long = longString.doubleValue
        return CLLocationCoordinate2D(
                latitude: lat,
                longitude: long)
    }
    
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
    private var location: String
    
    enum CodingKeys: String, CodingKey {
        case id = "id_manif"
        case name = "nom"
        case park = "adresse"
        case state = "rubrique"
        case description
        case imageName = "media_url2"
        case location
    }
}

struct Record: Codable {
    var fields: Event
}

struct EventsData: Codable {
    var records: [Record]
}
