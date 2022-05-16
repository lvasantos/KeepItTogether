//
//  ItemRow.swift
//  CBL-SUI
//
//  Created by Luciana Adrião on 14/05/22.
//

import SwiftUI

struct ItemRow: View {
    let item:MenuItem
    
    var body: some View {
        VStack{
            Text(item.name).padding()
                .background(
                    RoundedRectangle(cornerRadius: 24, style: .continuous)
                        .stroke()
                        .foregroundColor(.red)
                )
        }
    }
}

struct ItemRow_Previews: PreviewProvider {
    static var previews: some View {
        ItemRow(item: MenuItem.example)
    }
}
