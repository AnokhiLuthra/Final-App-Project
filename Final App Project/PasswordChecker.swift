//
//  PasswordChecker.swift
//  Final App Project
//
//  Created by Anokhi Luthra on 7/19/23.
//

import SwiftUI

struct PasswordChecker: View {
    @State private var SpecialCharacters: Bool = true
    @State private var UpperCase: Bool = true
    @State private var LowerCase: Bool = true
    @State private var Numbers: Bool = true

    var body: some View {
        VStack {
            Text("What are the requirements for your password?")
            VStack {
                Toggle(isOn: $SpecialCharacters) {
                    Text("Need Special Characters?")
                }
                Toggle(isOn: $UpperCase) {
                    Text("Need Uppercase Characters?")
                }
                Toggle(isOn: $LowerCase) {
                    Text("Need Lowercase Characters?")
                }
                Toggle(isOn: $Numbers) {
                    Text("Need Numbers?")
                }
            }
            .padding()
            Text("\(SpecialCharacters)" as String)
        }
    }
}

struct PasswordChecker_Previews: PreviewProvider {
    static var previews: some View {
        PasswordChecker()
    }
}
