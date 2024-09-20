//
//  SignUpViewController.swift
//  MePones
//
//  Created by Mañanas on 20/9/24.
//

import UIKit
import FirebaseAuth


class SignUpViewController: UIViewController {
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    /*
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
     */
    
    
    @IBAction func signUp(_ sender: Any) {
        let username = usernameTextField.text!
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
    
    
    @IBAction func backToLogin(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true)
    }
}
