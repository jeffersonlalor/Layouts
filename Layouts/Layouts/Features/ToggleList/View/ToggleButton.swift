//
//  AddView.swift
//  Layouts
//
//  Created by Jefferson Lalor on 28/10/21.
//

import SwiftUI

struct ToggleButton: View {
    @Binding var isStateTrue: Bool
    
    public init(isStateTrue: Binding<Bool>) {
        self._isStateTrue = isStateTrue
    }
    
    var body: some View {
        Button(Strings.Toggle.toggle) {
            isStateTrue.toggle()
        }
    }
}

struct ToggleButton_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ToggleButton(
                isStateTrue: .constant(true)
            )
        }
        .previewLayout(.sizeThatFits)
    }
}
