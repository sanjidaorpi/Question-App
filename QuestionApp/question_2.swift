//
//  question_2.swift
//  QuestionApp
//
//  Created by Sanjida Orpi on 4/28/24.
//

import SwiftUI

struct question_2: View {
    var choices = ["Cat", "Dog", "Bunny", "Panda"]
    @State private var display = false
    @State private var selectedChoice: String?
    
    var answer: String {
        if let choice = selectedChoice {
            switch choice {
            case "Cat":
                display = true
                return "🐈‍⬛"
                
            case "Dog":
                display = true
                return "🐕"
                
            case "Bunny":
                display = true
                return "🐇"
                
            case "Panda":
                display = true
                return "🐼"
                
            default:
                return "Unknown"
            }
        }
        return ""
    }
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Favorite animal?")
                    .font(.headline)
                    .padding()
                List(choices, id: \.self) { choice in
                    Button(action: {
                        selectedChoice = choice
                    }) {
                        HStack {
                            Text(choice)
                            Spacer()
                            if selectedChoice == choice {
                                Text(answer)
                            }
                        }
                    }
                    
                }
                
                if (display) {
                    NavigationLink(destination: question_3()) {
                        Text("Next ->")
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
                }
            }
            
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct question_2_Previews: PreviewProvider {
    static var previews: some View {
        question_2()
    }
}
