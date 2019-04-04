//
//  ViewController.swift
//  UITextField 03
//
//  Created by D7702_09 on 2019. 4. 4..
//  Copyright © 2019년 csd5766. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UITextFieldDelegate{

    @IBOutlet weak var myTextField: UITextField!
    
    @IBOutlet weak var myLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        myTextField.delegate = self
       myTextField.clearButtonMode = UITextField.ViewMode.always
    }

    @IBAction func buttonPressed(_ sender: Any) {
        let inString = myTextField.text
        print(inString!)
        myLabel.text = inString
        myTextField.text = ""
        myTextField.resignFirstResponder()
    }
    public func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        myTextField.resignFirstResponder()
        myTextField.backgroundColor = UIColor.yellow
        return true
    }
    public func textFieldShouldClear(_ textField: UITextField) -> Bool {
        view.backgroundColor = UIColor.green
        return true
}

}
