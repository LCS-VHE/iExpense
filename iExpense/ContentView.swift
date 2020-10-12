//
//  ContentView.swift
//  iExpense
//
//  Created by Vincent He on 2020-10-12.
//

import SwiftUI

struct SecondView: View{ // This is a another view
    var body: some View{
        Text("Hello Welcome to this page! ")
    }
}
struct ContentView: View {
    @State private var showsheet = false
    
    var body: some View {
        Button("Show Sheet"){
            // Show the sheet
            self.showsheet.toggle()
        }
        .sheet(isPresented: $showsheet) {
            SecondView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
