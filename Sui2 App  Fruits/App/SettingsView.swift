//
//  SettingsView.swift
//  Sui2 App  Fruits
//
//  Created by Harry Lopez on 6/04/22.
//

import SwiftUI

struct SettingsView: View {
    // MARK: PROPERTIES
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    // MARK: BODY
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false){
                VStack(spacing:20) {
                    // MARK: SECTION 1
                    
                    GroupBox(
                        label:SettingLabelView(labelText: "Fructus", labelImage: "info.circle"))
                    {
                        Divider().padding(.vertical, 4)
                        HStack(alignment:.center, spacing:10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width:80, height: 80)
                                .cornerRadius(9)
                            Text("Most fruits are naturally low infat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
                                .font(.footnote)
                        }
                    }
                    
                    // MARK: SECTION 2
                    GroupBox(label: SettingLabelView(labelText: "Customization", labelImage: "paintbrush")){
                        Divider().padding(.vertical, 4)
                        Text("if you wish, you can restart the application by toggle the switch in this box. That way it starts the onboarding process and you will see the welcome screen again.")
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        
                        Toggle(isOn: $isOnboarding){
                            if isOnboarding {
                            Text("Restarted".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(.green)
                            }else{
                                Text("Restart".uppercased())
                                        .fontWeight(.bold)
                                        .foregroundColor(.secondary)
                            }
                        }
                        .padding()
                        .background(
                            Color(UIColor.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                        )
                        
                    }
                    // MARK: SECTION 3
                    
                    GroupBox( label:SettingLabelView(labelText: "Application", labelImage: "apps.iphone")
                    ){
                        
                        SettingRowView(name: "Developer", content: "Harry Lopez")
                        SettingRowView(name: "Designer", content: "Harry Lopez")
                        SettingRowView(name: "Compatibility", content: "ios 15")
                        
                        SettingRowView(name: "Website", linkLabel: "SwiftUI masterclass", linkDestination: "swiftuimastercalss.com")
                        SettingRowView(name: "Twitter", linkLabel: "@harrylopez", linkDestination: "twitter.com/robertpetras")
                        SettingRowView(name: "SWIFTUI", content: "2.0")
                        SettingRowView(name: "Version", content: "1.0.3")
                    }
                    
                }// : VSTACK
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(trailing: Button(action:{
                    presentationMode.wrappedValue.dismiss()
                }){
                    Image(systemName: "xmark")
                })
                .padding()
            }// : SCROLL
            
        }// : NAVIGATION
        
        
    }
}
// MARK: PREVIEW
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
    }
}
