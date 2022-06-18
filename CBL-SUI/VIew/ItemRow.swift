//
//  ItemRow.swift
//  CBL-SUI
//
//  Created by Luciana Adrião on 14/05/22.
//

import SwiftUI

struct ItemRow: View {
    
    @State var searchItem = ""
    let columnCount:Int = 2
    let gridSpacing:CGFloat = 5.0
    let sup = Bundle.main.decode([itemSection].self, from: "foods.json")
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical) {
                LazyVGrid(
                    columns: Array(repeating: GridItem(.flexible(), spacing: gridSpacing), count: columnCount),spacing: gridSpacing
                ){
                    ForEach(sup!) { itemSection in
                        NavigationLink(destination: SectionView(itemPerSection: itemSection)){
                            ZStack {
                                RoundedRectangle(cornerRadius: 24)
                                    .foregroundColor(.secondary)
                                    .frame(
                                        maxWidth: UIScreen.main.bounds.width*0.5,
                                        maxHeight:UIScreen.main.bounds.height*0.3)
                                
                                VStack{
                                    Image(itemSection.image).resizable().scaledToFit().frame(
                                            maxWidth: UIScreen.main.bounds.width*0.3,
                                            maxHeight:UIScreen.main.bounds.height*0.3)
                                    Text(itemSection.type).foregroundColor(.primary).font(.subheadline).bold()
                                }
                            }
                        }
                    }
                }
            }
        }
        .ignoresSafeArea()
    }
}

struct ItemRow_Previews: PreviewProvider {
    static var previews: some View {
        ItemRow()
            .preferredColorScheme(.light)
        ItemRow()
            .preferredColorScheme(.dark)
    }
}
