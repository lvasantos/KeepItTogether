//
//  Product.swift
//  CBL-SUI
//
//  Created by Luciana Adrião on 14/05/22.
//

import Foundation
import SwiftUI

struct SupermarketSection: Codable, Identifiable {
    var id = UUID()
    let title, foodDescription, type, image: String
    let spoileage: Int
    
        //Precisei colocar o enum, mas nao consigo entender pq funciona com ele e n funcionava antes.

        enum CodingKeys: String, CodingKey {
            case title
            case foodDescription = "description"
            case type
            case image
            case spoileage
        }
}

extension SupermarketSection {
    static let supermarketExample = SupermarketSection(id: UUID(), title: "Surf 'n Turf", foodDescription: "American breakfast", type: "Recipe", image: "BatiliskWing", spoileage: 3)
    
    static let supermarketExample2 = SupermarketSection(id: UUID(), title: "is Empty", foodDescription: "American breakfast", type: "Nothing really", image: "BatiliskWing", spoileage: 0)
}



struct FoodSection: Codable, Identifiable {
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

struct Card {
    let name: String
    let value: Int
    
    static let example = Card(name: "Card Test", value: 1)
}



//struct Recipes: Codable, Identifiable {
//    let id = UUID()
//    let name: String
//    let ingredient: [IngredientList]
//}
//
//struct IngredientList: Codable, Identifiable {
//    let id = UUID()
//    
//    
//}




//
//Recipe("campfire", {Ingredient("cutgrass", 3),Ingredient("log", 2)}, RECIPETABS.LIGHT, TECH.NONE, "campfire_placer")
//Recipe("firepit", {Ingredient("log", 2),Ingredient("rocks", 12)}, RECIPETABS.LIGHT, TECH.NONE, "firepit_placer")
//Recipe("lighter", {Ingredient("rope", 1), Ingredient("goldnugget", 1), Ingredient("petals", 3)}, RECIPETABS.LIGHT, TECH.NONE, nil, nil, nil, nil, "pyromaniac")
//Recipe("torch", {Ingredient("cutgrass", 2),Ingredient("twigs", 2)}, RECIPETABS.LIGHT, TECH.NONE)
//Recipe("coldfire", {Ingredient("cutgrass", 3), Ingredient("nitre", 2)}, RECIPETABS.LIGHT, TECH.SCIENCE_ONE, "coldfire_placer")
//Recipe("coldfirepit", {Ingredient("nitre", 2), Ingredient("cutstone", 4), Ingredient("transistor", 2)}, RECIPETABS.LIGHT, TECH.SCIENCE_TWO, "coldfirepit_placer")
