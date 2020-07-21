//
//  TabBar.swift
//  Credit Card
//
//  Created by Mohsen Abdollahi on 7/21/20.
//  Copyright © 2020 Mohsen Abdollahi. All rights reserved.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        
        TabView(){
            
            Home().tabItem{(
                VStack {
                    Image("IconHome")
                    Text("Home")
                }
                )}.tag(1)
            
            ContentView().tabItem{(
                VStack {
                    Image("IconCards")
                    Text("Certificate")
                }
                )}.tag(2)
            
            UpdateList().tabItem{(
                VStack {
                    Image("IconSettings")
                    Text("Updates")
                }
                )}.tag(3)
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
