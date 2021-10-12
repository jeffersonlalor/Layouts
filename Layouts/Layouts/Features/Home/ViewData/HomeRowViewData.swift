//
//  HomeRowViewData.swift
//  Layouts
//
//  Created by Jefferson Lalor on 12/10/21.
//

import Foundation

enum HomeViewDestinationType: String {
    case circleImageView = "CircleImageView"
    case mapView = "MapView"
    case exampleDetails = "CircleImageView + MapView"
}

public struct HomeRowViewData: Identifiable {
    public let id = UUID()
    let destination: HomeViewDestinationType
    var title: String {
        destination.rawValue
    }
}
