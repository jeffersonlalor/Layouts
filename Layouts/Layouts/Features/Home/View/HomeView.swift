//
//  ContentView.swift
//  Layouts
//
//  Created by Jefferson de Oliveira on 12/08/21.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        List(0 ..< 5) { _ in
            HomeViewCell()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
