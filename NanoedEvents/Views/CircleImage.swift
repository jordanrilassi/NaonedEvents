//
//  CircleImage.swift
//  NanoedEvents
//
//  Created by Jordan Rilassi on 21/01/2021.
//

import SwiftUI
import SwURL

struct CircleImage: View {
    var imageUrl: URL
    
    var body: some View {
        RemoteImageView(
            url: imageUrl,
                        placeholderImage: Image.init("placeholder"),
                        transition: .custom(transition: .opacity, animation: .easeOut(duration: 0.5))
                    )
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(imageUrl: URL(string: "https://metropole.nantes.fr//banque/public/images/culture/a/7737-1-affiche-ptite-soiree-2020-2021.jpg")!)
    }
}
