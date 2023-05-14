//
//  AgentAnimation.swift
//  AgentCipher
//
//  Created by Ved Pahune on 18/04/23.
//

import Foundation
import SwiftUI
import Lottie


struct AnimationView: UIViewRepresentable {
    let name: String
    var loopMode: LottieLoopMode = .loop
    var animationView = LottieAnimationView()
    
    func makeUIView(context: UIViewRepresentableContext<AnimationView>) -> UIView {
        let view = UIView(frame: .zero)
        animationView.animation = LottieAnimation.named(name)
        animationView.contentMode = .scaleAspectFit
        animationView.loopMode = loopMode
        animationView.play()
        animationView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(animationView)
        
        NSLayoutConstraint.activate([
            animationView.heightAnchor.constraint(equalTo: view.heightAnchor),
            animationView.widthAnchor.constraint(equalTo: view.widthAnchor)
        ])
        
        return view
    }
    
    func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<AnimationView>) {}
}
