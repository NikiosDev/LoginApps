//
//  LoginViewController.swift
//  LoginApp
//
//  Created by Olga on 05.11.2024.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var password: UITextField!
    
    let passwordValue = "123456"
    let userNameValue = "Pupa"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func hintOfName(_ sender: Any) {
        
    }
    
    @IBAction func hintOfPassword(_ sender: Any) {
        
    }
    
    @IBAction func logInButtonPressed(for segue: UIStoryboardSegue, sender: Any) {
        if userName.text == userNameValue, password.text == passwordValue {
            let greetingVC = segue.destination as? GreetingViewController
        } else {
            //            present(alert, animated: true, completion: nil)
        }
        
    }
    
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title,
                                      message: message,
                                      preferredStyle: .alert)
        
        
    }
    
}


