
import SwiftUI

struct SaltHashTutorial: View {
    var body: some View {
        
        ZStack{
            Color(.init(red: 0.114, green: 0.114, blue: 0.114, alpha: 1)).edgesIgnoringSafeArea(.all)
            ScrollView{
                VStack{
                    
                    Text("Hashing with Salt").font(.system(size: 40, weight: .light, design: .serif)).padding(.init(top:0, leading: 0, bottom: 20, trailing: 0))
                    
                    Text("A salt is a random sequence of data that is used as an additional input to a one-way function that 'hashes' data, a password or passphrase. A salt is used to safeguard passwords in storage in a process known as salted password hashing").font(.system(size: 20, weight: .light, design: .serif)).padding(.horizontal).padding(.all).lineSpacing(10)
                    Text("When a password is hashed with a salt value, the resulting hash value is unique to the combination of the password and the salt. This makes it much harder for attackers to crack the password because they can't use precomputed hash tables or rainbow tables. The attacker would need to perform a brute-force attack on each individual salted password, which can take a significant amount of time and computational resources.").font(.system(size: 20, weight: .light, design: .serif)).padding(.horizontal).padding(.all).lineSpacing(10)
                    VStack {
                        
                        Text("Why Hashing Is Not Sufficient").font(.system(size: 40, weight: .light, design: .serif)).padding(.all)
                        
                        Text(" If you think that just hashing your password would suffice, you are wrong. The reason why is a hashing algorithm does not inherently produce a unique string for the same password text each time it’s received. In other words, suppose your password looks like the example above (Password@1234). Each time the algorithm receives the same input string, it will always produce the same hash string (i.e. 0F1BA603C1A843A3D02D6C5038D8E959). This is not ideal because a hacker can launch a rainbow attack on your database to crack the passwords stored inside.").font(.system(size: 20, weight: .ultraLight, design: .serif)).padding(.init(top: 0, leading: 20, bottom: 40, trailing: 20)).lineSpacing(10)
                        
                        Text("Salt With Hashing").foregroundColor(.white).font(.system(size: 40, weight: .light, design: .serif))
                        Text("Our problem with hashing is fixed with a simple solution: using salt. Salt is a randomly generated, fixed-length value that is designed to be unique with each user password. Salt is appended with the current password string and fed into the hashing system to produce a newly hashed result every time a user creates a password. This means that if you and I have the same password, our hashed strings would be different. And since rainbow table attacks heavily depend on finding a match, it would render them useless.").lineSpacing(10)
                            .font(.system(size: 20, weight: .ultraLight, design: .serif)).padding(.init(top: 1, leading: 20, bottom:0, trailing: 20))
                        
                        Spacer()
                        NavigationLink(destination: ConclusionView()) {
                            Text("Next")
                                .font(.headline)
                                .foregroundColor(.white)
                                .padding(EdgeInsets(top: 10, leading: 25, bottom: 10, trailing: 25))
                                .background(Color.blue)
                                .cornerRadius(10)
                            
                        }.frame(width: 200, height: 200)
                        
                    }
                    
                    
                    
                }
                
            }.foregroundColor(.white)
        }
    }
}

struct SaltHashTutorial_Previews: PreviewProvider {
    static var previews: some View {
        SaltHashTutorial()
    }
}
