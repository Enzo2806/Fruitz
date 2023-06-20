//
//  ContentView.swift
//  Fruitz
//
//  Created by Enzo on 2023-06-20.
//

import SwiftUI

struct FruitListView: View {
    //MARK: - Properties
    var fruits: [Fruit] = fruitsData
    
    @State private var isShowingSettings: Bool = false
    
    //MARK: - Body
    var body: some View {
        NavigationStack {
            List{
                // Shuffle list as extra feature
                ForEach(fruits.shuffled()) { fruit in
                    
                    //Create navigationLink
                    NavigationLink(destination: FruitDetailView(fruit: fruit)) {
                        FruitRowView(fruit: fruit)
                            .padding(.vertical, 4)
                    }
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("Fruitz")
                        .font(.largeTitle.bold())
                        .accessibilityAddTraits(.isHeader)
                }
                ToolbarItem(placement: .navigationBarTrailing){
                    Button {
                        isShowingSettings = true
                    } label: {
                        Image(systemName: "slider.horizontal.3")
                    }// Button
                    .sheet(isPresented: $isShowingSettings) {
                        SettingsView()
                    }
                }
            }
        }// NAVIGATION
    }
}

//MARK: - Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        FruitListView()
    }
}
