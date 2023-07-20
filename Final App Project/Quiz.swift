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
                        
                                Button("Click here to reveal answer") {
                                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                                    }
                                .padding()
                                .background(Color("TextBackground"))
                                .cornerRadius(30)
                                .foregroundColor(Color.black)
                            
                            
                            Text("Question 2: Is s7d8ftgSDFHJ a better password than SDskjhfd731SPfhsä37323?")
                                .fontWeight(.bold)
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color("LightButton"))
                                .cornerRadius(30)
                            HStack {
                                Button("Yes") {
                                    result1 = "That's not right, try again?"
                                }
                                    .padding()
                                    .background(Color("TextBackground"))
                                    .cornerRadius(30)
                                    .foregroundColor(Color.black)
                                
                                Button("No") {
                                    result1 = "Correct!"
                                }
                                    .padding()
                                    .background(Color("TextBackground"))
                                    .cornerRadius(30)
                                    .foregroundColor(Color.black)
                            }
                            
                            Text(result1)
                                .padding(1)
                              //  .background(Color("TextBackground"))
                                //.cornerRadius(30)
                            
                            Text("Question 3: What's the best replacement password for 'ILoveDogs1'?")
                                .fontWeight(.bold)
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color("LightButton"))
                                .cornerRadius(30)
                            
                            HStack {
                                Button("I_L0VED0GS") {
                                    result2 = "That's not right, try again?"
                                }
                                    .padding()
                                    .background(Color("TextBackground"))
                                    .cornerRadius(30)
                                    .foregroundColor(Color.black)
                                
                                Button("1L0v3D0g2") {
                                    result2 = "Correct!"
                                }
                                    .padding()
                                    .background(Color("TextBackground"))
                                    .cornerRadius(30)
                                    .foregroundColor(Color.black)
                            }
                            
                            Text(result2)
                                .padding(1)

                            
                            Text("Question 4:")
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
                            Text("Question 5:")
                                .fontWeight(.bold)
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color("LightButton"))
                                .cornerRadius(30)
                            Text("Placeholder")
                                .padding()
                                .background(Color("TextBackground"))
                                .cornerRadius(30)
                            
                            Text("Question 6:")
                                .fontWeight(.bold)
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color("LightButton"))
                                .cornerRadius(30)
                            Text("Placeholder")
                                .padding()
                                .background(Color("TextBackground"))
                                .cornerRadius(30)
                            
                            Text("Question 7:")
                                .fontWeight(.bold)
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color("LightButton"))
                                .cornerRadius(30)
                            Text("Placeholder")
                                .padding()
                                .background(Color("TextBackground"))
                                .cornerRadius(30)
                            
                            Text("Question 8:")
                                .fontWeight(.bold)
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color("LightButton"))
                                .cornerRadius(30)
                            Text("Placeholder")
                                .padding()
                                .background(Color("TextBackground"))
                                .cornerRadius(30)
                            
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
                            Text("Question 10:")
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

struct Quiz_Previews: PreviewProvider {
    static var previews: some View {
        Quiz()
    }
}
