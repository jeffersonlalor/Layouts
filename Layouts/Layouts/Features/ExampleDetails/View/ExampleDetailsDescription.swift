//
//  PlaceDetailsDescription.swift
//  Layouts
//
//  Created by Jefferson de Oliveira on 16/08/21.
//

import SwiftUI

struct ExampleDetailsDescription: View {
    // MARK: - View
    var body: some View {
        VStack(alignment: .leading) {
            Text("Sogeking")
                .font(.title)
            
            HStack {
                Text("Deus dos atiradores")
                Spacer()
                Text("Ilha dos atiradores")
            }
            .font(.subheadline)
            .foregroundColor(.gray)
            
            Divider()

            VStack(alignment: .leading) {
                Text("Origem")
                    .font(.title2)
                    .padding(.bottom, 5)
                Text("Usopp criou a imagem de Sogeking para poder continuar se aventurando com os Chapéu de Palha e resgatar Nico Robin. Durante a saga de Water Seven, Usopp teria travado uma luta contra Luffy, pois era contra a decisão de descartar Going Merry e troca-lo por outro navio, uma vez que era um presente de sua amiga Kaya, e substituir o navio seria como abandonar um companheiro. A luta resultou na vitória do Chapéu de Palha e na saída de Usopp da tripulação. \n\nAparentemente, depois do encontro dos Chapéu de Palha após dois anos, não há indícios que Sogeking poderia voltar, pois Usopp já se mostrou bastante corajoso e confiante, e não parece haver a necessidade de pedir auxílio ao seu Alter-ego.")
            }
        }
    }
}

// MARK: - Preview
struct ExampleDetailsDescription_Previews: PreviewProvider {
    static var previews: some View {
        ExampleDetailsDescription()
    }
}
