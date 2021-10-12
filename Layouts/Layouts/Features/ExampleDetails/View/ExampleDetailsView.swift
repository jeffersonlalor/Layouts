//
//  PlaceDetailsView.swift
//  Layouts
//
//  Created by Jefferson de Oliveira on 16/08/21.
//

import SwiftUI

struct ExampleDetailsView: View {
    private struct Metrics {
        static let mapViewHeight: CGFloat = 300
        static let circleViewOffset: CGFloat = -130
    }
    
    var body: some View {
        ScrollView {
            MapView()
                .frame(height: Metrics.mapViewHeight)
            
            CircleImageView()
                .offset(y: Metrics.circleViewOffset)
                .padding(.bottom, Metrics.circleViewOffset)
            
            ExampleDetailsDescriptionView()
                .padding()
            
            Spacer()
        }
        .navigationBarTitleDisplayMode(.inline)
        .ignoresSafeArea()
    }
}

struct ExampleDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ExampleDetailsView()
    }
}
