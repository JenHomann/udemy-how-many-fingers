//
//  ViewController.swift
//  how-many-fingers
//
//  Created by Jen Homann on 11/15/17.
//  Copyright © 2017 Jen Homann. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var guessTF: UITextField!
    @IBOutlet var responseLabel: UILabel!
    
    @IBAction func guessButton(_ sender: UIButton) {
        let guess = guessTF.text
        let answer = arc4random_uniform(6)
        
        if guess != nil && guess?.rangeOfCharacter(from: CharacterSet.decimalDigits.inverted) == nil {
            if Int(guess!) == Int(answer) {
                responseLabel.text = "You're right!"
            } else {
                responseLabel.text = "Nope. It's not \(guess!). Try again."
            }
        } else {
            responseLabel.text = "You must enter a number to play."
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

