//
//  MissionTwoView.swift
//  AgentCipher
//
//  Created by Ved Pahune on 20/04/23.
//

import SwiftUI

struct MissionTwoView: View {
    var body: some View {
        ZStack{
            Color(.init(red: 0.114, green: 0.114, blue: 0.114, alpha: 1)).edgesIgnoringSafeArea(.all)
            VStack(spacing: 50) {
                Text("# Mission Two").font(.system(size: 40, weight: .light, design: .serif)).padding(.top,50)
                Spacer()
                AnimationView(name:"vault").frame(width: 200, height: 200)
                
                Text("Help Agent Cipher open the safe")
                    .font(.title)
                    .multilineTextAlignment(.center)
                
                Text("During an investigation Agent Cipher found a safe but it only accepts hash values of passwords.")
                    .font(.headline)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal,40)
                
                Text(" Help him find out if the password he is guessing is correct...")
                    .font(.title3)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                Spacer()
                
                
                NavigationLink(destination: MissionTwoCode()) {
                    Text("Let's Code")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding(EdgeInsets(top: 10, leading: 25, bottom: 10, trailing: 25))
                        .background(Color.blue)
                        .cornerRadius(10)
                    
                }.padding(.bottom,50)
            }.foregroundColor(.white)
        }
    }
}

struct MissionTwoView_Previews: PreviewProvider {
    static var previews: some View {
        MissionTwoView()
    }
}
