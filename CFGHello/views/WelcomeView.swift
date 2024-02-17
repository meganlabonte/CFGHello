//
//  ContentView.swift
//  CFGHello
//
//  Created by Megan Labonte on 14/09/2023.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Image(systemName: "heart")
                    .imageScale(.large)
                    .foregroundColor(.purple)
                Spacer()
                Text("Draughts")
                    .font(.largeTitle)
            
              
                    NavigationLink(destination:  GamemodeView()){
                    HStack {
                    Image(systemName:"square.grid.3x3.square")
                        .imageScale(.large)
                        .foregroundColor(.purple)
                    Text("Play")
                        .padding()
                    }
                    
                }
                NavigationLink(destination: StatsView()){
                    HStack {
                        
                        Image(systemName:"square.grid.3x3.square")
                            .imageScale(.large)
                            .foregroundColor(.purple)
                        Text("Stats")
                            .padding()
                    
                }
                }
                Spacer()
                Text("CFG iOS App Dev MOOC")
                    .padding()
            }
            .padding()
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
