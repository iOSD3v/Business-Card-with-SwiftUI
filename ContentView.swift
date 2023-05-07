//
//  ContentView.swift
//  BusinessCard


import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color(red: 0.45, green: 0.75, blue: 0.76).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Image("fahimeh")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            
                    .frame(width: 200.0, height: 200.0)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(Circle().stroke(.white, lineWidth: 6))
                Text("Fahime Nikkhah")
                    .bold()
                    .padding()
                    .font(Font.custom("Rancho-Regular", size: 40))
                .foregroundColor(.white)
                
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 21))
                Divider()
                
                InfoView(text: "+98 914 421 66 26", icon: "phone.fill")
                InfoView(text: "nikkhah.fahimeh@gmail.com", icon: "envelope.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct InfoView: View {
    
    let text: String
    let icon: String
    var body: some View {
        RoundedRectangle(cornerRadius: 28).frame(height: 50)
            .foregroundColor(.white)
            .padding()
            .overlay(HStack {
                Image(systemName: icon)
                Text(text)
                
            })
    }
}

