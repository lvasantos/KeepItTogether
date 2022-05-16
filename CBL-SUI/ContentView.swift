//
//  ContentView.swift
//  CBL-SUI
//
//  Created by Luciana Adrião on 14/05/22.
//

import SwiftUI

struct ContentView: View {
    @State private var showingPopover:Bool = false
    
    let menu = Bundle.main.decode([MenuSection].self, from: "menu.json")
    let food = Bundle.main.decode([FoodsSection].self, from: "foods.json")
    let supermarket = Bundle.main.decode([SupermarketSection].self, from: "supermarket.json")
    
    var body: some View {
        
//        ScrollView (.vertical){
//            ForEach(menu) { section in
//                Text(section.name)
//                Divider()
//
//                ScrollView (.horizontal){
//                    HStack {
//                        ForEach(section.items) { item in
//
//                            Text(item.name)
//                                .padding()
//                                .background(
//                                    RoundedRectangle(cornerRadius: 24, style: .continuous)
//                                        .stroke()
//
//                                )
//
//
//                        }
//                        .padding()
//                        .shadow(color: .gray, radius: 3, x: 2, y: 2)
//                        .font(.subheadline)
//                    }
//                }
//
//            }
//
//        }

        NavigationView{
            List{

                ForEach(supermarket){ itemSection in
                    NavigationLink(destination: LayoutViewTest(item: itemSection)) {
                        Text(itemSection.title)
                    }
                }

            }
            .navigationTitle("First View Screen")
            .listStyle(InsetGroupedListStyle())
            .navigationBarTitleDisplayMode(.large)
            
        }
                
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
