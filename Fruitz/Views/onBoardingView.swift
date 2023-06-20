//
//  onBoardingView.swift
//  Fruitz
//
//  Created by Enzo on 2023-06-20.
//

import SwiftUI

struct onBoardingView: View {
    //MARK: - Properties
    var fruits: [Fruit] = fruitsData
    
    //MARK: - Body
    var body: some View {
        TabView {
            ForEach(fruits[0...fruits.count-1]) { fruit in
                FruitCardView(fruit: fruit)
            }
        } // TAB
        .tabViewStyle(PageTabViewStyle())
    }
}

//MARK: - Preview
struct onBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        onBoardingView()
    }
}
