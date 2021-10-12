//
//  HomeViewCell.swift
//  Layouts
//
//  Created by Jefferson de Oliveira on 12/08/21.
//

import SwiftUI

struct HomeRowView: View {
    let data: HomeRowViewData
    
    var body: some View {
        HStack(alignment: .center) {
            Text(data.title)
        }
    }
}

struct HomeViewRow_Previews: PreviewProvider {
    static var previews: some View {
        HomeRowView(data: .Mock.mapView)
            .previewLayout(.sizeThatFits)
    }
}
