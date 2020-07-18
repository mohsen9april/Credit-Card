//
//  UpdateDetail.swift
//  Credit Card
//
//  Created by Mohsen Abdollahi on 7/19/20.
//  Copyright © 2020 Mohsen Abdollahi. All rights reserved.
//

import SwiftUI

struct UpdateDetail: View {
    
    var title : String = "SwiftUI"
    var text : String = "Loding..."
    var image : String = "Illustration1"
    
    
    var body: some View {
        VStack(spacing : 20){
            Text(title)
                .font(.largeTitle)
                .fontWeight(.heavy)
            
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height : 200)

            Text(text)
                .lineLimit(nil)
                .frame(minWidth : 0, maxWidth: .infinity, alignment: .leading)
            
            Spacer()
        }.padding(30)
    }
}

struct UpdateDetail_Previews: PreviewProvider {
    static var previews: some View {
        UpdateDetail()
    }
}
