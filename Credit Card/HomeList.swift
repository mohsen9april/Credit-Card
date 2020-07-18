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
    
    let cursesData = [
        
        Course(title: "Build an app in SwiftUI",
               image: "Illustration1",
               color: Color("background3"),
               shadowColor: Color("background3")
        ),
        Course(title: "Design Course",
               image: "Illustration2",
               color: Color("background2"),
               shadowColor: Color("background2")
        ),
        Course(title: "Design Data",
               image: "Illustration3",
               color: Color("background4"),
               shadowColor: Color("background4")
        )
    ]
    
    var body: some View {

            NavigationView{
                VStack {
                    HStack {
                        VStack(alignment : .leading) {
                            Text("Courses")
                                .font(.largeTitle)
                                .fontWeight(.heavy)
                            Text("22 Courses")
                                .foregroundColor(.gray)
                        }
                        Spacer()
                    }.padding(.leading, 70)
                        .padding(.bottom, 40)
                            ScrollView(.horizontal, showsIndicators: false){
                                HStack(spacing : 30) {
                                    ForEach(cursesData , id: \.id) { item in
                                        NavigationLink(destination: ContentView()) {
                                            CourseView(
                                                title: item.title,
                                                image: item.image,color:
                                                item.color ,shadowColor:
                                                item.shadowColor
                                            )
                                        }
                                    }
                                }.padding(.leading, 40)
                                Spacer()
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
    
    var title : String = "Build an app with SwiftUI "
    var image : String = "Illustration1"
    var color = Color("background3")
    var shadowColor = Color("background3")
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .padding(30)
                .lineLimit(4)
                .padding(.trailing, 50)
            Spacer()
            Image(image)
                .resizable()
                .renderingMode(.original)
                .aspectRatio(contentMode: .fit)
                .frame(width: 246, height: 150)
                .padding(.bottom, 30)
        }
        .background(color)
        .cornerRadius(30)
        .frame(width: 246, height: 360)
        .shadow(color: shadowColor, radius: 10, x: 0, y: 10)
    }
}

struct Course : Identifiable {
    var id = UUID()
    var title : String
    var image : String
    var color : Color
    var shadowColor : Color
}
