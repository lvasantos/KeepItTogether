//
//  Product.swift
//  CBL-SUI
//
//  Created by Luciana Adrião on 14/05/22.
//

import Foundation


struct MenuSection: Codable, Identifiable {
    let id: UUID
    let name: String
    let items: [MenuItem]
}

struct MenuItem: Codable, Equatable, Identifiable {
    let id: UUID
    let name: String
    let photoCredit: String
    let price: Int
    let restrictions: [String]
    let description: String
    
}
extension MenuItem {
    static let example = MenuItem(id: UUID(), name: "Devilled Eggs", photoCredit: "My suffering", price: 10, restrictions: ["G","V"], description: "Nice entree to serve when meeting with friends !")
}

struct SupermarketSection: Codable, Identifiable {
    var id = UUID()
    let title, foodDescription, type: String
    
        //Precisei colocar o enum, mas nao consigo entender pq funciona com ele e n funcionava antes.

        enum CodingKeys: String, CodingKey {
            case title
            case foodDescription = "description"
            case type
        }
}

extension SupermarketSection {
    static let supermarketExample = SupermarketSection(id: UUID(), title: "Eggs and bacon", foodDescription: "American breakfast", type: "NOT vegan")
}

struct FoodsSection: Codable, Identifiable {
    let id, title, description, category: String
    let brand, expDate, mfdDate, size: String
    let price: Double
    let stock: String
    
}
