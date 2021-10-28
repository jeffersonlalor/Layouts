//
//  ContentView.swift
//  Layouts
//
//  Created by Jefferson Lalor on 28/10/21.
//

import SwiftUI

struct ToggleRowView: View {
    @Binding var isStateTrueBinding: Bool
    
    public init(
        isStateTrueBinding: Binding<Bool> = .constant(false)
    ) {
        self._isStateTrueBinding = isStateTrueBinding
    }

    var body: some View {
        HStack {
            Text(Strings.Toggle.state + ": " + isStateTrueBinding.description)
            
            Spacer()
            
            ToggleButton(
                isStateTrue: $isStateTrueBinding
            )
        }
        .padding()
    }
}

struct ToggleRowView_Previews: PreviewProvider {
    static var previews: some View {
        ToggleRowView()
    }
}
