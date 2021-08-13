//
//  ContentView.swift
//  Layouts
//
//  Created by Jefferson de Oliveira on 12/08/21.
//

import SwiftUI

struct HomeView: View {
    var views = [HomeViewEntity]()
    
    var body: some View {
        NavigationView {
            List(views) { viewItem in
                HomeViewCell(viewEntity: viewItem)
                    .padding(5)
            }.navigationBarTitle(Text("SwiftUI"))
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(views: [
            HomeViewEntity(title: "Easy View 1"),
            HomeViewEntity(title: "Easy View 2")
        ])
    }
}
