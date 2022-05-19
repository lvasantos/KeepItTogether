//
//  DetailView.swift
//  CBL-SUI
//
//  Created by Luciana Adrião on 19/05/22.
//

import SwiftUI

struct DetailView: View {
    
    let itemDetail:Item
    
    
    var body: some View {
        Group {
            VStack(alignment: .center){
                HStack(alignment: .center, spacing: UIScreen.main.bounds.width*0.1){
                    Image(itemDetail.image)
                        .resizable()
                        .scaledToFit()
                        .frame(
                            width: UIScreen.main.bounds.width*0.3,
                            height: UIScreen.main.bounds.height*0.2
                        )
                    Text(itemDetail.title)
                        .font(.largeTitle.leading(.loose))
                        .bold()
                        .scaledToFit()
                        .minimumScaleFactor(0.5)
                        .lineLimit(2)
                        .padding()
                }
                .frame(
                    maxWidth: UIScreen.main.bounds.width*0.9,
                    maxHeight: UIScreen.main.bounds.height*0.2,
                    alignment: .leading)
                
                
                Group{
                    Section(header: Text("Ingredients").font(.title).bold().padding(.bottom, 5)) {
                        VStack(alignment: .leading) {
                            ForEach(itemDetail.ingredients, id: \.self) { item in
                                Text(item)
                                    .font(.title3.leading(.loose))
                            }
                        }
                        
                        
                    }
                    
                    Section(header:Text("More info").font(.title2).bold().padding([.bottom,.top], 5)){
                        VStack(alignment: .leading) {
                            Group {
                                Text("\(itemDetail.itemDescription)")
                                    .italic()
                                if itemDetail.spoileage != 0 {
                                    Text("Spoileage time: \(itemDetail.spoileage) in game days")
                                }else {
                                    Text("Item does not spoil.")
                                }
                            }
                            .font(.title3.leading(.tight))
                            
                            
                            
                        }
                    }
            
                }
                .frame(maxWidth: UIScreen.main.bounds.width)
            }
        }
        .frame(maxHeight:.infinity ,alignment: .top)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(itemDetail: Item(title: "Guacamole", itemDescription: "Yum, Creamy !", image: "Guacamole", acquired: ["Craft"], ingredients: ["Cutgrass", "Twigs"], spoileage: 3))
    }
}
