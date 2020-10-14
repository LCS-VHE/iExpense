//
//  ContentView.swift
//  iExpense
//
//  Created by Vincent He on 2020-10-12.
//

import SwiftUI

struct ContentView: View {
    @State private var numbers = [Int]()
    @State private var currentnumber = 3
    
    var body: some View {
        VStack{
            List{
                ForEach(numbers, id: \.self){ num in
                    Text("\(num)")
                }
                .onDelete(perform: removeRows)
            }
            Button("Add Num"){
                self.numbers.append(self.currentnumber)
                self.currentnumber += 1
            }
            
        }
    }
    
    func removeRows(at offsets: IndexSet){
        numbers.remove(atOffsets: offsets)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
