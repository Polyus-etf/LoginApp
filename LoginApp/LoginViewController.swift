//
//  ViewController.swift
//  LoginApp
//
//  Created by Ирина on 19.11.2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    let user = "User"
    let password = "q1234"

    @IBOutlet var userTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.user = user
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    @IBAction func forgotNameButton() {
        showAlert(
            with: "Oops!",
            and: "Your name is \(user) 😉"
        )
    }
    
    @IBAction func forgotPasswordButton() {
        showAlert(
            with: "Oops!",
            and: "Your password is \(password) 😉"
        )
    }
        
    @IBAction func loginButton() {
        let user = userTextField.text ?? ""
        let password = passwordTextField.text ?? ""
        if user != self.user || password != self.password {
            showAlert(
                with: "Invalid login or password",
                and: "Please enter correct login and password",
                do: true)
        }
    }
    
    @IBAction func unwind(for seque: UIStoryboardSegue) {
        userTextField.text = ""
        passwordTextField.text = ""
    }
}

extension LoginViewController {
    private func showAlert(with title: String, and message: String, do erase: Bool = false) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            if erase {
                self.passwordTextField.text = ""
            }
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
