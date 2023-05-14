//
//  AESEncryptionTutorial.swift
//  AgentCipher
//
//  Created by Ved Pahune on 18/04/23.
//

import SwiftUI

struct AESEncryptionTutorial: View {
    var body: some View {
        ZStack{
            Color(.init(red: 0.114, green: 0.114, blue: 0.114, alpha: 1)).edgesIgnoringSafeArea(.all)
            VStack{
                
                Text("How to Encrypt & Decrypt Data?").font(.system(size: 40, weight: .light, design: .serif)).padding(.init(top:0, leading: 0, bottom: 1, trailing: 0))
                
                Text("(Using AES-GCM)").font(.system(size: 20, weight: .light, design: .serif)).padding(.top)
                VStack {
                    
                    Text("⦿ First we will import CryptoKit").font(.system(size: 25, weight: .light, design: .serif)).padding(.top,40)
                    HStack {
                        Text("import").foregroundColor(.blue)
                        Text("CryptoKit")
                    }.padding(.all)
                    Text("When we import CryptoKit, we gain access to a set of Swift types and functions that allow us to perform cryptographic operations in our code. ").font(.system(size: 14, weight: .ultraLight, design: .serif)).padding(.init(top: 0, leading: 20, bottom: 40, trailing: 20)).foregroundColor(.gray)
                    
                    Text("⦿ Write message and genrate a key").foregroundColor(.white).font(.system(size: 25, weight: .light, design: .serif))
                    Text("The key variable generates a 256-bit symmetric key, which you can use to encrypt and decrypt data.").foregroundColor(.gray)
                        .font(.system(size: 14, weight: .ultraLight, design: .serif)).padding(.init(top: 1, leading: 20, bottom:0, trailing: 20))
                    Image("import")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 300, height: 60)
                        .padding(.bottom, 20)
                        .padding(.horizontal, 20)
                    
                    
                    Text("⦿ Encryption:").foregroundColor(.white).font(.system(size: 25, weight: .light, design: .serif))
                    
                    
                    
                    Image("encrypt")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 700, height: 120)
                        .padding(.bottom, 20)
                        .padding(.horizontal, 20)
                    
                    Text("⦿ The sealedBox variable holds the encrypted message, along with the nonce and authentication tag that were generated during encryption.\n ⦿ The nonce is a random value that is used to ensure that each encrypted message is unique.\n ⦿ The tag is an authentication code that is used to ensure that the encrypted message has not been tampered with.").foregroundColor(.gray)
                        .font(.system(size: 14, weight: .ultraLight, design: .serif)).padding(.init(top: 1, leading: 30, bottom:50, trailing: 30))

                }
                
                NavigationLink(destination: AESEncryptionTutorialTwo()) {
                    Text("Next")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding(EdgeInsets(top: 10, leading: 25, bottom: 10, trailing: 25))
                        .background(Color.blue)
                        .cornerRadius(10)
                    
                }
            }
            
        }.foregroundColor(.white)
    }
}


struct AESEncryptionTutorial_Previews: PreviewProvider {
    static var previews: some View {
        AESEncryptionTutorial()
    }
}
