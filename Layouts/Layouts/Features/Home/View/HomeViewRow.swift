//
//  HomeViewCell.swift
//  Layouts
//
//  Created by Jefferson de Oliveira on 12/08/21.
//

import SwiftUI

struct HomeViewRow: View {
    //MARK: - Attributs
    var viewEntity: HomeViewRowEntity
    
    // MARK: - View
    var body: some View {
        HStack(alignment: .center) {
            Text(viewEntity.title)
        }
    }
}

// MARK: - Preview
struct HomeViewRow_Previews: PreviewProvider {
    static var previews: some View {
        HomeViewRow(viewEntity: HomeViewRowEntity(destination: .circleImageView))
    }
}
