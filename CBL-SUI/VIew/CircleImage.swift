//
//  CircleImage.swift
//  CBL-SUI
//
//  Created by Luciana Adrião on 17/05/22.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    
    var body: some View {
        image
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("BatiliskWing"))
    }
}
