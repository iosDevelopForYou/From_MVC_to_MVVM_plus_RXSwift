//
//  ProfileViewController.swift
//  ValidationRX_MVVM_EXample
//
//  Created by Marat Guseynov on 11.02.2024.
//

import UIKit

class ProfileViewController: UIViewController {
    
 
    
    private var messageLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Hi user!"
        return label
    }()
    
    private func layout() {
        
        view.addSubview(messageLabel)
    
        NSLayoutConstraint.activate([
            messageLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            messageLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
                        
        ])
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        layout() 
    }
    
}
