//
//  ItemRow.swift
//  CBL-SUI
//
//  Created by Luciana Adrião on 14/05/22.
//

import SwiftUI

struct ItemRow: View {
    @State var searchItem = ""
    
    let sup = Bundle.main.decode([FoodSection].self, from: "foods.json")
    var body: some View {        
        NavigationView {
            ZStack {
                
                Color.clear.edgesIgnoringSafeArea(.all)
                ScrollView (.horizontal) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 24)
                            .foregroundColor(.gray).opacity(0.5)
                        
                        HStack{
                            ForEach(sup!) {
                                itemSection in
                                NavigationLink(destination: SectionView(itemPerSection: itemSection)) {
                                    
                                    VStack{
                                        Image(itemSection.image)
                                            .resizable()
                                            .padding(4)
                                            .scaledToFit()
                                        Text(itemSection.type)
                                            .font(.headline)
                                            .foregroundColor(.white)
                                    }
                                }
                            }.navigationBarHidden(false)
                        }
                    }
                    .fixedSize()
                    Spacer()
                }
            }
        }
    }
}


struct ItemRow_Previews: PreviewProvider {
    static var previews: some View {
        ItemRow()
    }
}
