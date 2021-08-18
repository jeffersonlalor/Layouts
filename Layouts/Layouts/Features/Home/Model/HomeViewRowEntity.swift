//
//  ViewEntity.swift
//  Layouts
//
//  Created by Jefferson de Oliveira on 12/08/21.
//

import SwiftUI

public struct HomeViewRowEntity: Identifiable {
    public let id = UUID()
    public let destination: HomeViewDestinationType
    public var title: String {
        destination.rawValue
    }
}

public enum HomeViewDestinationType: String {
    case circleImageView = "CircleImageView"
    case mapView = "MapView"
    case exampleDetails = "CircleImageView + MapView"
}
