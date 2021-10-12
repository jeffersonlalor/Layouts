//
//  PlaceDetailsDescription.swift
//  Layouts
//
//  Created by Jefferson de Oliveira on 16/08/21.
//

import SwiftUI

struct ExampleDetailsDescriptionView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text(Strings.ExampleDetailsDescription.title)
                .font(.title)
            
            HStack {
                Text(Strings.ExampleDetailsDescription.subtitle)
                Spacer()
                Text(Strings.ExampleDetailsDescription.place)
            }
            .font(.subheadline)
            .foregroundColor(.gray)
            
            Divider()

            VStack(alignment: .leading) {
                Text(Strings.ExampleDetailsDescription.origin)
                    .font(.title2)
                    .padding(.bottom, 5)
                
                Text(Strings.ExampleDetailsDescription.description)
            }
        }
    }
}

struct ExampleDetailsDescription_Previews: PreviewProvider {
    static var previews: some View {
        ExampleDetailsDescriptionView()
            .previewLayout(.sizeThatFits)
    }
}
