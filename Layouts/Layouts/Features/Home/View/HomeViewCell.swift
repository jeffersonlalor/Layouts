//
//  HomeViewCell.swift
//  Layouts
//
//  Created by Jefferson de Oliveira on 12/08/21.
//

import SwiftUI

struct HomeViewCell: View {
    var viewEntity: HomeViewEntity
    
    var body: some View {
        HStack(alignment: .center) {
            Text(viewEntity.title)
        }
    }
}

struct HomeViewCell_Previews: PreviewProvider {
    static var previews: some View {
        HomeViewCell(viewEntity: HomeViewEntity(title: "Easy View"))
    }
}
