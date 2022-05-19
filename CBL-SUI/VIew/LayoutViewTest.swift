//
//  LayoutViewTest.swift
//  CBL-SUI
//
//  Created by Luciana Adrião on 15/05/22.
//

import SwiftUI

struct LayoutViewTest: View {
    
    @State private var showingPopover:Bool = false
    let item:SupermarketSection
    
    var body: some View {
        VStack (alignment: .center){
            HStack (alignment: .center){
                
                CircleImage(image: Image(item.image))
                    .frame(minWidth:UIScreen.main.bounds.width*0.3)
                VStack(alignment: .leading){
                    Text(item.title)
                        .font(.title)
                        .bold()
                }
                .padding()
                Spacer()
            }
            
            Text("Ingredients")
                .font(.title3)
                .bold()
            
            Group {
                HStack {
                    Image(systemName: "star")
                        .scaledToFit()
                    Text("Hello World !")
                }
                HStack {
                    Image(systemName: "star.fill")
                        .scaledToFit()
                    Text("Hello World !")
                }
                
            }
            .font(.title3)
            
            
            
            Text(item.foodDescription)
                .bold()
                .padding(.top)
                .font(.title3)
            
            Group {
                Text("Hello World !")
                Text("Hello World !")
                Text("Hello World !")
            }
            
            
            Text("\n\(item.spoileage) Days to spoil")
                .font(.subheadline)
            
            Spacer()
        }
        
    }
}

struct LayoutViewTest_Previews: PreviewProvider {
    static var previews: some View {
        LayoutViewTest(item: SupermarketSection.supermarketExample)
    }
}
