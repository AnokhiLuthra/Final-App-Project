//
//  Quiz.swift
//  Final App Project
//
//  Created by ryan j on 7/20/23.
//

import SwiftUI

struct Quiz: View {
    @State private var result1 = ""
    @State private var result2 = ""
    @State private var result3 = ""
    @State private var result4 = ""
    @State private var result5 = ""
    @State private var result6 = ""
    @State private var result7 = ""
    @State private var result8 = ""
    @State private var result9 = ""
    @State private var result10 = ""
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color("LightBackground")
                    .ignoresSafeArea()
                ScrollView {
                    VStack (spacing: 20) {
                        Text("QUIZ")
                            .padding()
                            .font(.system(size: 50))
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(Color("DarkBackground"))
                        VStack (spacing: 20) {
                           
                            Text("Question 1:")
                                .fontWeight(.bold)
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color("LightButton"))
                                  .cornerRadius(30)
                        
                                Button("Click here to reveal the answer") {
                                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                                    }
                                .padding()
                                .background(Color("TextBackground"))
                                .cornerRadius(30)
                                .foregroundColor(Color.black)
                         
                            Text(result1)
                                .padding(1)
                            
                            Text("Question 2: Is s7d8ftgSDFHJ a better password than SDskjhfd731SPfhsä37323?")
                                .fontWeight(.bold)
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color("LightButton"))
                                .cornerRadius(30)
                            HStack {
                                Button("Yes") {
                                    result2 = "Correct! Even though longer passwords are better than shorter, the second password has an accented character.That's not right, try again?"
                                }
                                    .padding()
                                    .background(Color("TextBackground"))
                                    .cornerRadius(30)
                                    .foregroundColor(Color.black)
                                
                                Button("No") {
                                    result2 = "That's not right, try again?"
                                }
                                    .padding()
                                    .background(Color("TextBackground"))
                                    .cornerRadius(30)
                                    .foregroundColor(Color.black)
                            }
                            
                            Text(result2)
                                .padding(1)
                                //.background(Color("TextBackground"))
                                //.cornerRadius(30)
                            
                            Text("Question 3: What's the best replacement password for 'ILoveDogs123'?")
                                .fontWeight(.bold)
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color("LightButton"))
                                .cornerRadius(30)
                            
                            HStack {
                                Button("1L0v3D0g$274") {
                                    result3 = "Correct! The more variety, the better."
                                }
                                    .padding()
                                    .background(Color("TextBackground"))
                                    .cornerRadius(30)
                                    .foregroundColor(Color.black)
                                
                                Button("I_L0VED0GS321") {
                                    result3 = "That's not right, try again?"
                                }
                                    .padding()
                                    .background(Color("TextBackground"))
                                    .cornerRadius(30)
                                    .foregroundColor(Color.black)
                            }
                            
                            Text(result3)
                                .padding(1)

                            
                            Text("Question 4: You have been sent an email from your internet provider. They say, 'Your most recent bill have not been paid. Please log in to your account on our website that we've linked here for your conveneice to wire-transfer the payment.' Is this safe or a scam?")
                                .fontWeight(.bold)
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color("LightButton"))
                                .cornerRadius(30)
                            
                        }
                        .font(.system(size: 23))
                        
                        VStack {
                            HStack {
                                Button("Safe") {
                                    result4 = "That's not right, try again?"
                                }
                                    .padding()
                                    .background(Color("TextBackground"))
                                    .cornerRadius(30)
                                    .foregroundColor(Color.black)
                                
                                Button("Scam") {
                                    result4 = "Correct! The email is too suspicious about wire-transfering money and has grammar and spelling mistakes."
                                }
                                    .padding()
                                    .background(Color("TextBackground"))
                                    .cornerRadius(30)
                                    .foregroundColor(Color.black)
                            }
                            
                            Text(result4)
                                .multilineTextAlignment(.center)
                                .padding(1)
                            
                            Text("Question 5: You have been sent an email from your local state government. It reads, 'Due to the devastating impact of the Covid-19 pandemic, we would like to offer compensate for those affected. If you would like to apply, go to the link below.' If you hover over it, the website does not match up with the link's text. Is this safe or a scam?")
                                .fontWeight(.bold)
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color("LightButton"))
                                .cornerRadius(30)
                            
                            HStack {
                                Button("Safe") {
                                    result5 = "That's not right, try again?"
                                }
                                    .padding()
                                    .background(Color("TextBackground"))
                                    .cornerRadius(30)
                                    .foregroundColor(Color.black)
                                
                                Button("Scam") {
                                    result5 = "Correct! The link in the email did not match up with the text, which could be very dangerous."
                                }
                                    .padding()
                                    .background(Color("TextBackground"))
                                    .cornerRadius(30)
                                    .foregroundColor(Color.black)
                            }
                            Text(result5)
                                .padding(1)
                            
                            Text("Question 6: You have been sent an email from no-reply@accounts.google.com that reads, 'We noticed a new sign-in to your Google Account on a Mac device. If this was you, you don’t need to do anything. If not, we’ll help you secure your account.' There is a button that says 'Check activity' that you can see will go to myaccount.google.com/notifications because you hovered over it. Is this safe or scam?")
                                .fontWeight(.bold)
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color("LightButton"))
                                .cornerRadius(30)
                            
                            HStack {
                                Button("Safe") {
                                    result6 = "Correct! The email address has its own domain and if the button is clicked, it will go to a safe website."
                                }
                                    .padding()
                                    .background(Color("TextBackground"))
                                    .cornerRadius(30)
                                    .foregroundColor(Color.black)
                                
                                Button("Scam") {
                                    result6 = "That's not right, try again?"
                                }
                                    .padding()
                                    .background(Color("TextBackground"))
                                    .cornerRadius(30)
                                    .foregroundColor(Color.black)
                            }
                            Text(result6)
                                .padding(1)
                               
                        }
                        .font(.system(size: 23))
                        
                        VStack {
                            Text("Question 7: Which website is safe? http://google.com or https://google.com")
                                .fontWeight(.bold)
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color("LightButton"))
                                .cornerRadius(30)
                           
                            Button("Click here to reveal the answer") {
                                    result7 = "Although they look very similar, the second link is safe because it has an 's' at the end of http."
                                }
                            .padding()
                            .background(Color("TextBackground"))
                            .cornerRadius(30)
                            .foregroundColor(Color.black)
                            
                            Text(result7)
                                .padding(1)
                            
                            Text("Question 8: You're on a website that tells you to create an account. The account needs your name, date of birth, and your email. What should you do?")
                                .fontWeight(.bold)
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color("LightButton"))
                                .cornerRadius(30)
                            
                            HStack {
                                Button("Give them my real name and date of birth, and my personal email") {
                                    result8 = "This is acceptable, but make sure before you input personal information that the website is safe."
                                }
                                    .padding()
                                    .background(Color("TextBackground"))
                                    .cornerRadius(30)
                                    .foregroundColor(Color.black)
                                
                                Button("Give them a fake name and date of birth, and a barely-used email") {
                                    result8 = "This is acceptable, but if you trust the website to be safe, then this isn't absolutely necessary."
                                }
                                    .padding()
                                    .background(Color("TextBackground"))
                                    .cornerRadius(30)
                                    .foregroundColor(Color.black)
                            }
                            Text(result8)
                                .padding(1)
                            
                            Text("Question 9:")
                                .fontWeight(.bold)
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color("LightButton"))
                                .cornerRadius(30)
                            Text("Placeholder")
                                .padding()
                                .background(Color("TextBackground"))
                                .cornerRadius(30)
                            
                        }
                        .font(.system(size: 23))
                        
                        VStack {
                            Text("Question 10: Why is cybersafety important?")
                                .fontWeight(.bold)
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color("LightButton"))
                                .cornerRadius(30)
                           
                            HStack {
                                Button("So much of our personal information is stored on the internet now, so it is important to keep it protected from those with criminal intentions.") {
                                    result10 = "They're both correct!"
                                }
                                    .padding()
                                    .background(Color("TextBackground"))
                                    .cornerRadius(30)
                                    .foregroundColor(Color.black)
                                
                                Button("Poor cybersecurity can lead to malware, an attacker altering your systems, or theft of your credit card info to make unauthorized purchases.") {
                                    result10 = "They're both correct!"
                                }
                                    .padding()
                                    .background(Color("TextBackground"))
                                    .cornerRadius(30)
                                    .foregroundColor(Color.black)
                            }
                            Text(result10)
                                .padding(1)
                            
                        }
                        .font(.system(size: 23))
                        
                        
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

struct Quiz_Previews: PreviewProvider {
    static var previews: some View {
        Quiz()
    }
}
