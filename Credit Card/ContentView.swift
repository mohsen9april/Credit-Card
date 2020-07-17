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
        
        VStack{
            VStack{
                Text("UI Desing")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color("accent"))
                    .padding(.top)
                Text("Certificate").foregroundColor(.white)
                Image("Background")
            }
            .background(Color.black)
            .cornerRadius(10)
        }
        

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
