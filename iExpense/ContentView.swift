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
        NavigationView{
            VStack{
                List{
                    ForEach(numbers, id: \.self){ num in
                        Text("\(num)")
                    }
                    .onDelete(perform: removeRows)
                }
                HStack{
                    Button("Add Num"){
                        self.numbers.append(self.currentnumber)
                        self.currentnumber += 1
                    }
                    Button("Remove Num"){
                        if self.numbers.count > 0{
                            self.numbers.remove(at: 0)
                        }
                    }
                }
                
            }
            .navigationBarTitle("Test")
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
