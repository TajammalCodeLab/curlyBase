//
//  Button.swift
//  curlyBase
//
//  Created by SID on 31/10/2024.
//

import UIKit
import Lottie

class Button: UIButton {
    var btnTitle: String?
    var loadingView = LottieAnimationView(name: "btnLoading")
    
    
    var isLoading: Bool = false {
        didSet {
            loadingView.stop()
            isUserInteractionEnabled = !isLoading 
            if isLoading {
                btnTitle = title(for: .normal)
                loadingView.play()
            }
            loadingView.isHidden = !isLoading
            setTitle(isLoading ? nil : btnTitle, for: .normal)
        }
    }
    
    private func setUp() {
        addSubview(loadingView)
        loadingView.translatesAutoresizingMaskIntoConstraints = false
        animationSetUp()
        NSLayoutConstraint.activate([
            loadingView.centerXAnchor.constraint(equalTo: centerXAnchor),
            loadingView.centerYAnchor.constraint(equalTo: centerYAnchor),
            loadingView.heightAnchor.constraint(equalToConstant: 200),
        ])
        
    }
    
    private func animationSetUp(){
        loadingView.isUserInteractionEnabled = false
        loadingView.loopMode = .loop
        loadingView.isHidden = true
    }
    
    
    init() {
        super.init(frame: .zero)
        setUp()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
