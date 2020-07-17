//
//  ContentView.swift
//  Credit Card
//
//  Created by Mohsen Abdollahi on 7/17/20.
//  Copyright © 2020 Mohsen Abdollahi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var show : Bool = false
    
    var body: some View {
        
        ZStack {
            
            TitleView()
                .blur(radius: show ? 20 : 0)
                .animation(.default)
            
            CardButtomView()
                .blur(radius: show ? 20 : 0)
                .animation(.default)
            
            CardView()
                .background(show ? Color.red : Color("background9"))
                .cornerRadius(10)
                .shadow(radius: 20)
                .offset(x: 0, y: show ? -380 :  -40.0)
                .scaleEffect(0.85)
                .rotationEffect(Angle(degrees: show ? 15 : 0))
//                .rotation3DEffect(Angle(degrees: show ? 50 : 0), axis: (x: 10 , y: 10, z: 10))
                .blendMode(.hardLight)
                .animation(Animation.easeInOut(duration: 1.2))
            
            CardView()
                .background(show ? Color.red : Color("background8"))
                .cornerRadius(10)
                .shadow(radius: 20)
                .offset(x: 0, y: show ? -200 :  -20.0)
                .scaleEffect(0.90)
                .rotationEffect(Angle(degrees: show ? 10 : 0))
//                .rotation3DEffect(Angle(degrees: show ? 40 : 0 ), axis: (x: 10 , y: 10, z: 10))
                .blendMode(.hardLight)
                .animation(Animation.easeInOut(duration: 1.2))
            
            CertificateView()
                .scaleEffect(0.95)
                .rotationEffect(Angle(degrees: show ? 5 : 0))
                .rotation3DEffect(Angle(degrees: show ? 30 : 0 ), axis: (x: 10 , y: 10, z: 10))
                .animation(Animation.easeInOut(duration: 1))
                .onTapGesture {
                    self.show.toggle()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CardView: View {
    var body: some View {
        VStack{
            Text("Card Back")
        }
        .frame(width: 340.0, height: 220.0)
    }
}

struct CertificateView: View {
    var body: some View {
        VStack{
            HStack{
                VStack(alignment : .leading){
                    Text("UI Desing")
                        .font(.headline)
                        .fontWeight(.bold)
                        .foregroundColor(Color("accent"))
                        .padding(.top)
                    Text("Certificate").foregroundColor(.white).padding(.top)
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

struct CardButtomView: View {
    var body: some View {
        VStack(spacing : 20){
            
            Rectangle().frame(width: 60, height: 6).cornerRadius(3.0)
                .opacity(0.2)
            
            Text("This is Certificate is proof that Me has achievd the UI Design with approval from a Desing+Code instructor. ").lineLimit(10)
            Spacer()
        }.frame(minWidth: 0 , maxWidth: .infinity)
            .padding()
            .padding(.horizontal)
            .background(Color.white)
            .cornerRadius(30)
            .shadow(radius: 20)
            .offset(y: 600)
    }
}

struct TitleView: View {
    var body: some View {
        VStack{
            HStack {
                Text("Certificates")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                Spacer()
            }
            Image("Illustration5")
            Spacer()
        }.padding()
    }
}
