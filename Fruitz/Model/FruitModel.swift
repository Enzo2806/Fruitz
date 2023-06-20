//
//  FruitModel.swift
//  Fruitz
//
//  Created by Enzo on 2023-06-20.
//

import Foundation
import SwiftUI

//MARK: - Fruit data model
struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}
