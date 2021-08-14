//
//  ContentView.swift
//  Layouts
//
//  Created by Jefferson de Oliveira on 12/08/21.
//

import SwiftUI

// MARK: - Constants
public let homeViewRows = [
    HomeViewRowEntity(destination: .circleImageView),
    HomeViewRowEntity(destination: .mapView),
]

struct HomeView: View {
    //MARK: - Attributs
    var rows = [HomeViewRowEntity]()
    
    // MARK: - View
    var body: some View {
        NavigationView {
            List(rows) { row in
                NavigationLink(destination: getDestinationWith(row.destination)) {
                    HomeViewRow(viewEntity: row)
                        .padding(5)
                }
            }
            .navigationBarTitle(Text("SwiftUI"))
        }
    }
    
    // MARK: - Private methods
    private func getDestinationWith(_ rowType: HomeViewDestinationType) -> some View {
        switch rowType {
        case .circleImageView:
            return CircleImageView().anyView()
        case .mapView:
            return MapView().anyView()
        }
    }
}

// MARK: - Preview
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(rows: homeViewRows)
    }
}
