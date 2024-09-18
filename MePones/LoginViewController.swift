//
//  ViewController.swift
//  MePones
//
//  Created by Mañanas on 13/9/24.
//

import UIKit
import FirebaseAuth

class LoginViewController: UIViewController {
    
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func signIn(_ sender: Any) {
        
        let username = userNameTextField.text!
        let password = passwordTextField.text!
        
        Auth.auth().signIn(withEmail: username, password: password) { authResult, error in
            
            if let error = error {
                print("Error al iniciar sesión")
                print(error.localizedDescription)
                return
            } else {
                print("Login correcto")
            }
        }
    }
    
    
    @IBAction func signUP(_ sender: Any) {
        let username = userNameTextField.text!
        let password = passwordTextField.text!
        
        Auth.auth().createUser(withEmail: username, password: password) { authResult, error in
            
            if let error = error {
                print("Error al crear usuario")
                print(error.localizedDescription)
                return
            } else {
                print("Registro correcto")
            }
        }
    }
}

