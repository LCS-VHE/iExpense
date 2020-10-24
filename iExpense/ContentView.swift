//
//  ContentView.swift
//  iExpense
//
//  Created by Vincent He on 2020-10-12.
//

import SwiftUI
import Combine


struct PostContent: View{
    private var text = "This is a placeholder"
    
    init(text:String){
        self.text = text
    }
    
    var body: some View{
        Text(self.text)
    }
}
struct ContentView: View {
    @State private var posts =  [Post]()
    
    var body: some View {
        NavigationView{
        List(posts){ post in
            VStack{
                NavigationLink(destination: PostContent.init(text: post.body)){
                    Text(post.title)
                }
            }
            .navigationBarTitle("API CALL")
        }
            
        }
        
        .onAppear{
            Api().getPosts{ (post) in
                self.posts = post //getting the url
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
