//
//  TutorialView.swift
//  AgentCipher
//
//  Created by Ved Pahune on 18/04/23.


import SwiftUI

struct TutorialView: View {
    var body: some View {
        ZStack{
            Color(.init(red: 0.05, green: 0.07, blue: 0.09, alpha: 1.00)).edgesIgnoringSafeArea(.all)
            VStack{
                

                Text("In this App we will be using Apple's CryptoKit framework that provides cryptographic services and functions for iOS, macOS, and other Apple platforms. It is designed to make it easier for developers to integrate secure cryptographic operations into their apps, such as encryption, decryption, digital signatures, and key management. ").font(.system(size: 20,weight: .light, design: .serif))
                Spacer()
                Text("What is CryptoKit?").font(.system(size: 50,weight: .light, design: .serif)).padding(.all)
               
                Text("Apple's Cryptokit provides a high-level interface for developers to access lower-level cryptographic functions, making it easier to use and more secure. It supports a range of cryptographic algorithms, including symmetric and asymmetric encryption, hash functions, and digital signatures. Cryptokit also provides support for key management and storage, making it easier for developers to securely manage keys for encryption and decryption operations.").font(.system(size: 20,weight: .light, design: .serif))
                Spacer()

                Text("Why is Cryptography Important?").font(.system(size: 50,weight: .light, design: .serif)).padding(.all)
                

                VStack(spacing: 20) {
                    Text("⦿ Cryptography, specifically encryption and decryption, is crucial in the digital age  to protect sensitive information from unauthorized access.")
                    Text("⦿ Cyber attacks and data breaches are becoming increasingly common, making it essential to ensure that confidential data such as passwords, financial transactions, and personal information remain secure.")
                    Text("⦿ Without cryptography, sensitive data could be intercepted and read by cybercriminals, leading to identity theft,financial loss, or other serious consequences ")
                    Text("⦿ Understanding encryption and decryption is important for individuals to better protect their own data and contribute to a more secure online environment.")
                    
                }
                .font(.system(size: 20,weight: .light, design: .serif)).padding(.bottom,50)
                        
               
            NavigationLink(destination: AESEncryptionTutorial()) {
                Text("Next")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding(EdgeInsets(top: 10, leading: 15, bottom: 10, trailing: 15))
                    .background(Color.blue)
                    .cornerRadius(10)
            }.padding(.bottom,30)
            }.foregroundColor(.white).padding(.init(top: 0, leading: 35,bottom: 0, trailing: 35))
        }
        
    }
}

struct TutorialView_Previews: PreviewProvider {
    static var previews: some View {
        TutorialView()
    }
}
