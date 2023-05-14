//
//  AESEncryptionTutorialTwo.swift
//  AgentCipher
//
//  Created by Ved Pahune on 20/04/23.
//

import SwiftUI

struct AESEncryptionTutorialTwo: View {
    var body: some View {
        ZStack{
            Color(.init(red: 0.114, green: 0.114, blue: 0.114, alpha: 1)).edgesIgnoringSafeArea(.all)
            VStack{
                
                
                Text("⦿ Decryption:").foregroundColor(.white).font(.system(size: 25, weight: .light, design: .serif))
                Image("decrypt")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 700, height: 120)
                    .padding(.bottom, 20)
                    .padding(.horizontal, 20)
                Text("⦿ To decrypt the message, we create a new sealedBox object using the nonce, ciphertext, and tag that were generated during encryption, and then call the open method on the AES.GCM object to decrypt the message. If the decryption is successful, we get the original message back in the decryptedData variable, which we can then convert to a string and print out.").foregroundColor(.gray)
                    .font(.system(size: 14, weight: .ultraLight, design: .serif)).padding(.init(top: 1, leading: 30, bottom:50, trailing: 30)).lineSpacing(10)
                
                
                Spacer()
                Text("Enough of the theory, now let's do some exercises.").font(.system(size: 30, weight: .light, design: .rounded)).padding(.bottom,30)
               
                NavigationLink(destination: MissionOneView()) {
                    Text("Let's Code")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding(EdgeInsets(top: 10, leading: 25, bottom: 10, trailing: 25))
                        .background(Color.blue)
                        .cornerRadius(10)
                    
                }.padding(.bottom,50)
            }.padding(.top,50)
            
        }.foregroundColor(.white)
    }
}

struct AESEncryptionTutorialTwo_Previews: PreviewProvider {
    static var previews: some View {
        AESEncryptionTutorialTwo()
    }
}
