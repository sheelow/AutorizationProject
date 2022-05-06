//
//  ViewController.swift
//  AutorizationProject
//
//  Created by Sheeloff on 06.05.2022.
//

import UIKit

struct Users {
    let login: String
    let password: String
}

class ViewController: UIViewController {

    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var doneButton: UIButton!
    @IBOutlet weak var errorView: UIView!
    @IBOutlet weak var errorLabel: UILabel!
    
    
    let user: Users = Users(login: "Artem", password: "12345")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        errorLabel.isHidden = true
        errorView.backgroundColor = .clear
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "isAutorizeSegue" {
            if let nextViewController = segue.destination as? ViewController2 {
                    nextViewController.user = user
            }
        }
    }
    
    
    @IBAction func doneButtonTapped(_ sender: Any) {
        if checkToAutorize() {
            performSegue(withIdentifier: "isAutorizeSegue", sender: nil)
        } else {
            errorLogin()
        }
    }
    
    private func checkToAutorize() -> Bool {
        if loginTextField.text?.lowercased() == user.login.lowercased() && passwordTextField.text == user.password {
            return true
        } else {
            return false
        }
    }
    
    private func errorLogin() {
        errorLabel.isHidden = false
        errorLabel.textColor = .red
        errorLabel.text = "Неправильный логин или пароль"
//        errorView.backgroundColor = .red
    }
    
    
}

