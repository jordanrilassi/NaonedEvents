//
//  LandmarkList.swift
//  NanoedEvents
//
//  Created by Jordan Rilassi on 21/01/2021.
//

import SwiftUI

struct EventList: View {
    var body: some View {
        NavigationView {
            List(naonedEvents) { landmark in
                NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Événements")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        EventList()
    }
}
