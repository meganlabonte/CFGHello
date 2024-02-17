//
//  GamemodeView.swift
//  CFGHello
//
//  Created by Megan Labonte on 16/09/2023.
//

import SwiftUI

struct GamemodeView: View {
    var body: some View {
        VStack {
            Text("Game Mode")
            HStack{
            HStack {
                Image(systemName:"square.grid.3x3.square")
                    .imageScale(.large)
                    .foregroundColor(.purple)
                Text("Play")
                    .padding()
            }
                HStack {
                    
                    Image(systemName:"timer")
                        .imageScale(.large)
                        .foregroundColor(.purple)
                    Text("Timer")
                        .padding()
                }
            }
            
        }
        .padding()
    }
    
}

struct GamemodeView_Previews: PreviewProvider {
    static var previews: some View {
        GamemodeView()
    }
}
