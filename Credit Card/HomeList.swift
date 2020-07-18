//
//  HomeList.swift
//  Credit Card
//
//  Created by Mohsen Abdollahi on 7/18/20.
//  Copyright © 2020 Mohsen Abdollahi. All rights reserved.
//

import Foundation
import SwiftUI


struct HomeList : View {
    var body: some View {
        
        ScrollView(.horizontal, showsIndicators: false){
            HStack {
                ForEach(0 ..< 3) { item in
                    CourseView()
                }
            }
        }
    }
}


struct HomeList_Previews : PreviewProvider {
    static var previews: some View {
        HomeList()
    }
}

struct CourseView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Build an app with SwiftUI ")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .padding(20)
                .lineLimit(4)
                .frame(width: 160)
            
            Spacer()
            
            Image("Illustration1")
        }
        .background(Color("background3"))
        .cornerRadius(30)
        .frame(width: 246, height: 360)
        .shadow(color: Color("background3"), radius: 10, x: 0, y: 10)
    }
}
