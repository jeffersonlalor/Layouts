//
//  MapView.swift
//  Layouts
//
//  Created by Jefferson de Oliveira on 14/08/21.
//

import SwiftUI
import MapKit

struct MapView: View {
    @State private var coordinateRegion = MKCoordinateRegion(center: .init(latitude: -3.115744,
                                                                           longitude: -59.977388),
                                                             span: .init(latitudeDelta: 0.014,
                                                                         longitudeDelta: 0.014))
    
    var body: some View {
        Map(coordinateRegion: $coordinateRegion)
            .navigationBarTitleDisplayMode(.inline)
            .ignoresSafeArea()
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
