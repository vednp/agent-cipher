import SwiftUI

struct ConclusionView: View {
    var body: some View {
        ZStack{
            Color(.init(red: 0.05, green: 0.07, blue: 0.09, alpha: 1.00)).edgesIgnoringSafeArea(.all)
            VStack{
                Text("Hi there, thanks for helping me.")
                    .foregroundColor(.white)
                    .font(.system(size: 40, weight: .bold, design: .serif)).lineSpacing(10).padding(.all).padding(.top,20)
                AnimationView(name:"agent").frame(width: 400,height: 630)
                Spacer()
                
                VStack {
                    Text("Hi 👋 I'm Ved Pahune")
                        .foregroundColor(.white)
                        .font(.system(size: 35, weight: .bold, design: .serif)).lineSpacing(10).padding(.all)
                    
                    Text("And you just completed exploring my Swift Playground app!")
                        .foregroundColor(.white)
                        .font(.system(size: 25, weight: .bold, design: .serif)).lineSpacing(10).padding(.all)
                    
                    Text("I hope this was a fun experience for you! ")
                        .foregroundColor(.white)
                        .font(.system(size: 25, weight: .bold, design: .serif)).lineSpacing(10).padding(.all)
                    Text("Looking forward to a fun WWDC week this year!")
                        .foregroundColor(.green)
                        .font(.system(size: 25, weight: .bold, design: .serif)).lineSpacing(10).padding(.all)
                    Text("Thank you & Cheers!")
                        .foregroundColor(.yellow)
                        .font(.system(size: 25, weight: .bold, design: .serif)).lineSpacing(10).padding(.all).padding(.bottom,20)
                }.padding(.bottom,30)
            }
           
        }
    }
}

struct ConclusionView_Previews: PreviewProvider {
    static var previews: some View {
        ConclusionView()
    }
}
