//
//  LogInAllowedViewController.swift
//  AboutMeApp
//
//  Created by Sofi Prano on 26.05.2024.
//

import UIKit

final class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeMessage: UILabel!
    @IBOutlet var logOutButton: UIButton!
    
    var correctUsername: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addGradientBackground()
        welcomeMessage.text = "Welcome, \(String(correctUsername))!"
    }
    
    private func addGradientBackground() {
        let gradient = CAGradientLayer()
        gradient.frame = view.bounds
        gradient.colors = [
            UIColor.systemPink.cgColor,
            UIColor.systemBlue.cgColor
        ]
        view.layer.insertSublayer(gradient, at: 0)
    }
    
}
