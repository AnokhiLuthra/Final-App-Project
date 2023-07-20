//
//  PasswordGenerator.swift
//  Final App Project
//
//  Created by Anokhi Luthra on 7/19/23.
//

import SwiftUI

struct PasswordGenerator: View {
    var body: some View {
        Text("Password")
    }
}
/*struct PasswordGenerator: View {
    @State private var passwordLength: Double = 12.0
    @State private var includeUppercase: Bool = true
    @State private var includeLowercase: Bool = true
    @State private var includeNumbers: Bool = true
    @State private var includeSpecialCharacters: Bool = true
    @State var generatedPassword: String = "Slider"

    var body: some View {
        VStack {
            Text("Password Generator")
              .font(.title)
              .padding()
            // Password Length Slider
            HStack {
              Text("Password Length: \(passwordLength)")
              Slider(value: $passwordLength, in: 6...30, step: 1.0)
                .padding(.horizontal)
            }
            .padding()
            // Character Type Selection
            Toggle(isOn: $includeUppercase) {
              Text("Include Uppercase Letters")
            }
            .padding()
            Toggle(isOn: $includeLowercase) {
              Text("Include Lowercase Letters")
            }
            .padding()
            Toggle(isOn: $includeNumbers) {
              Text("Include Numbers")
            }
            .padding()
            Toggle(isOn: $includeSpecialCharacters) {
              Text("Include Special Characters")
            }
            .padding()
            // Generate Password Button
            Button(action: generatePassword) {
              Text("Generate Password")
                .padding()
                .foregroundColor(.white)
                .background(Color.blue)
                .cornerRadius(8)
            }
            .padding()
            // Display Generated Password
            Text("Generated Password:")
            Text(generatedPassword)
              .padding()

        }

        private func generatePassword() {
            let characterSets: [String] = [
              includeUppercase ? "ABCDEFGHIJKLMNOPQRSTUVWXYZ" :,
              includeLowercase ? "abcdefghijklmnopqrstuvwxyz" :,
              includeNumbers ? "0123456789" :,
              includeSpecialCharacters ? "!@#$%^&*()-_=+[{]}\\|;:’\",<.>/?" : "
            ]
              
            let availableCharacters = characterSets.joined()
            guard !availableCharacters.isEmpty else {
              generatedPassword = "Select at least one character type."
              return
            }
            // 1. Create an array of random characters with the desired password length
            let passwordCharacters = Array(repeating: (), count: Int(passwordLength))
              .map { _ in availableCharacters.randomElement() }
            // 2. Combine the characters into a single string to form the password
            let password = String(passwordCharacters.compactMap { $0 })
            generatedPassword = password
        }
    } 
}*/

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
