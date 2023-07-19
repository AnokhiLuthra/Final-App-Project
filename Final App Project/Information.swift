//
//  Information.swift
//  Final App Project
//
//  Created by Anokhi Luthra on 7/19/23.
//

import SwiftUI

struct Information: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color("LightBackground")
                    .ignoresSafeArea()
                ScrollView {
                    VStack (spacing: 20) {
                        VStack (spacing: 20) {
                            Text("Protecting Your Information")
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color("TextBackground"))
                                .cornerRadius(30)
                            Text("The internet has a multitude of personal information stored on it. And with the abundance of scammers, hackers, criminals trying to steal your personal information online, it is a good idea to know how to lock down you devices, network, and other personal information \n\n**Securing Your Devices**\nSecurity softwares, internet browsers, and operating softwares should always be up to date. This is because scammers/hackers/criminals etc. usually exploit a software's weak points before the company has a chance to fix them. This is why you should update your software regularly, especially:\n\n_Securtiy softwares_ - antivirus/firewall programs need to be updated in order to work properly\n_operating system software_- Windows/MacOS/Chrome, etc.\n_Internet browsers/apps_ - updates are usually there to provide security updates, fix bugs, or add new features. \n\nOn how to update your security software, operating system and internet browsers and apps, go to the developer's website.\n\n**Securing Your Accounts**\nBe aware of what you are sharing with others on social media. Check your privacy settings, and be cautious when posting things like location, hometown, and birthdates. \n\n**Public Wifi Services**\nUse free wifi with caution, as most free public wifis do not have many security measures in place. This means that others using the same wifi network as you will be able to easily access your activity. (meaning that you shouldn't use your credit card to make transactions on public wifi) \n\n**Protect Your Home Network**\nYour router is the connecting point between your devices and the internet. If malware at any point gets into any on of your connected devices, it can spread to the other devices connected to your network. And such, your devices, accounts, and whole network are only as secure as your router.")
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

struct Information_Previews: PreviewProvider {
    static var previews: some View {
        Information()
    }
}
