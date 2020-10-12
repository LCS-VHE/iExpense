//
//  ContentView.swift
//  iExpense
//
//  Created by Vincent He on 2020-10-12.
//

import SwiftUI
struct User{
    var firstName:String
    var lastName:String
}
struct ContentView: View {
    @State private var user = User(firstName: "Bosco", lastName: "Choi")// Using Struct in swiftui class
    
    var body: some View {
        Text("Hello, world!")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
