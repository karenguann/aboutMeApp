//
//  ContentView.swift
//  aboutMeApp
//
//  Created by Karen Guan on 2023-07-13.
//

import SwiftUI

struct ContentView: View {
    
    @State private var fact = ""
    
    var body: some View {
        ZStack {
            Color(.systemGray)
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                Text("Hi, I'm Karen :)")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                Image("me")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(/*@START_MENU_TOKEN@*/5.0/*@END_MENU_TOKEN@*/)
                Button("Click to learn a fun fact about me!") {
                    fact = "My fingers are double-jointed!"
                }
                .font(.title3)
                .buttonStyle(.borderedProminent)
                .tint(Color(red: 0.52, green: 0.44, blue: 0.8, opacity: 1.0))
                Text(fact)
                    .font(.title3)
                    .foregroundColor(Color.white)
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
