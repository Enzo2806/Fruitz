//
//  FruitNutrientsView.swift
//  Fruitz
//
//  Created by Enzo on 2023-06-20.
//

import SwiftUI

struct FruitNutrientsView: View {
    //MARK: - Property
    var fruit: Fruit
    let nutrients: [String] = ["Energy", "Sugar", "Fat", "Protein", "Vitamins", "Minerals"]
    
    //MARK: - Body
    var body: some View {
        GroupBox() {
            DisclosureGroup("Nutrional Value per 100g") {
                // ForEach works only for identifiable objects
                // If not, use the id: \.self and it'll work
                ForEach(0...nutrients.count-1, id: \.self) { item in
                    Divider()
                        .padding(.vertical, 2) // adds divider with padding between each item
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        }.foregroundColor(fruit.gradientColors[1])
                            .font(.system(.body).bold())
                        
                        Spacer(minLength: 25) // make sure nutrients titles and values are not close to eahc other
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing) // stick right
                    }
                        
                }
            }
        } // BOX
    }
}

//MARK: - Preview
struct FruitNutrientsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutrientsView(fruit: fruitsData[0])
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 480))
            .padding()
    }
}
