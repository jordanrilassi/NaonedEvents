//
//  EventRow.swift
//  NanoedEvents
//
//  Created by Jordan Rilassi on 21/01/2021.
//

import SwiftUI
import SwURL

struct EventRow: View {
    var event: Event 
    
    var body: some View {
        HStack {
            RemoteImageView(
                url: event.imageUrl,
                            placeholderImage: Image.init("placeholder"),
                            transition: .custom(transition: .opacity, animation: .easeOut(duration: 0.5))
                        )
            .frame(width: 50, height: 50)
            Text(event.name)
            
            Spacer()
        }
    }
}

struct EventRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            EventRow(event: events[0])
            EventRow(event: events[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))

    }
}
