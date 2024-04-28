//  SwiftUIView1.swift
//  QuestionApp
//  Created by Sanjida Orpi.

import SwiftUI

struct SwiftUIView1: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("This is the root view 🌳")
                NavigationLink(destination: SwiftUIView1()) {
                        Text("Take me to a new view!")
                    
                }
            }
        }
    }
}

struct SwiftUIView1_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView1()
    }
}
