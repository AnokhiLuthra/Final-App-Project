//
//  Passwords.swift
//  Final App Project
//
//  Created by Anokhi Luthra on 7/19/23.
//

import SwiftUI

struct Passwords: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color("LightBackground")
                    .ignoresSafeArea()
                ScrollView {
                    VStack (spacing: 20) {
                        VStack (spacing: 20) {
                            Text("**PASSWORDS**")
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color("TextBackground"))
                                .cornerRadius(30)
                            Text("Passwords can only be a combination of letters, numbers, and symbols (ASCII-standard characters only)\n\nDo not make a password with accents or accented characters, that is used in many other places, starts or ends with a blank space, containing sequential numbers or letters (ex: 1234, qwerty, abcd, etc.)\n\n")
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color("TextBackground"))
                                .cornerRadius(30)
                            Text("**Make your password unique**")
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color("LightButton"))
                                .cornerRadius(30)
                            Text("Use different a different password for each important account. If you reuse passwords and someone gets one of them, they will have access to your other accounts. If you cannot remember all of your passwords, use a tool to keep track of them.")
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color("TextBackground"))
                                .cornerRadius(30)
                            Text("**Make your password longer & more memorable**")
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color("LightButton"))
                                .cornerRadius(30)
                            Text("The longer your password is, the stronger it is. To make your password memorable you can use a series of words that is meaningful to just you or an abbreviation (using the first letter of each word in a sentence/phrase).\n\nTry to use special characters if possible, as it makes passwords harder to guess by using a combination of upper and lowercase letters.\n\nStay away from using personal information or common words because people you know can easily guess it and people you don’t know can easily find this information about you because it is often publicly available.\n\nUse words that cannot be found in the dictionary by substituting out certain letters with symbols or numbers if you want to use a particular word (ex: “patio garden” can become P8tty0G#5dn).")
                                .padding()
                                .background(Color("TextBackground"))
                                .cornerRadius(30)

                            HStack {
                                NavigationLink(destination: PasswordChecker()) {
                                    Text("Click for a Password Checker")
                                        .padding()
                                        .background(Color("TextBackground"))
                                        .cornerRadius(30)
                                        .foregroundColor(.black)
                                }
                                NavigationLink(destination: PasswordGenerator()) {
                                    Text("Click for a Password Generator")
                                        .padding()
                                        .background(Color("TextBackground"))
                                        .cornerRadius(30)
                                        .foregroundColor(.black)
                                }
                            }
                        }
                        .font(.system(size: 23))

                        NavigationLink(destination: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Destination@*/Text("Destination")/*@END_MENU_TOKEN@*/) {
                            Text("Finished learning? Take a quiz to test your knowledge by clicking here.")
                        }
                        .font(.system(size: 20))

                        .buttonStyle(.borderedProminent)
                        .tint(Color("DarkBackground"))
                        HStack {
                            NavigationLink(destination: Information()) {
                                Text("Page 1")
                                    .padding(.vertical)
                            }
                            NavigationLink(destination: Passwords()) {
                                Text("Page 2")
                                    .padding(.vertical)
                            }
                            NavigationLink(destination: ScamsAndPhishing()) {
                                Text("Page 3")
                                    .padding(.vertical)
                            }
                            NavigationLink(destination: Websites()) {
                                Text("Page 4")
                                    .padding(.vertical)
                            }
                        }
                        .buttonStyle(.borderedProminent)
                        .tint(Color("LightButton"))
                    } .padding(20)

                }
            }
        }

    }
}

struct Passwords_Previews: PreviewProvider {
    static var previews: some View {
        Passwords()
    }
}
