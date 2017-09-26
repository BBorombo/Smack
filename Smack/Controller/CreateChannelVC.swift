//
//  CreateChannelVC.swift
//  Smack
//
//  Created by Erwan Rombo on 26/09/2017.
//  Copyright © 2017 Borombo. All rights reserved.
//

import UIKit

class CreateChannelVC: UIViewController {

    @IBOutlet weak var usernameText: UITextField!
    @IBOutlet weak var descriptionText: UITextField!
    @IBOutlet weak var createChannelButton: RoundedButton!
    @IBOutlet weak var bgView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    func setupView(){
        let tap = UITapGestureRecognizer(target: self, action: #selector(CreateChannelVC.handleTap))
        view.addGestureRecognizer(tap)
        usernameText.attributedPlaceholder = NSAttributedString(string: "Username", attributes: [NSAttributedStringKey.foregroundColor: smackPurplePlaceholder])
        descriptionText.attributedPlaceholder = NSAttributedString(string: "Description", attributes: [NSAttributedStringKey.foregroundColor: smackPurplePlaceholder])
    }
    
    @IBAction func createChannelPressed(_ sender: Any){
        guard let channelName = usernameText.text, usernameText.text != "" else {return}
        guard let channelDesc = descriptionText.text, descriptionText.text != "" else {return}
        SocketService.instance.addChannel(channelName: channelName, channelDescription: channelDesc) { (success) in
            if  success {
                self.dismiss(animated: true, completion: nil)
            }
        }
    }
    
    @objc func handleTap(){
        self.dismiss(animated: true, completion: nil)
    }

    @IBAction func closePressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
