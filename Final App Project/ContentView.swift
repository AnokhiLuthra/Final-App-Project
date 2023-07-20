//
//  ContentView.swift
//  Final App Project
//
//  Created by Anokhi Luthra on 7/14/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color("LightBackground")
                    .ignoresSafeArea()
                ScrollView {
                    VStack (spacing: 20) {
                        Text("HOME")
                            .padding()
                            .font(.system(size: 60))
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(Color("DarkBackground"))
                        VStack (spacing: 20) {
                            Text("**What is cybersecurity?**")
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color("TextBackground"))
                                .cornerRadius(30)

                            Text("Cybersecurity is the practice of protecting systems, networks, and research from unauthorized access or criminal use. So much of our personal information is stored on the internet now. And so, it is important to protect your information from cyber attacks. Poor cybersecurity raises many risks, including malware erasing your entire system, an attacker altering your systems, or even stealing your credit card information and making unauthorized purchases.")
                                .padding()
                                .background(Color("TextBackground"))
                                .cornerRadius(30)
                        }
                        .font(.system(size: 23))
                        NavigationLink(destination: Quiz()) {
                            Text("Go through other pages to learn more about cybersecurity! \nFinished learning? Take a quiz to test your knowledge by clicking here.")
                                .foregroundColor(Color("QuizText"))
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            ContentView()
                .preferredColorScheme(.light)
            ContentView()
                .preferredColorScheme(.dark)
        }
    }
}
