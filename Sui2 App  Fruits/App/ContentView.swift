//
//  ContentView.swift
//  Sui2 App  Fruits
//
//  Created by Harry Lopez on 6/04/22.
//

import SwiftUI

struct ContentView: View {
    //MARK: - PROPERTIES
    
    @State private var isShowingSettings: Bool = false
    
    var fruits: [Fruit] = fruitsData
    
    //MARK: - BODY
    var body: some View {
        
        NavigationView {
            List{
                ForEach(fruits.shuffled()){ item in
                    NavigationLink(destination: FruitDeatilView(fruit: item)){
                        FruitRowView(fruit: item)
                            .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(trailing:
                                    Button(action:{
                isShowingSettings = true
            })
                                {
                Image(systemName: "slider.horizontal.3")
            }//: BUTTON
                .sheet(isPresented: $isShowingSettings){
                    SettingsView()
                }
            )
        }//: NAVIGATION
        .navigationViewStyle(StackNavigationViewStyle())
        
        
        
    }
}
//MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portrait)
    }
}
