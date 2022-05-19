//
//  ItemList.swift
//  CBL-SUI
//
//  Created by Luciana Adrião on 17/05/22.
//

import SwiftUI

struct ItemList: View {
    
    @State var searchQuery = ""
    
    let supermarket = Bundle.main.decode([SupermarketSection].self, from: "supermarket.json")!
    var filtered: [SupermarketSection] {
        return supermarket.filter { item in
            item.title.contains(searchQuery)
        }
    }
    
    
    var body: some View {
        NavigationView {
            VStack (alignment: .leading){
                Text(" ")
                    .searchable(text: $searchQuery)
                
                Text(" Recents")
                    .font(.title3)
                    .padding([.bottom, .top],30)
                List {
                    ForEach(searchQuery.isEmpty ? supermarket : filtered){ supermarket in
                        NavigationLink(destination: LayoutViewTest(item: supermarket)) {
                            HStack {
                                Image(supermarket.image)
                                    .resizable()
                                    .scaledToFit()
                                Text(supermarket.title)
                            }
                            .frame(width: UIScreen.main.bounds.width*0.95, height: UIScreen.main.bounds.height*0.05, alignment: .leading)
                        }
                        .padding(5)
                        .listRowBackground(Color.clear)
                    }
                } // Tirar background cinza da lista.
                .listStyle(.sidebar)

            }
        }
    }
}

struct ItemList_Previews: PreviewProvider {
    static var previews: some View {
        ItemList()
    }
}

