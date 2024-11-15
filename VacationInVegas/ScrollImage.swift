//
//  ScrollImage.swift
//  VacationInVegas
//
//  Created by João Pedro Leopoldino on 2024-11-15.
//

import SwiftUI

struct ScrollImage: View {
    let image: ImageResource
    
    var body: some View {
        Image(image)
            .resizable()
            .scaledToFit()
            .clipShape(.rect(cornerRadius: 20))
            .shadow(radius: 10)
            .scrollTransition { content, phase in
                content
                    .scaleEffect(phase.isIdentity ? 1 : 0.5)
                    .opacity(phase.isIdentity ? 1 : 0.5)
            }
    }
}

#Preview {
    ScrollImage(image: .bellagio)
}
