//
//  MemberView.swift
//  Usertable
//
//  Created by Mattias Axelsson on 2024-04-14.
//

import SwiftUI

struct MemberView: View {
    
    var member : Member?
    
    @EnvironmentObject var myMemberList : MemberListViewModel
    @State var name : String = ""
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            TextEditor(text: $name)
        }
        .onAppear(perform: setMember)
        .navigationBarItems(trailing: Button("Save") {
          //save updated member name
            saveMemberName()
            presentationMode.wrappedValue.dismiss()
            
        })
    }

    private func setMember(){
        if let member = member {
            name = member.name
        }
    }
    
    private func saveMemberName() {
        
        if let member = member {
           
            myMemberList.update(member: member, with: name)
        }
        else {
            let newMember = Member(name: name, email: "test@rt.se", imageLink: "computer")
            myMemberList.myMemberList.append(newMember)
        }
       
    }
    
    
}


#Preview {
    MemberView()
}
