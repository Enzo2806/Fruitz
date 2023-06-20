//
//  SettingsRowView.swift
//  Fruitz
//
//  Created by Enzo on 2023-06-20.
//

import SwiftUI

struct SettingsRowView: View {
    
    //MARK: - Porperty
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    //MARK: - Body
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            HStack {
                Text(name)
                    .foregroundColor(.gray)
                Spacer()
                if let content = content {
                    Text(content)
                }else if let link = linkLabel, let dest = linkDestination{
                    Link(link, destination: URL(string: "\(dest)")!)
                    Image(systemName: "arrow.up.right.square")
                        .foregroundColor(.pink)
                }else{
                    EmptyView()
                }
            }
        }
    }
}

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
            SettingsRowView(name: "Website", linkLabel: "Personal Website", linkDestination: "https://enzo2806.github.io")
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
    }
}
