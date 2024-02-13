//
//  UITextField + Extension.swift
//  ValidationRX_MVVM_EXample
//
//  Created by Marat Guseynov on 11.02.2024.
//



import UIKit

//MARK: - установка отступов в текстфилдах логина и пароля путем вызова функции в настройках самих текстфилдов на контроллере LogInViewController

extension UITextField {
    
    func setLeftPaddingPoints(_ amount:CGFloat){
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: amount, height: self.frame.size.height))
        self.leftView = paddingView
        self.leftViewMode = .always
    }
    
    func setRightPaddingPoints(_ amount:CGFloat) {
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: amount, height: self.frame.size.height))
        self.rightView = paddingView
        self.rightViewMode = .always
    }
}

//MARK: - расширение с анимациями

extension LogInViewController {
    
    //анимация обработки нажатия на кнопку Log in
    @objc func touchDown() {
        UIView.animate(withDuration: 0.5) {
            self.loginButton.setTitle("", for: .normal)
            self.loginButton.alpha = 0.4
        }
    }
    
    @objc func touchUp() {
        UIView.animate(withDuration: 0.5) {
            self.loginButton.alpha = 1.0
            self.loginButton.setTitle("Log in", for: .normal)
        }
    }
    
    //анимация потряхивания текстфилдов в ответ на пустые поля
    func shakeAnimationLoginTextField() {
        let animation = CABasicAnimation(keyPath: "position")
        animation.duration = 0.07
        animation.repeatCount = 2
        animation.autoreverses = true
        animation.fromValue = NSValue(cgPoint: CGPoint(x: loginTextField.center.x - 10, y: loginTextField.center.y))
        animation.toValue = NSValue(cgPoint: CGPoint(x: loginTextField.center.x + 10, y: loginTextField.center.y))
        
        loginTextField.layer.add(animation, forKey: "position")
    }
    
    func shakeAnimationPasswordTextField() {
        let animation = CABasicAnimation(keyPath: "position")
        animation.duration = 0.07
        animation.repeatCount = 2
        animation.autoreverses = true
        animation.fromValue = NSValue(cgPoint: CGPoint(x: passwordTextField.center.x - 10, y: passwordTextField.center.y))
        animation.toValue = NSValue(cgPoint: CGPoint(x: passwordTextField.center.x + 10, y: passwordTextField.center.y))
        
        passwordTextField.layer.add(animation, forKey: "position")
    }
    
}

