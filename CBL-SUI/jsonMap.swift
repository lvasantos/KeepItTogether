//
//  Product.swift
//  CBL-SUI
//
//  Created by Luciana Adrião on 14/05/22.
//

import Foundation
import SwiftUI

struct itemSection: Codable, Identifiable {
    let id = UUID()
    let type: String
    let image: String
    let items:  [Item]
}

struct Item: Codable, Identifiable {
    let id = UUID()
    let title, itemDescription, image: String
    let acquired, ingredients: [String]
    let spoileage: Int
    
    enum CodingKeys: String, CodingKey {
        case id
        case title
        case itemDescription = "description"
        case image, acquired, ingredients, spoileage
    }
    
}
