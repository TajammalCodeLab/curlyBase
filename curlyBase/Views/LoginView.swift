//
//  ViewController.swift
//  curlyBase
//
//  Created by SID on 31/10/2024.
//

import UIKit
import Lottie

class LoginView: UIViewController {
    private let loginButton = Button()
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    private func setupUI() {
        title = "Login"
        navigationController?.navigationBar.prefersLargeTitles = true
        self.view.backgroundColor = .systemBackground
        
        // Set up the custom button
        loginButton.setTitle("Login", for: .normal)
        loginButton.setTitleColor(.white, for: .normal)
        loginButton.backgroundColor = .systemGray
        
        // Add the button to the view
        view.addSubview(loginButton)
        loginButton.addTarget(self, action: #selector(toggleLoading), for: .touchUpInside)
        
        // Set up constraints for the button
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            loginButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            loginButton.widthAnchor.constraint(equalToConstant: 200),
            loginButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    @objc private func toggleLoading() {
        // Start loading
        loginButton.isLoading = true
        
        // Delay for 5 seconds, then navigate
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) { [weak self] in
            // Stop loading
            self?.loginButton.isLoading = false
            
            // Navigate to ProductView

            let productViewController = ProductView()
            productViewController.title = "Product"
            self?.navigationController?.pushViewController(productViewController, animated: true)
        }
    }
}

