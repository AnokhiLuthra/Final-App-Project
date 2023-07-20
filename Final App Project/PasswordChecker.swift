//
//  PasswordChecker.swift
//  Final App Project
//
//  Created by Anokhi Luthra on 7/19/23.
//

import SwiftUI

struct PasswordChecker: View {
    @State private var minimumLength: Bool = false
    @State private var SpecialCharacters: Bool = false
    @State private var UpperCase: Bool = false
    @State private var LowerCase: Bool = false
    @State private var Numbers: Bool = false
    @State private var userPassword = ""
    @State private var displayText = ""
    
    private var numText: String {
        var hasNumber = false
        for character in userPassword {
            if character.isNumber {
                hasNumber = true
            }
        }
        if hasNumber == true {
            return ("yes")
        } else {
            return ("\nYour password does not contain any numbers.")
        }
    }

    private var upperText: String {
        var hasUpper = false
        for character in userPassword {
            if character.isUppercase {
                hasUpper = true
            }
        }
        if hasUpper == true {
            return ("yes")
        } else {
            return ("\nYour password does not contain any uppercase characters.")
        }
    }

    private var lowerText: String {
        var hasLower = false
        for character in userPassword {
            if character.isLowercase {
                hasLower = true
            }
        }
        if hasLower == true {
            return ("yes")
        } else {
            return ("\nYour password does not contain any lowercase characters.")
        }
    }

    @State private var length = 6.0
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
                
                TextField("Type your password here...", text: $userPassword)
                    .cornerRadius(30)
                    .multilineTextAlignment(.center)
                    .font(.headline)
                    .padding()
                .background(Color("TextField"))
                .cornerRadius(15)
                    
                
                Button("Submit Password") {
                    if minimumLength {
                        if userPassword.count < Int(length) {
                            displayText = "\nYour password does not meet the length requirement."
                        }
                    }
                    if Numbers {
                        if numText != "yes" {
                            displayText.append(numText)
                        }
                    }
                    if UpperCase {
                        if upperText != "yes" {
                            displayText.append(upperText)
                        }
                    }
                    if LowerCase {
                        if lowerText != "yes" {
                            displayText.append(lowerText)
                        }
                    }

                }
                .buttonStyle(.borderedProminent)
                .tint(Color("DarkBackground"))
                
                                
                Text(displayText)
            } .padding(20)
        }
    }
}

struct PasswordChecker_Previews: PreviewProvider {
    static var previews: some View {
        PasswordChecker()
    }
}
