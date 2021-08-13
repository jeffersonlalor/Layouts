//
//  HomeViewCell.swift
//  Layouts
//
//  Created by Jefferson de Oliveira on 12/08/21.
//

import SwiftUI

struct HomeViewCell: View {
    var body: some View {
        HStack(alignment: .center) {
            Image(systemName: "photo")
            VStack(alignment: .leading) {
                Text("Name View")
                Text("Name Subview Title")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
        }
    }
}

struct HomeViewCell_Previews: PreviewProvider {
    static var previews: some View {
        HomeViewCell()
    }
}
