//
//  ViewController.swift
//  HelloApp
//
//  Created by Instructor on 06/12/2017.
//  Copyright © 2017 Instructor. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var inputTextField: UITextField!
    @IBOutlet weak var helloLabel: UILabel!
    @IBOutlet weak var rocketImage: UIImageView!
    
    @IBAction func enterAction(_ sender: Any) {
        nameLabel.text = "Hi " + inputTextField.text!
        UIView.animate(withDuration: 1, animations: {
            self.rocketImage.frame.origin.y = 50
        }) { (_) in
            self.helloLabel.alpha = 1
        }
    }
    
    
    @IBAction func refreshPress(_ sender: Any) {
        nameLabel.text = "輸入你的名字"
        inputTextField.text = ""
        self.rocketImage.frame.origin.y = 530
        self.helloLabel.alpha = 0
    }
    
}

