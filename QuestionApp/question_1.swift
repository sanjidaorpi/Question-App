//
//  question_1.swift
//  QuestionApp
//
//  Created by Sanjida Orpi on 4/28/24.
//

import SwiftUI

struct question_1: View {
    var choices = ["Pink", "Blue", "Black", "Green"]
    @State private var display = false
    @State private var selectedChoice: String?
    
    var answer: String {
        if let choice = selectedChoice {
            switch choice {
            case "Pink":
                display = true;
                return "🩷"
                
            case "Blue":
                display = true;
                return "💙"
                
            case "Black":
                display = true;
                return "🖤"
                
            case "Green":
                display = true;
                return "💚"
                
            default:
                return "Unknown"
            }
        }
        return ""
    }
    
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Favorite color?")
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
                    NavigationLink(destination: question_2()) {
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


struct question_1_Previews: PreviewProvider {
    static var previews: some View {
        question_1()
    }
}
