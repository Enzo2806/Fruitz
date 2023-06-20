//
//  StartButtonView.swift
//  Fruitz
//
//  Created by Enzo on 2023-06-20.
//

import SwiftUI

struct StartButtonView: View {
    //MARK: - PROPERTIES
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    
    //MARK: - BODY
    var body: some View {
        Button {
            isOnboarding = false
        } label: {
            HStack(spacing: 8) {
                Text("Start")
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical)
            .background(
                Capsule().strokeBorder(.white, lineWidth: 1.25)
            )
        } // BUTTON
        .accentColor(.white) // Color deosnt change from dark.light mode
        
        

    }
}

//MARK: - Preview
struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .previewLayout(.sizeThatFits)
    }
}
