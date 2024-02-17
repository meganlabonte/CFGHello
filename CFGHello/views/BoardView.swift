//
//  BoardView.swift
//  CFGHello
//
//  Created by Megan Labonte on 16/09/2023.
//

import SwiftUI

struct BoardView: View {
    var body: some View {
        VStack{
            ForEach(0..<Utils.maxCells){ row in
                
                HStack {
                    
                    ForEach(0..<Utils.maxCells){ cell in
                        if (cell.isMultiple(of: 2)){
                            Button(action:{
                                
                            }){
                                Image(systemName: "square.fill")
                                    .foregroundColor(Utils.colorDarkCell)
                            }
                                        }
                                        else{
                                            Button(action:{
                                                
                                            }){
                                                Image(systemName: "square.fill")
                                                    .foregroundColor(Utils.colorLightCell)
                                            }
                                                }

                    }
                }
            }
        }
    }
}

struct BoardView_Previews: PreviewProvider {
    static var previews: some View {
        BoardView()
    }
}
