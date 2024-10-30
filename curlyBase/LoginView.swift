//
//  ViewController.swift
//  curlyBase
//
//  Created by SID on 31/10/2024.
//

import UIKit

class LoginView: UIViewController {

    let loginButton = UIButton()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Login"
        navigationController?.navigationBar.prefersLargeTitles = true
        self.view.backgroundColor = .systemBackground
        setupUI()
    }
    
    func setupUI() {
        view.addSubview(loginButton)
        loginButton.configuration = .filled()
        loginButton.configuration?.baseBackgroundColor = .systemPurple
        loginButton.configuration?.title = "Login"
        
        
        loginButton.addTarget(self, action: #selector(loginButtonTapped), for: .touchUpInside)
        
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            loginButton.topAnchor.constraint(equalTo: view.topAnchor,constant: 200),
            loginButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            loginButton.heightAnchor.constraint(equalToConstant: 50),
            loginButton.widthAnchor.constraint(equalToConstant: 100)
            
            ])
    }
    
    @objc func loginButtonTapped() {
        let productVC = ProductView()
        productVC.title = "product"
        navigationController?.pushViewController(productVC, animated: true)
        
    }


}

