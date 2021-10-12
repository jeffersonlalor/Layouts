//
//  HomeViewData.swift
//  Layouts
//
//  Created by Jefferson Lalor on 12/10/21.
//

import Foundation

struct HomeViewData {
    var rows: [HomeRowViewData] {
        [
            HomeRowViewData(destination: .circleImageView),
            HomeRowViewData(destination: .mapView),
            HomeRowViewData(destination: .exampleDetails)
        ]
    }
}
