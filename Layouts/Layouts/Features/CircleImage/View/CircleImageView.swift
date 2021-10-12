//
//  CircleImageView.swift
//  Layouts
//
//  Created by Jefferson de Oliveira on 13/08/21.
//

import SwiftUI

struct CircleImageView: View {
    struct Metrics {
        static let widthAndHeightImage: CGFloat = 300
        static let shadowRadius: CGFloat = 7
        static let circleLineWidth: CGFloat = 5
    }
    
    var body: some View {
        Image(Images.sogeking.rawValue)
            .frame(width: Metrics.widthAndHeightImage,
                   height: Metrics.widthAndHeightImage,
                   alignment: .center)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white,
                                     lineWidth: Metrics.circleLineWidth))
            .shadow(radius: Metrics.shadowRadius)
            .navigationBarTitleDisplayMode(.inline)
            .ignoresSafeArea()
    }
}

struct CircleImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircleImageView()
    }
}
