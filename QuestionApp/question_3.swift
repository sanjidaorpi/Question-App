//
//  question_3.swift
//  QuestionApp
//
//  Created by Sanjida Orpi on 4/28/24.
//

import SwiftUI

struct question_3: View {
    var choices = ["Winter", "Spring", "Summer", "Fall"]
    @State private var display = false
    @State private var selectedChoice: String?
    
    var answer: String {
        if let choice = selectedChoice {
            switch choice {
            case "Winter":
                display = true
                return "☃️"
                
            case "Spring":
                display = true
                return "🌷"
                
            case "Summer":
                display = true
                return "☀️"
                
            case "Fall":
                display = true
                return "🍁"
                
            default:
                return "Unknown"
            }
        }
        return ""
    }
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Favorite season?")
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
                    NavigationLink(destination: ContentView()) {
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

struct question_3_Previews: PreviewProvider {
    static var previews: some View {
        question_3()
    }
}
