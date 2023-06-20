//
//  SettingsView.swift
//  Fruitz
//
//  Created by Enzo on 2023-06-20.
//

import SwiftUI

struct SettingsView: View {
    //MARK: - Property
    // property to track if the settings scene is shown or not
    // Environement variables are from environment of device like (is user in dark or light mode...)
    // Here its used to dismiss the sheet view
    @Environment(\.dismiss) private var dismiss
    
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    @AppStorage("restarted") var restarted: Bool = false
        
    //MARK: - Body
    var body: some View {
        NavigationStack {
            ScrollView(.vertical, showsIndicators: false) {
                VStack{
                    //MARK: - SECTION 1
                    GroupBox {
                        Divider().padding(.vertical, 4)
                        HStack (alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, diatery fiber, vitamins, and much more.")
                        }
                    }label: {
                        SettingsLabelView(
                            labelText: "Fruitz",
                            labelImage: "info.circle")
                    }
                    //MARK: - SECTION 2
                    GroupBox {
                        Divider().padding(.vertical, 4)
                        Text("If you wish, you can restart the application to toggle the switch in this box. That way you it starts the onboarding process again and you will see the welcome screen again.")
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
                            .layoutPriority(1) // display all text and don't truncate it. Give it as much space as it needs
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $restarted) {
                            if restarted {
                                Text("Restarted".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(.green)
                            } else {
                                Text("Restart".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(.secondary)
                            }
                        }
                        .padding()
                        .background(
                            Color(UIColor.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                        ) // Adaptive background color
                        
                    } label: {
                        SettingsLabelView(labelText: "Customization", labelImage: "paintbrush")
                    }

                
                    //MARK: - SECTION 3
                    GroupBox {
                        SettingsRowView(name: "Developer", content: "Enzo Benoit-Jeannin")
                        SettingsRowView(name: "Designer", content: "Enzo Benoit-Jeannin")
                        SettingsRowView(name: "Compatibility", content: "IOS 16.0")
                        SettingsRowView(name: "Website", linkLabel: "Personal Website", linkDestination: "https://enzo2806.github.io")
                        SettingsRowView(name: "Github", linkLabel: "Personal Website", linkDestination: "https://github.com/Enzo2806")
                        SettingsRowView(name: "Version", content: "1.0")
                    } label: {
                        SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")
                    }
                    
                    
                } // VSTACK
                .navigationBarTitleDisplayMode(.inline)
                .toolbar{
                    ToolbarItem(placement: .principal) {
                        Text("Settings")
                            .font(.largeTitle.bold())
                            .accessibilityAddTraits(.isHeader)
                    }
                    ToolbarItem(placement: .destructiveAction) {
                        Button {
                            isOnboarding = restarted
                            dismiss()
                        } label: {
                            Image(systemName: "xmark")
                        }
                    }
                }
                .padding()
            } // Scroll View
        } // Nav View
    }
}

//MARK: - Preview
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
    }
}
