//
//  ContentView.swift
//  Usertable
//
//  Created by Mattias Axelsson on 2024-04-14.
//

import SwiftUI

struct ContentView: View {
    
    var myMemberList = [Member(name: "Mattias Axelsson", email: "test@test.se", imageLink: "mattias"),
                        Member(name: "Elliot Axelsson", email: "test3@test.se", imageLink: "computer"),
                        Member(name: "Nathalie Axelsson", email: "test2@test.se", imageLink: "computer"),]
    
    var body: some View {
        VStack {
            List () {
                //Skapa en list VIEW
                //Extract subview som en egen view för bättre överesikt
                ForEach(myMemberList) { member in
                    RowView(member: member)
                }
            }
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
