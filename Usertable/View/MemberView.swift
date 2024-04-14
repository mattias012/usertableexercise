//
//  MemberView.swift
//  Usertable
//
//  Created by Mattias Axelsson on 2024-04-14.
//

import SwiftUI

struct MemberView: View {

    @State var name : String = ""
    
    var body: some View {
        TextEditor(text: $name)
    }
}

#Preview {
    MemberView()
}
