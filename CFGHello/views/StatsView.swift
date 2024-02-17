//
//  StatsView.swift
//  CFGHello
//
//  Created by Megan Labonte on 16/09/2023.
//

import SwiftUI

struct StatsView: View {
    
   @State var userProfile: UserProfile = UserProfile(username: "CFG", gamesAttempted: 0)
    var body: some View {
        VStack{
            
            Text("\(userProfile.username)Stats")
                .font(.title)
            
            Form {
                HStack{
                    Text("Username:")
                    TextField("username", text:$userProfile.username)
                        .onSubmit {
                            saveUserProfile()
                        }
                }
                HStack{
                    Text("Games Attempted:")
                    Text("\(userProfile.gamesAttempted)")
                    
                }
            }
        }.onAppear{
            loadUserProfile()
    }
    
    } //var body. functions have to be outside var body as they are their own entity
    
    func saveUserProfile(){
        UserDefaults.standard.set(userProfile.username, forKey: "username")
        UserDefaults.standard.set(userProfile.gamesAttempted, forKey: "gamesAttempted")
    }
    
    func loadUserProfile(){
        loadUserName()
        loadGamesAttempted()
    }
    
    func loadUserName() {
        if(UserDefaults.standard.object(forKey: "username") != nil){
            userProfile.username = UserDefaults.standard.string(forKey: "username")!
        }
    }
    
    func loadGamesAttempted() {
        if(UserDefaults.standard.objectIsForced(forKey: "gamesAttempted") != nil){
            userProfile.gamesAttempted = UserDefaults.standard.integer(forKey: "gamesAttempted")
        }
    }
}

struct StatsView_Previews: PreviewProvider {
    static var previews: some View {
        StatsView()
    }
}
