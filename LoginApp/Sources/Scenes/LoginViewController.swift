//
//  LoginViewController.swift
//  LoginApp
//
//  Created by Olga on 05.11.2024.
//

import UIKit

class LoginViewController: UIViewController {
    
    // MARK: - UI
    @IBOutlet weak var userNameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    // MARK: - Properties
            let userNameValue = "Pupa"
    private let passwordValue = "123456"
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Actions
    @IBAction func hintOfName(_ sender: Any) {
        
        showAlert(title: "Oops!",message: "Your name is Pupa")
        
    }
    
    @IBAction func hintOfPassword(_ sender: Any) {
        showAlert(title: "Oops!",message: "Your password is 123456")
    }
    
    @IBAction func loginButtonPressed() {
        
        guard userNameTF.text == userNameValue && passwordTF.text == passwordValue else {
            showAlert(title: "Access denied",message: "Wrong login or password")
            return
        }
    }
}

// MARK: - Alert
private extension LoginViewController {
    func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title,
                                      message: message,
                                      preferredStyle: .alert)
        
        let okButton = UIAlertAction(title: "Ok", style: .default)
        
        alert.addAction(okButton)
        
        present(alert, animated: true)
    }
}
