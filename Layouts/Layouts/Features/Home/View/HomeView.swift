//
//  ContentView.swift
//  Layouts
//
//  Created by Jefferson de Oliveira on 12/08/21.
//

import SwiftUI

struct HomeView: View {
    let data: HomeViewData
    
    private struct HomeDestinationView: View {
        let destination: HomeViewDestinationType

        @ViewBuilder var destinationView: some View {
            switch destination {
            case .circleImageView: CircleImageView()
            case .mapView: MapView()
            case .exampleDetails: ExampleDetailsView()
            }
        }
        
        var body: some View {
            destinationView
        }
    }
    
    var body: some View {
        NavigationView {
            List(data.rows) { row in
                NavigationLink(destination: HomeDestinationView(destination: row.destination)) {
                    HomeRowView(data: row)
                        .padding(5)
                }
            }
            .navigationBarTitle(Text(Strings.Home.navigationTitle))
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(data: .Mock.rows)
            .previewLayout(.sizeThatFits)
    }
}
