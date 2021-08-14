//
//  CircleImageView.swift
//  Layouts
//
//  Created by Jefferson de Oliveira on 13/08/21.
//

import SwiftUI

struct CircleImageView: View {
    //MARK: - Metrics
    struct Metrics {
        static let widthAndHeightImage: CGFloat = 300
        static let shadowRadius: CGFloat = 7
        static let circleLineWidth: CGFloat = 5
    }
    
    // MARK: - View
    var body: some View {
        Image(ImageName.sogeking.rawValue)
            .frame(width: Metrics.widthAndHeightImage,
                   height: Metrics.widthAndHeightImage,
                   alignment: .center)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: Metrics.circleLineWidth))
            .shadow(radius: Metrics.shadowRadius)
            .navigationBarTitleDisplayMode(.inline)
            .ignoresSafeArea()
    }
}

// MARK: - Preview
struct CircleImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircleImageView()
    }
}
