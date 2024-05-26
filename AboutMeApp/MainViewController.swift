//
//  ViewController.swift
//  AboutMeApp
//
//  Created by Sofi Prano on 22.05.2024.
//

import UIKit

final class MainViewController: UIViewController {
    
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    @IBOutlet var logInButton: UIButton!
    @IBOutlet var userNameHint: UIButton!
    @IBOutlet var passwordHint: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func logInWasTapped() {
        if userNameTextField.text == "sofia" && passwordTextField.text == "12345" {
            print("correct")
        } else {
            showAlert(withTitle: "Invalid login or password", andMessage: "Please, enter correct login and password")
        }
    }
    
    @IBAction func showUserNameHint() {
        showAlert(withTitle: "Oops!", andMessage: "Your name is sofia")
    }
    
    @IBAction func showPasswordHint() {
        showAlert(withTitle: "Oops!", andMessage: "Your password is 12345")
    }
    
    private func showAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in self.userNameTextField.text = ""; self.passwordTextField.text = "" }
        alert.addAction(okAction)
        present(alert, animated: true)
    }

}

