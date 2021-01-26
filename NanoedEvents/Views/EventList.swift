//
//  EventList.swift
//  NanoedEvents
//
//  Created by Jordan Rilassi on 21/01/2021.
//

import SwiftUI

struct EventList: View {
    var body: some View {
        NavigationView {
            List(naonedEvents) { event in
                NavigationLink(destination: EventDetail(event: event)) {
                    EventRow(event: event)
                }
            }
            .navigationTitle("Événements")
        }
    }
}

struct EventList_Previews: PreviewProvider {
    static var previews: some View {
        EventList()
    }
}
