//
//  PlaceDetailsView.swift
//  Layouts
//
//  Created by Jefferson de Oliveira on 16/08/21.
//

import SwiftUI

struct ExampleDetailsView: View {
    // MARK: - Matrics
    private struct Metrics {
        static let mapViewHeight: CGFloat = 300
        static let circleViewOffset: CGFloat = -130
    }
    
    // MARK: - View
    var body: some View {
        ScrollView {
            MapView()
                .frame(height: Metrics.mapViewHeight)
            
            CircleImageView()
                .offset(y: Metrics.circleViewOffset)
                .padding(.bottom, Metrics.circleViewOffset)
            
            ExampleDetailsDescription()
                .padding()
            
            Spacer()
        }
        .navigationBarTitleDisplayMode(.inline)
        .ignoresSafeArea()
    }
}

// MARK: - Preview
struct ExampleDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ExampleDetailsView()
    }
}
