//
//  EventDetail.swift
//  NanoedEvents
//
//  Created by Jordan Rilassi on 21/01/2021.
//

import SwiftUI

struct EventDetail: View {
    var event: Event
    
    var body: some View {
        ScrollView {
            MapView(coordinate: event.locationCoordinate)
                        .ignoresSafeArea(edges: .top)
                        .frame(height: 300)

            CircleImage(image: event.image)
                        .offset(y: -130)
                        .padding(.bottom, -130)

                    VStack(alignment: .leading) {
                        Text(event.name)
                            .font(.title)
                            .foregroundColor(.primary)

                        HStack {
                            Text(event.park)
                            Spacer()
                            Text(event.state)
                        }
                        .font(.subheadline)
                        .foregroundColor(.secondary)

                        Divider()

                        Text("About \(event.name)")
                            .font(.title2)
                        Text(event.description)
                    }
                    .padding()
        }
        .navigationTitle(event.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct EventDetail_Previews: PreviewProvider {
    static var previews: some View {
        EventDetail(event: events[0])
    }
}
