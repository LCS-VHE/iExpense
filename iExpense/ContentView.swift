//
//  ContentView.swift
//  iExpense
//
//  Created by Vincent He on 2020-10-12.
//

import SwiftUI

class User: ObservableObject{ // This is required when using Observed OBject
    @Published var firstName = "Bosco" // Changing the view when the value  changes
    @Published var lastName = "Choi" // Changing the view when the value  changes
    
    init(fn: String, ln: String){
        self.firstName = fn
        self.lastName = ln
    }
}

struct ContentView: View {
    @ObservedObject private var user = User(fn: "Bosco", ln: "Choi") // Data Sharing
    ç
    var body: some View {
        VStack{
            Text("Your Name is \(user.firstName), \(user.lastName)")
            Section{
                TextField("It Not What is your First Name", text:$user.firstName)
                TextField("It Not What is your Last Name", text:$user.lastName)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
