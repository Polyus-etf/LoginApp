//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Ирина on 19.11.2022.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    var user: String!
    
    @IBOutlet var welcomeUILabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        gradient()
        welcomeUILabel.text = "Welcome, \(user ?? "")!"
    }
}

extension WelcomeViewController {
    private func gradient() {
        let color1 = CGColor(red: 193 / 255, green: 114 / 255, blue: 128 / 255, alpha: 1.0)
        let color2 = CGColor(red: 118 / 255, green: 152 / 255, blue: 222 / 255, alpha: 1.0)
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = self.view.bounds
        gradientLayer.colors = [color1, color2]
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradientLayer.endPoint = CGPoint(x: 0.0, y: 1.0)
        self.view.layer.insertSublayer(gradientLayer, at: 0)
    }
}
