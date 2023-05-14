import SwiftUI

struct Character: Identifiable, Hashable, Equatable{
    var id = UUID().uuidString
    var value: String
    var padding: CGFloat = 10
    var textSize: CGFloat = .zero
    var fontSize: CGFloat = 19
    var isShowing: Bool = false
}

var characters_: [Character] = [
Character (value: "import CryptoKit"),
Character (value: "let message = \"The quick brown fox jumps over the lazy dog.\""),
Character (value: "let key = SymmetricKey(size: .bits256)"),
Character (value: "let sealedBox = try AES.GCM.seal(message.data(using: .utf8)!, using: key)"),
Character (value:"let encryptedData = sealedBox.ciphertext"),
Character (value:"let nonce = sealedBox.nonce"),
Character (value:"let tag = sealedBox.tag"),
]


