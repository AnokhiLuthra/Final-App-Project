//
//  Websites.swift
//  Final App Project
//
//  Created by Anokhi Luthra on 7/19/23.
//

import SwiftUI

struct Websites: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color("LightBackground")
                    .ignoresSafeArea()
                ScrollView {
                    VStack (spacing: 20) {
                        Text("WEBSITES")
                            .padding()
                            .font(.system(size: 50))
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(Color("DarkBackground"))
                        VStack (spacing: 20) {
                            Text("How to know if you should trust a website:")
                                .fontWeight(.bold)
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color("LightButton"))
                                .cornerRadius(30)
                            
                            Text("Check the domain of the website to make sure it is credible and you have spelled it correctly. A lot of times people create fake websites that are very similar to the original but have removed or added an extra letter.")
                                .padding()
                                .background(Color("TextBackground"))
                                .cornerRadius(30)
                            
                            Text("Check the SSL certificate, make sure it is https and not http. Http websites can’t be trusted and are mostly likely trying to steal your information.")
                                .padding()
                                .background(Color("LightButton"))
                                .cornerRadius(30)
                            Text("Check the lock next to the url of the website. If it is closed, the website is safe, but if anything else happens, the website is not safe.")
                                .padding()
                                .background(Color("TextBackground"))
                                .cornerRadius(30)
                            Text("Analyze website design. A lot of time these hackers don’t have time to create a good looking website. If there are many formatting mistakes along with spelling and grammar, that is another sign the website isn’t trustworthy. ")
                                .padding()
                                .background(Color("LightButton"))
                                .cornerRadius(30)
                            Text("Search for a privacy policy as it outlines the information how the website will use or protect your data.")
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

struct Websites_Previews: PreviewProvider {
    static var previews: some View {
        Websites()
    }
}
