//
//  SettingsLabelView.swift
//  Fruitz
//
//  Created by Enzo on 2023-06-20.
//

import SwiftUI

struct SettingsLabelView: View {
    //MARK: - Properties
    var labelText: String
    var labelImage: String
    
    //MARK: - Body
    var body: some View {
        HStack {
            Text(labelText.uppercased())
                    .fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        } //HSTACK
    }
}

struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(labelText: "Fruitz", labelImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
