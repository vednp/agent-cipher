import SwiftUI
import CryptoKit

struct MissionOneView: View {
    
    var body: some View {
        ZStack{
            Color(.init(red: 0.114, green: 0.114, blue: 0.114, alpha: 1)).edgesIgnoringSafeArea(.all)
            VStack{
                VStack{
                    Text("# Mission One").font(.system(size: 40, weight: .light, design: .serif)).padding(.top,350).frame(height:200 ).foregroundColor(.white)
                }
                VStack(spacing: 50) {
                    
                    Spacer()
                    ZStack {
                        AnimationView(name:"dial").frame(width: 600, height: 600)
                        Text("Agent Cipher needs to encrypt a secret message and send it to headquarters.")
                            .font(.title)
                            .multilineTextAlignment(.center)
                            .padding(.init(.init(top: 500, leading: 35, bottom: 0, trailing: 0)))
                    }
                    
                    Text("Complete the program that encrypts the following message using AES-GCM encryption ")
                        .font(.headline)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal,40)
                    
                    Text("\"The quick brown fox jumps over the lazy dog.\"")
                        .font(.title3)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                    Spacer()
                    
                    
                    NavigationLink(destination: MissionOneCode()) {
                        Text("Let's Code")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding(EdgeInsets(top: 10, leading: 25, bottom: 10, trailing: 25))
                            .background(Color.blue)
                            .cornerRadius(10)
                        
                    }.frame(width: 200, height: 200)
                }.foregroundColor(.white).padding(.bottom,200)
            }
        }
    }
    
}

struct MissionView: PreviewProvider {
    static var previews: some View {
        MissionOneView()
    }
}
