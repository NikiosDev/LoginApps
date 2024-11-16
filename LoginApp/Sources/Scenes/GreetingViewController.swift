//
//  GreetingViewController.swift
//  LoginApp
//
//  Created by Olga on 06.11.2024.
//

import UIKit

class GreetingViewController: UIViewController {
    @IBOutlet weak var greetingLabel: UILabel!
      
let loginVC = LoginViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
          let background = CAGradientLayer()
          background.colors = [UIColor.purple.cgColor, UIColor.orange.cgColor]
          background.frame = view.frame
          view.layer.insertSublayer(background, at: 0)
        
        greetingLabel.text = "Welcome, \(loginVC.userNameValue)!"
    }
    @IBAction func logOutButtonPressed() {
        dismiss(animated: true)
    }
    
    }

