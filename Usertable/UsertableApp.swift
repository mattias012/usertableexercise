//
//  UsertableApp.swift
//  Usertable
//
//  Created by Mattias Axelsson on 2024-04-14.
//

import SwiftUI

@main
struct UsertableApp: App {
    
    @StateObject var myMemberList = MemberListViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(myMemberList)
        }
    }
}
