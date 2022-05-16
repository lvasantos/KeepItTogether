//
//  LayoutViewTest.swift
//  CBL-SUI
//
//  Created by Luciana Adrião on 15/05/22.
//

import SwiftUI

struct LayoutViewTest: View {
    
    @State private var showingPopover:Bool = false
    
    let gradient = LinearGradient(colors: [.red,.purple,.blue], startPoint: .topLeading, endPoint: .bottomTrailing)
    
    let item:SupermarketSection
    
    let food = Bundle.main.decode([FoodsSection].self, from: "foods.json")
    
    var body: some View {
        VStack (alignment: .leading){
            HStack (alignment: .center){
                Circle()
                    .fill(gradient)
                    .shadow(color: .gray, radius: 5, x: 3, y: 1)
                    .frame(maxWidth: 100, maxHeight: 100, alignment: .center)
                    .padding(10)

                Spacer()
                VStack(alignment: .leading){
                    Text(item.title)
                        .font(.title3)
                        .bold()
                    Text(item.type)
                }
                .padding()
                Spacer()
            }
            
            Divider()
            
            Text(item.foodDescription)
                .frame(minWidth:0, maxWidth: .infinity)
                .padding()
                .overlay(RoundedRectangle(cornerRadius: 25, style: .continuous)
                    .stroke(Color.purple, lineWidth: 2))
    

            Spacer()
            
                
        }
    }
}

struct LayoutViewTest_Previews: PreviewProvider {
    static var previews: some View {
        LayoutViewTest(item: SupermarketSection.supermarketExample)
    }
}
