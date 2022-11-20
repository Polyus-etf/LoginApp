//
//  ViewController.swift
//  LoginApp
//
//  Created by Ирина on 19.11.2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet var loginTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    private var user: User?
    
    private let users = User.getUsers()
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tapBarVC = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tapBarVC.viewControllers else { return }
        viewControllers.forEach { viewController in
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.user = user
            } else if let infoVC = viewController as? InfoViewController {
                infoVC.user = user
            }
        }
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    @IBAction func forgotRegisteredData(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(title: "Oops!", message: "Your name is \(users[0].login) 😉")
        : showAlert(title: "Oops!", message: "Your password is \(users[0].password) 😉")
    }

        
    @IBAction func loginButton() {
        for user in users {
            if isValidUser(login: user.login, password: user.password) {
                self.user = user
                performSegue(withIdentifier: "showWelcomeVC", sender: nil)
                return
            }
        }
        showAlert(
            title: "Invalid login or password",
            message: "Please enter correct login and password",
            textField: passwordTextField)
    }
    
    private func isValidUser(login: String, password: String) -> Bool {
        guard loginTextField.text == login, passwordTextField.text == password else {
            return false
        }
        return true
    }
    
    @IBAction func unwind(for seque: UIStoryboardSegue) {
        loginTextField.text = ""
        passwordTextField.text = ""
    }
}

extension LoginViewController {
    private func showAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
