//
//  Member.swift
//  Usertable
//
//  Created by Mattias Axelsson on 2024-04-14.
//

import Foundation

class Member : Identifiable, Equatable {
    
    //detta måste man ha med, men varför? Annars ej equatble?
    static func == (lhs: Member, rhs: Member) -> Bool {
        return true
    }
    
    
//    var id = UUID()
    
    var name : String
    var email : String
    var imageLink : String
    
    private var unformattedDate = Date()
    private let dateFormatter = DateFormatter()
    
    var date : String {
    
        return dateFormatter.string(from: unformattedDate)
    }
    
    init(name: String, email: String, imageLink: String) {
        self.name = name
        self.email = email
        self.imageLink = imageLink
        
        dateFormatter.dateStyle = .full
    }
}
