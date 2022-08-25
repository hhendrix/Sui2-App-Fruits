//
//  FruitModel.swift
//  Sui2 App  Fruits
//
//  Created by Harry Lopez on 6/04/22.
//

import SwiftUI

// MARK: Fruit Data Model

struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headline : String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
    
}

