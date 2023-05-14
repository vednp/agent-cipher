
import Foundation
import SwiftUI
import SPConfetti

struct MissionTwoCode: View {
    
    @State var progress: CGFloat = 0
    @State var characters: [HashCharacter] = hashCharacters_
    
    
    @State var shuffledRows: [[HashCharacter]] = []
    
    @State var rows: [[HashCharacter]] = []
    @State var animateWrongText: Bool = false
    @State var droppedCount: CGFloat = 0{
        didSet {
            if droppedCount == 4 {
                isPresenting = true
            }
        }
    }
    @State private var isPresenting = false
    var body: some View{
        ZStack{
            Color(.init(red: 0.05, green: 0.07, blue: 0.09, alpha: 1.00)).edgesIgnoringSafeArea(.all)
            VStack(spacing: 15){
                NavBar()
                VStack(alignment: .leading, spacing: 30) {
                    Text("Arrange the following code in correct order:").foregroundColor(.white)
                        .font(.title2.bold())
                    
                    
                    DropArea().padding(.vertical,30)
                    HStack {
                        Image(systemName: "hand.draw.fill")
                        Text("Drag and drop the elements")
                    }.frame(maxWidth: .infinity, alignment: .center).foregroundColor(.white)
                    DragArea()
                    
                    
                }.padding(.top,30).offset(x: animateWrongText ? -30 : 0)
                
                Spacer()
                HStack {
                    
                    Group {
                        Button(" ", action: {
                            if droppedCount == 4{
                                isPresenting.toggle()}
                            
                        })
                        .confetti(isPresented: $isPresenting,
                                  animation: .fullWidthToDown,
                                  particles: [.triangle, .arc],
                                  duration: 3.0).padding()
                            .background(Color(red: 0.00, green: 0.30, blue: 0.81))
                            .foregroundColor(.white).cornerRadius(10).opacity(0)
                    }
                    
                    
                    NavigationLink(destination: SaltHashTutorial()) {
                        Text("Next")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding(EdgeInsets(top: 15, leading: 35, bottom: 15, trailing: 35))
                            .background(Color.blue)
                            .cornerRadius(10)
                    }.padding(.trailing,60)
                    
                }.padding(.bottom,50)
                
                
                
                
                
            }.foregroundColor(.cyan)
                .padding().onAppear {
                    if rows.isEmpty{
                        
                        characters = characters.shuffled ()
                        shuffledRows = generateGrid()
                        characters = hashCharacters_
                        rows = generateGrid()
                    }
                }
        }
        
    }
    @ViewBuilder
    func DropArea() -> some View{
        VStack(spacing:12){
            ForEach($rows, id: \.self){$row in
                VStack(spacing:10){
                    ForEach($row){$item in
                        Text(item.value)
                            .font(.system(size: item.fontSize))
                            .padding(.vertical, 5)
                            .padding(.horizontal, item.padding)
                            .opacity(item.isShowing ? 1 : 0)
                            .background{
                                RoundedRectangle(cornerRadius: 6, style: .continuous)
                                    .fill(item.isShowing ? .clear : .gray.opacity(0.25))
                            }
                            .background{
                                RoundedRectangle(cornerRadius: 6, style: .continuous)
                                    .stroke(.gray)
                                    .opacity(item.isShowing ? 1 : 0 )
                            }
                            .onDrop(of: [.url], isTargeted: .constant(false)) {
                                providers in
                                if let first = providers.first{
                                    let _ = first.loadObject(ofClass: URL.self) {
                                        value, error in
                                        guard let url = value else{return}
                                        if item.id == "\(url)"{
                                            droppedCount += 1
                                            let progress = (droppedCount/CGFloat(characters.count))
                                            withAnimation{
                                                item.isShowing = true
                                                updateShuffledArray(character: item)
                                                self.progress = progress
                                            }
                                        }
                                        else{
                                            animateView()
                                        }
                                    }
                                }
                                return false
                            }
                    }
                }
                
                if rows.last != row{
                    Divider ()
                }
            }
            
        }
    }
    
    @ViewBuilder
    func DragArea() -> some View{
        VStack(spacing:12){
            ForEach(shuffledRows, id: \.self){row in
                HStack(spacing:10){
                    ForEach(row){item in
                        Text(item.value)
                            .font(.system(size: item.fontSize))
                            .padding(.vertical, 5)
                            .padding(.horizontal, item.padding)
                            .background{
                                RoundedRectangle(cornerRadius: 6, style: .continuous).stroke(.gray)
                            }
                            .onDrag{
                                return .init(contentsOf: URL(string: item.id))!
                            }
                            .opacity(item.isShowing ? 0 : 1 )
                            .background{
                                RoundedRectangle(cornerRadius: 6, style: .continuous)
                                    .fill(item.isShowing ? .gray.opacity(0.25) : .clear )
                            }
                        
                    }
                }
                if shuffledRows.last != row{
                    Divider ()
                }
                
            }
            
        }
    }
    
    
    
    
    @ViewBuilder
    func NavBar() -> some View{
        HStack(spacing: 18) {
            Button {
            } label: {
                Image(systemName: "xmark")
                    .font(.title3)
                    .foregroundColor(.gray)
            }
            GeometryReader{proxy in
                ZStack(alignment: .leading){
                    Capsule().fill(.gray.opacity(0.25))
                    Capsule()
                        .fill(Color(.init(red: 0.56, green: 0.93, blue: 0.56, alpha: 1.00)))
                        .frame(width: proxy.size.width * progress)
                }
            }.frame(height:20)
            Button {
            } label: {
                Image(systemName: "suit.heart.fill")
                    .font(.title3)
                    .foregroundColor(.red)
            }
        }
        
    }
    
    
    func generateGrid() -> [[HashCharacter]]{
        
        for item in characters.enumerated() {
            let textSize = textSize(character: item.element)
            characters[item.offset].textSize = textSize
        }
        var gridArray: [[HashCharacter]] = []
        var tempArray: [HashCharacter] = []
        
        var currentWidth: CGFloat = 0
        
        let totalScreenWidth: CGFloat = UIScreen.main.bounds.width - 30
        
        for character in characters {
            currentWidth += character.textSize
            if currentWidth < totalScreenWidth{
                tempArray.append (character)
            }
            else{
                gridArray.append(tempArray)
                tempArray = []
                currentWidth = character.textSize
                tempArray.append(character)
            }
        }
        
        if !tempArray.isEmpty{
            gridArray.append (tempArray)
        }
        return gridArray
    }
    
    
    func textSize(character: HashCharacter)->CGFloat {
        let font = UIFont.systemFont(ofSize: character.fontSize)
        let attributes = [NSAttributedString.Key.font : font]
        let size = (character.value as NSString).size(withAttributes: attributes)
        
        return size.width + (character.padding * 2) + 15
    }
    
    
    func updateShuffledArray (character: HashCharacter) {
        for index in shuffledRows.indices{
            for subIndex in shuffledRows [index].indices{
                if shuffledRows[index][subIndex].id == character.id{
                    shuffledRows [index][ subIndex].isShowing = true
                }
            }
        }
    }
    
    
    func animateView(){
        withAnimation( .interactiveSpring(response: 0.3, dampingFraction: 0.2,blendDuration: 0.2)){
            animateWrongText = true
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
            withAnimation( .interactiveSpring(response: 0.3, dampingFraction: 0.2,blendDuration: 0.2)){
                animateWrongText = false
            }
        }
    }
}
struct MissionTwo: PreviewProvider {
    static var previews: some View {
        MissionTwoCode()
    }
}
