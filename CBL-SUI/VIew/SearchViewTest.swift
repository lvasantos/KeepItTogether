//
//  SearchViewTest.swift
//  CBL-SUI
//
//  Created by Luciana Adrião on 16/05/22.
//

import SwiftUI

struct SearchViewTest: View {
    
    let dsDb = Bundle.main.decode([FoodSection].self, from: "foods.json")!
    
    @State var searchQuery = "axe"
    
    var body: some View {
        Text("aaa")
            .onAppear() {
                var filteredResult: [Item] = []
                
                for section in dsDb {
                    let filteredItemsForSection: [Item] = section.items.filter { element in
                        return element.title.lowercased().contains(searchQuery.lowercased())
                    }
                    filteredResult.append(contentsOf: filteredItemsForSection)
                }
                
                print(filteredResult)
            }
    }
}

struct SearchViewTest_Previews: PreviewProvider {
    static var previews: some View {
        SearchViewTest()
    }
}




