//
//  ModelData.swift
//  NanoedEvents
//
//  Created by Jordan Rilassi on 21/01/2021.
//

import Foundation
import SwURL

var events: [Event] = load("eventsData.json")
var eventsData: EventsData = load("realEventsData.json")

var naonedEvents: [Event] {
    SwURLDebug.loggingEnabled = true
    return eventsData.records.map { $0.fields }
}

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data

    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }

    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }

    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}

