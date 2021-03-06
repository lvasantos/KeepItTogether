//
//  ContentView.swift
//  CBL-SUI
//
//  Created by Luciana Adrião on 14/05/22.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        ZStack {
            Text("")
            TabView{
            ItemRow()
                .tabItem {
                    Label("Type", systemImage: "square.grid.2x2")
                }
            SearchViewTest()
                .tabItem {
                    Label("Search", systemImage: "magnifyingglass")
                        .foregroundColor(.white)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.light)
        ContentView()
            .preferredColorScheme(.dark)
    }
}
