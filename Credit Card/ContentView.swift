//
//  ContentView.swift
//  Credit Card
//
//  Created by Mohsen Abdollahi on 7/17/20.
//  Copyright © 2020 Mohsen Abdollahi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
            
            VStack{
                Text("Card Back")
            }
            .frame(width: 300.0, height: 220.0)
            .background(Color.blue)
            .cornerRadius(10)
            .shadow(radius: 20)
            .offset(x: 0, y: -20.0)

            VStack{
                HStack{
                    VStack(alignment : .leading){
                        Text("UI Desing")
                            .font(.headline)
                            .fontWeight(.bold)
                            .foregroundColor(Color("accent"))
                            .padding(.top)
                        Text("Certificate").foregroundColor(.white)
                    }
                    Spacer()
                    Image("Logo")
                        .resizable()
                        .frame(width: 30.0, height: 30.0)
                }.padding(.horizontal)
                Spacer()
                Image("Background")
            }
            .frame(width: 340, height: 220)
            .background(Color.black)
            .cornerRadius(10)
            .shadow(radius: 20)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
