//
//  ContentView.swift
//  Usertable
//
//  Created by Mattias Axelsson on 2024-04-14.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var myMemberList : MemberListViewModel
    
    var body: some View {
        NavigationStack {
            VStack {
                List () {
                    //Skapa en list VIEW
                    //Extract subview som en egen view för bättre överesikt
                    ForEach(myMemberList.myMemberList) { member in
                        NavigationLink(destination: MemberView(member: member)) {
                                                       
                            RowView(member: member)
                        }
                    }
                }
            }
            .navigationTitle("Members List")
            .navigationBarItems(trailing: NavigationLink(destination: MemberView()) {
                Image(systemName: "plus")
            })
        }
    }
}

#Preview {
    ContentView()
}

struct RowView: View {
    let member : Member
    var body: some View {
        VStack {
            Image(member.imageLink).resizable().scaledToFit()
            Spacer()
            HStack {
                Text(member.name).fontWeight(.heavy)
                Spacer()
                Text(member.email.prefix(10)+"...")
            }
            Spacer()
        }
        .padding()
    }
}
