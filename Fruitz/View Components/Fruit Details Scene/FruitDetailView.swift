//
//  FruitDetailView.swift
//  Fruitz
//
//  Created by Enzo on 2023-06-20.
//

import SwiftUI

struct FruitDetailView: View {
    //MARK: - Property
    var fruit: Fruit
    
    //MARK: - Body
    var body: some View {
        NavigationStack {
            ScrollView(.vertical, showsIndicators: true) {
                VStack(alignment: .center, spacing: 20) {
                    
                    //MARK: - HEADER
                    FruitHeaderView(fruit: fruit)
                    
                    //MARK: - INFORMATION
                    
                    VStack(alignment: .leading, spacing: 20) {
                        // Title
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        // Headline
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        // Nutrients
                        FruitNutrientsView(fruit: fruit)
                        
                        // Subheadline
                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        // Description
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        
                        // Link
                        SourceLinkView()
                            .padding(.top, 10)
                            .padding(.bottom, 40)
                        
                    }//VSTACK
                    .padding(.horizontal, 20)
                    // Makes difference on iPad Screens
                    .frame(maxWidth: 640, alignment: .center)
                }// VSTACK
                //.toolbar(Visibility.hidden)
            }// SCROLLVIEW
            .edgesIgnoringSafeArea(.top)
        }// NAV View
    }
}

//MARK: - Preview
struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitsData[0])
            .previewLayout(.sizeThatFits)
    }
}
