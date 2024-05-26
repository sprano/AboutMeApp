//
//  LogInAllowedViewController.swift
//  AboutMeApp
//
//  Created by Sofi Prano on 26.05.2024.
//

import UIKit

final class LogInAllowedViewController: UIViewController {

    @IBOutlet var welcomeMessage: UILabel!
    @IBOutlet var logOutButton: UIButton!
    
    var correctUsername: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeMessage.text = "Welcome, \(String(correctUsername))"
    }
    
    @IBAction func logOutWasTapped() {
    }
    
}
