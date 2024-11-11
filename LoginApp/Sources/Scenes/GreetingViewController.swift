//
//  GreetingViewController.swift
//  LoginApp
//
//  Created by Olga on 06.11.2024.
//

import UIKit

class GreetingViewController: UIViewController {
    @IBOutlet weak var greetingLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let background = CAGradientLayer()
        background.colors = [UIColor.purple.cgColor, UIColor.blue.cgColor]
       background.frame = view.frame
        view.layer.insertSublayer(background, at: 0)
    }
    @IBAction func logOutButtonPressed() {
        dismiss(animated: true)
    }
}
