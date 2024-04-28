//  ContentView.swift
//  QuestionApp
//  Created by Sanjida Orpi.

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("QUESTION APP")
                    .font(.title)
                    .italic()
                    .font(.system(.body, design: .default))
                    .foregroundColor(.black)
                    .padding()
                    .background(Color(red: 9.9, green: 0.7, blue: 0.9))
                    .cornerRadius(12)
                
                Image("question_cat")
                .padding(.top, 35)
                
                NavigationLink(destination: question_1()) {
                    Text("Start ->")
                        .font(.headline)
                        .italic()
                        .font(.system(.body, design: .default))
                        .foregroundColor(.black)
                        .padding()
                        .background(Color(red: 9.9, green: 0.7, blue: 0.9))
                        .cornerRadius(12)
                        .padding()
                        .luminanceToAlpha()
                }
                .padding(.top, 85)
            }
        }.navigationBarBackButtonHidden(true)
        .navigationViewStyle(StackNavigationViewStyle())
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
