//
//  SearchViewTest.swift
//  CBL-SUI
//
//  Created by Luciana Adrião on 16/05/22.
//

import SwiftUI

struct SearchViewTest: View {
    
    let dsDb: [FoodSection] = Bundle.main.decode([FoodSection].self, from: "foods.json")!
    
    @State var searchQuery = ""
    var filteredResult: [Item] {
        if searchQuery.isEmpty {
            var foodCatcher: [Item] = []
            for object in dsDb {
                for item in object.items {
                    foodCatcher.append(item)
                }
            }
            return foodCatcher
        } else {
            var foodCatcher: [Item] = []
            for object in dsDb {
                for item in object.items {
                    foodCatcher.append(item)
                }
            }
            return foodCatcher.filter { $0.title.lowercased().contains(searchQuery.lowercased())}
        }
    }

    var body: some View {
        NavigationView {
            List(filteredResult) { result in
                NavigationLink(destination: DetailView(itemDetail: result)) {
                    HStack (alignment: .center, spacing: 50) {
                        Image(result.image)
                            .resizable()
                            .scaledToFit()
                            .frame(
                                width: UIScreen.main.bounds.width*0.3)
                        
                        Text(result.title)
                            .font(.title)
                            .minimumScaleFactor(0.5)
                            .lineLimit(2)
                        
                            
                    }
                    .frame(
                        maxHeight: UIScreen.main.bounds.height*0.1)
                }
                
                }
            }
        .searchable(text: $searchQuery, placement: .navigationBarDrawer(displayMode: .always))
        }
}

struct SearchViewTest_Previews: PreviewProvider {
    static var previews: some View {
        SearchViewTest()
    }
}




