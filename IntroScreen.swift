//
//  IntroScreen.swift
//  AgentCipher
//
//  Created by Ved Pahune on 18/04/23.
//

import Foundation
import SwiftUI


struct IntroScreen: View {
    var body: some View {
        VStack {
            AnimationView(name:"agent")
            
            Text("This is Agent Cipher a secret agent who has been assigned a very special mission, You have to help him in his mission by encrypting and decrypting secret messages that come across his investigations")
                .font(.system(size: 20, design: .serif))
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .padding(EdgeInsets( top: 0, leading: 50, bottom: 0, trailing: 50))
            Text("Are You Ready?")
                .padding(EdgeInsets( top: 20, leading: 0, bottom: 0, trailing: 0))
                    
            NavigationLink(destination: TutorialView()) {
                Text("Yes")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding(EdgeInsets(top: 10, leading: 25, bottom: 10, trailing: 25))
                    .background(Color.blue)
                    .cornerRadius(10)
                    
            }.padding(EdgeInsets(top: 0, leading: 0, bottom: 50, trailing: 0))
        }
    }
}
