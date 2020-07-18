//
//  Home.swift
//  Credit Card
//
//  Created by Mohsen Abdollahi on 7/18/20.
//  Copyright © 2020 Mohsen Abdollahi. All rights reserved.
//

import Foundation
import SwiftUI

struct Home : View {
    
    let menuData = [
    Menu(title: "My Acount", icon: "person.crop.circle"),
    Menu(title: "Billing", icon: "creditcard"),
    Menu(title: "Team", icon: "person.and.person"),
    Menu(title: "Sign out", icon: "arrow.uturn.down")
    ]

    var body: some View {
        
        VStack(alignment : .leading , spacing: 20) {
            
            ForEach(menuData , id:\.id) { item in
                
                MenuRow(image: item.icon , text: item.title )
            }
            

            Spacer()
        }
        .padding(.top, 20)
        .padding(30)
        .frame(minWidth: 0, maxWidth: .infinity)
        .background(Color.white)
        .cornerRadius(30)
        .shadow(radius: 20)
        .padding(.trailing, 60)
    }
}

struct Home_Previews : PreviewProvider {
    static var previews: some View {
        Home()
    }
}

struct MenuRow: View {
    
    var image = "creditcard"
    var text = "My Account"
    
    var body: some View {
        HStack {
            Image(systemName: image)
                .imageScale(.large)
                .foregroundColor(Color("icons"))
                .frame(width: 32, height: 32)
            Text(text)
                .font(.headline)
            Spacer()
        }
    }
}

struct Menu : Identifiable {
    var id = UUID()
    var title : String
    var icon : String
}