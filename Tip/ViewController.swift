//
//  ViewController.swift
//  Tip
//
//  Created by 施馨檸 on 09/11/2017.
//  Copyright © 2017 施馨檸. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var moneyTextField: UITextField!
    @IBOutlet weak var percentTextField: UITextField!
    
    @IBOutlet weak var showLabel: UILabel!
    
    @IBAction func calculateButtonPressed(_ sender: Any) {
        view.endEditing(true)
        if moneyTextField.text == "" || percentTextField.text == "" {
            showLabel.text = "空格填完才幫你算！"
        } else {
            let tip = Double(moneyTextField.text!)! * Double(percentTextField.text!)! / 100
            showLabel.text = "小費：＄\(tip)"
        }
    }
    
    @IBAction func endEditing(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func clearButtonPressed(_ sender: Any) {
        moneyTextField.text = ""
        percentTextField.text = ""
        showLabel.text = ""
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

