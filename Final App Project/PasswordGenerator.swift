//
//  PasswordGenerator.swift
//  Final App Project
//
//  Created by Anokhi Luthra on 7/19/23.
//

import SwiftUI

struct PasswordGenerator: View {
    @State private var minimumLength: Bool = false
    @State private var SpecialCharacters: Bool = false
    @State private var UpperCase: Bool = false
    @State private var LowerCase: Bool = false
    @State private var Numbers: Bool = false
    @State private var userPassword = ""
    @State private var displayText = ""
    @State private var passwords: Array = ["oJdG1@20", "6*sjG&f12", "@84k1$Uvps", "mrVg1@258", "q5X0R1&i"]
    @State private var length = 9.0
    @State private var isEditing = false

    var body: some View {
        ZStack {
            Color("LightBackground")
                .ignoresSafeArea()
            VStack {
                Text("**What are the requirements for your password?**")
                    .multilineTextAlignment(.center)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color("TextBackground"))
                    .cornerRadius(30)
                    .font(.system(size: 20))

                VStack {

                    Toggle(isOn: $minimumLength) {
                        Text("Minimum Length?")
                    }
                    if minimumLength {
                        Slider(
                            value: $length,
                            in: 6...12,
                            step: 1,
                            onEditingChanged: { editing in
                                isEditing = editing
                            }
                        )
                        Text("\(Int(length))")
                            .fontWeight(.bold)
                            .foregroundColor(isEditing ? Color("LightBackground") : Color("DarkBackground"))
                    }
                    Toggle(isOn: $UpperCase) {
                        Text("Uppercase Characters?")
                    }
                    Toggle(isOn: $LowerCase) {
                        Text("Lowercase Characters?")
                    }
                    Toggle(isOn: $Numbers) {
                        Text("Numbers?")
                    }
                    Toggle(isOn: $SpecialCharacters) {
                        Text("Special Characters?")
                    }
                }
                .padding()
                .background(Color("TextBackground"))
                .cornerRadius(30)
                                   
                
                Button("Request Password") {
                    displayText = passwords.randomElement()!
                }
                .buttonStyle(.borderedProminent)
                .tint(Color("DarkBackground"))
                
                                
                Text(displayText)
            } .padding(20)
        }
    }
}

struct PasswordGenerator_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            PasswordGenerator()
                .preferredColorScheme(.light)
            PasswordGenerator()
                .preferredColorScheme(.dark)
        }
    }
}
