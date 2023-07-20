//
//  ScamsAndPhishing.swift
//  Final App Project
//
//  Created by Anokhi Luthra on 7/19/23.
//

import SwiftUI

struct ScamsAndPhishing: View {
    var body: some View {
        NavigationStack {
                    ZStack {
                        Color("LightBackground")
                            .ignoresSafeArea()
                        ScrollView {
                            VStack (spacing: 20) {
                                VStack (spacing: 20) {
                                    Text("**SCAMS AND PHISHING**")
                                        .frame(maxWidth: .infinity)
                                        .padding()
                                        .background(Color("TextBackground"))
                                        .cornerRadius(30)
                                    Text("**Tips on how to identify a scam or phish.**")
                                        .frame(maxWidth: .infinity)
                                        .padding()
                                        .background(Color("LightButton"))
                                        .cornerRadius(30)
                                    Text("The message, call, or email was from an unknown contact. The unknown contact may be from the bank, the government, a charity, a medical company, or internet service provider. \n\nThe message is also demanding about money, which must be received, transferred, or sent through a specific medium such as paying through cryptocurrency, gift card, or wire transfer. However, this could also be about financial or personal user information. Another thing to check for are grammatical or spelling errors in text, addresses, or links. Additionally, check to see if the email address and domain match up, or if they are different to what you expected if you are already familiar with the sender.")
                                        .padding()
                                        .background(Color("TextBackground"))
                                        .cornerRadius(30)
                                   
                                    Text("**Tips on what to do if someone is trying to scam or phish you.** ")
                                        .frame(maxWidth: .infinity)
                                        .padding()
                                        .background(Color("LightButton"))
                                        .cornerRadius(30)
                                    Text("Don’t open emails from people you don’t know. \n\nBe extremely cautious around links. It is a good idea to type in the link yourself rather than click on something because even if it looks safe, it could be hyperlinked with a different website or force something to download. \n\nTalk about this with someone you trust for their input. Getting another opinion could help you realize if you’re being scammed or not and stop you from doing something you may regret later. \n\nResist the urge to do things immediately; scammers are trying to pressure you. Honest people will give you time to make a decision. If someone is calling you asking for money, especially if they are claiming to know someone close to you like a relative or friend, hang up. You can call someone else directly to verify if what the caller is saying is true or not. \n\nLastly, don’t be afraid to block unwanted calls, emails, or texts")
                                        .padding()
                                        .background(Color("TextBackground"))
                                        .cornerRadius(30)
                                }
                                .font(.system(size: 23))
                                NavigationLink(destination: Quiz()) {
                                    Text("Finished learning? Take a quiz to test your knowledge by clicking here.")
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

struct ScamsAndPhishing_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            ScamsAndPhishing()
                .preferredColorScheme(.light)
            ScamsAndPhishing()
                .preferredColorScheme(.dark)
        }
    }
}
