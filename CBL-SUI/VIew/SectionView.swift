//
//  DetailView.swift
//  CBL-SUI
//
//  Created by Luciana Adrião on 18/05/22.
//

import SwiftUI

struct SectionView: View {
    
    
    
    
    var itemPerSection:FoodSection
    
    var body: some View {
            VStack{
                List{
                    ForEach(itemPerSection.items) { itemView in
                        VStack{
                            NavigationLink(destination: DetailView(itemDetail: itemView)) {
                                HStack{
                                    Image(itemView.image)
                                    Text(itemView.title)
                                }
                            }
                            .navigationTitle(itemPerSection.type)
                        }
                    }
                }
                
            }
    }
}

struct SectionView_Previews: PreviewProvider {
    static var previews: some View {
        SectionView(itemPerSection: FoodSection(type: "survival", image: "Mandrake", items: [Item(title: "Egg", itemDescription: "Yummy", image: "Egg", acquired: ["No"], ingredients: ["Twigs"], spoileage: 0)]))
    }
}
