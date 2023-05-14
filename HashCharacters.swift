import Foundation
import SwiftUI

struct HashCharacter: Identifiable, Hashable, Equatable{
    var id = UUID().uuidString
    var value: String
    var padding: CGFloat = 10
    var textSize: CGFloat = .zero
    var fontSize: CGFloat = 19
    var isShowing: Bool = false
}

var hashCharacters_: [HashCharacter] = [
HashCharacter (value: "import CryptoKit"),
HashCharacter (value: "let inputData = \"mypassword\".data(using: .utf8)!"),
HashCharacter (value: "let hash = SHA256.hash(data: inputData)"),
HashCharacter (value: "let hashHex = hash.map { String(format: \"%02x\", $0) }.joined()"),
]

