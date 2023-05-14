
import SwiftUI

struct HashingTutorial: View {
    
    var body: some View {
        ZStack{
            Color(.init(red: 0.114, green: 0.114, blue: 0.114, alpha: 1)).edgesIgnoringSafeArea(.all)
            ScrollView {
                VStack{
                    
                    Text("What is Hashing ?").font(.system(size: 40, weight: .light, design: .serif)).padding(.init(top:0, leading: 0, bottom: 1, trailing: 0))
                    
                    Text("Hashing is a process of converting data of arbitrary size into a fixed-size string of characters or bytes, typically represented as a hexadecimal or base64-encoded string").font(.system(size: 20, weight: .light, design: .serif)).padding(.horizontal).padding(.top)
                    Text("Hash functions are one-way functions, meaning that the original data cannot be easily retrieved from the hash value. Hashing is commonly used in various applications, such as password storage, data integrity verification, and digital signatures.").font(.system(size: 20, weight: .light, design: .serif)).padding(.horizontal).padding(.top)
                    VStack {
                        
                        Text("-> Import CryptoKit").font(.system(size: 25, weight: .light, design: .serif)).padding(.top,40)
                        HStack {
                            Text("import").foregroundColor(.blue)
                            Text("CryptoKit")
                        }.padding(.all)
                        Text("When we import CryptoKit, we gain access to a set of Swift types and functions that allow us to perform cryptographic operations in our code. ").font(.system(size: 14, weight: .ultraLight, design: .serif)).padding(.init(top: 0, leading: 20, bottom: 20, trailing: 20)).foregroundColor(.gray)
                        
                        Text("-> Define Input Data").foregroundColor(.white).font(.system(size: 25, weight: .light, design: .serif))
                        
                        Image("hashOne")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 500, height: 80)
                            .padding(.bottom, 0)
                            .padding(.horizontal, 20)
                        
                        Text("We first define the input data to be hashed as a Data object, which is created from the UTF-8 encoded string 'Hello, world!'").foregroundColor(.gray)
                            .font(.system(size: 14, weight: .ultraLight, design: .serif)).padding(.init(top: 1, leading: 20, bottom:20, trailing: 20))
                        Text("-> Generate Hash Value ").foregroundColor(.white).font(.system(size: 25, weight: .light, design: .serif))
                        
                        Image("hashTwoo")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 700, height: 100)
                            .padding(.vertical, 20)
                        
                        Text("-> Next, we use the SHA256 hash function from the CryptoKit framework to compute the SHA-256 hash of the input data. The resulting hash is a SHA256.Digest object.\n -> To convert the hash to a hexadecimal string, we use the 'map' function to iterate over each byte in the hash and convert it to a hexadecimal string then we then join the resulting array of hexadecimal strings using the joined() method").foregroundColor(.gray)
                            .font(.system(size: 14, weight: .ultraLight, design: .serif)).padding(.init(top: 1, leading: 20, bottom:20, trailing: 20)).lineSpacing(10)
                        
                        
                        
                        
                    
                        
                    }
                    
                    NavigationLink(destination: MissionTwoView()) {
                        Text("Next")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding(EdgeInsets(top: 10, leading: 25, bottom: 10, trailing: 25))
                            .background(Color.blue)
                            .cornerRadius(10)
                        
                    }.padding(.top,20)
                }
            }
        }.foregroundColor(.white)
    }
}

struct HashingTutorial_Previews: PreviewProvider {
    static var previews: some View {
        HashingTutorial()
    }
}
