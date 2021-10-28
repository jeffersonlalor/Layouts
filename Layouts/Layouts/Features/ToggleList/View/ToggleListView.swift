//
//  ToggleListView.swift
//  Layouts
//
//  Created by Jefferson Lalor on 28/10/21.
//

import SwiftUI

struct ToggleListView: View {
    @ObservedObject var data: ToggleListViewData
    
    public init(data: ToggleListViewData = .init()) {
        self.data = data
    }
    
    var body: some View {
        VStack(spacing: .zero) {
            ForEach(data.rows.indices, id: \.self) { index in
                ToggleRowView(
                    isStateTrueBinding: $data.rows[index]
                )
            }
            
            Spacer()
        }
    }
}

struct ToggleListView_Previews: PreviewProvider {
    static var previews: some View {
        ToggleListView()
    }
}
