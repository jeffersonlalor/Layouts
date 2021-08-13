//
//  ViewEntity.swift
//  Layouts
//
//  Created by Jefferson de Oliveira on 12/08/21.
//

import SwiftUI

public struct HomeViewRowEntity: Identifiable {
    public let id: String = UUID().uuidString
    public let destination: HomeViewDestinationType
    public var title: String {
        get { destination.rawValue }
    }
}

public enum HomeViewDestinationType: String {
    case circleImageView = "CircleImageView"
}
