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
    
    var login = "Sofia"
    var password = "12345"
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let messageVC = segue.destination as? LogInAllowedViewController
        messageVC?.correctUsername = userNameTextField.text
    }
    
    @IBAction func logInWasTapped() {
        if userNameTextField.text == login && passwordTextField.text == password {
        } else {
            showAlert(withTitle: "Invalid login or password", andMessage: "Please, enter correct login and password")
        }
    }
    
    @IBAction func showUserNameHint() {
        showAlert(withTitle: "Oops!", andMessage: "Your name is \(login)")
    }
    
    @IBAction func showPasswordHint() {
        showAlert(withTitle: "Oops!", andMessage: "Your password is \(password)")
    }
    
    private func showAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in self.userNameTextField.text = ""; self.passwordTextField.text = "" }
        alert.addAction(okAction)
        present(alert, animated: true)
    }

}

