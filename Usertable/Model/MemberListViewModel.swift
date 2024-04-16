//
//  MemberListViewModel.swift
//  Usertable
//
//  Created by Mattias Axelsson on 2024-04-15.
//

import Foundation

class MemberListViewModel : ObservableObject { //Måste vara en class om det ska vara observerable
    @Published var myMemberList = [Member]() //vad ska vi ha hålla koll på
    
    init(){
        addMockData()
    }
    
    func addMockData() {
        myMemberList.append(Member(name: "Mattias Axelsson", email: "test@test.se", imageLink: "mattias"))
        myMemberList.append(Member(name: "Elliot Axelsson", email: "test3@test.se", imageLink: "computer"))
        myMemberList.append(Member(name: "Nathalie Axelsson", email: "test2@test.se", imageLink: "computer"))
    }
    
    func update(member: Member, with name: String){
        if let index = myMemberList.firstIndex(of: member) {
            myMemberList[index].name = name
        }
    }
}
