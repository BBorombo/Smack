//
//  CeateAccountVC.swift
//  Smack
//
//  Created by Erwan Rombo on 22/09/2017.
//  Copyright © 2017 Borombo. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {

    // Outlets
    @IBOutlet weak var userImg: UIImageView!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var usernameText: UITextField!
    
    // Variables
    var avatarName = "profileDefault"
    var avatarColor = "[0.5, 0.5, 0.5, 1]"
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func createAccountPressed(_ sender: Any) {
        guard let name = usernameText.text , usernameText.text != "" else {return}
        guard let email = emailText.text , emailText.text != "" else {return}
        guard let passw = passwordText.text , passwordText.text != "" else {return}
        
        AuthService.instance.registerUser(email: email, password: passw) { (success) in
            if success {
                print("registered user!")
                AuthService.instance.loginUser(email: email, password: passw, completion: { (succes) in
                    if success{
                        AuthService.instance.createUser(name: name, email: email, avatarName: self.avatarName, avatarColor: self.avatarColor, completion: { (success) in
                            if success {
                                print(UserDataService.instance.name, UserDataService.instance.avatarName)
                                self.performSegue(withIdentifier: UNWIND_TO_CHANNEL, sender: nil)
                            }
                        })
                        print("Logged in user !", AuthService.instance.authToken)
                    }
                })
            }
        }
    }
    
    @IBAction func pickAvatarPressed(_ sender: Any) {
    }
    
    @IBAction func pickBGColorPressed(_ sender: Any) {
    }
    
    @IBAction func closeButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: UNWIND_TO_CHANNEL, sender: nil)
    }
    

}
