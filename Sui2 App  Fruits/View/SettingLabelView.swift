//
//  SettingLabelView.swift
//  Sui2 App  Fruits
//
//  Created by Harry Lopez on 6/04/22.
//

import SwiftUI

struct SettingLabelView: View {
    
    //MARK: PROPERTIES
    var labelText:String
    var labelImage: String
    
    //MARK: BODY
    var body: some View {
        HStack {
            Text(labelText.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }
    }
}

struct SettingLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingLabelView(labelText: "Fructus", labelImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
