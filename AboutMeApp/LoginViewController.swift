//
//  ViewController.swift
//  AboutMeApp
//
//  Created by Sofi Prano on 22.05.2024.
//

import UIKit

final class LoginViewController: UIViewController {
    
    //MARK: - IB Outlets
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    @IBOutlet var logInButton: UIButton!
    @IBOutlet var userNameHint: UIButton!
    @IBOutlet var passwordHint: UIButton!
    
    let login = "Sofia"
    let password = "12345"
    
    //MARK: - Override Functions
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let messageVC = segue.destination as? WelcomeViewController
        messageVC?.correctUsername = userNameTextField.text
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard userNameTextField.text == login, passwordTextField.text == password else {
            showAlert(withTitle: "Invalid login or password", andMessage: "Please, enter correct login and password")
            return false
        }
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        self.view.endEditing(true)
    }
    
    //MARK: - IB Actions
    @IBAction func showUserNameHint() {
        showAlert(withTitle: "Oops!", andMessage: "Your name is \(login)")
    }
    
    @IBAction func showPasswordHint() {
        showAlert(withTitle: "Oops!", andMessage: "Your password is \(password)")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
    
    //MARK: - Private functions
    private func showAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in self.passwordTextField.text = "" }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

