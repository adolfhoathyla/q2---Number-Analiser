//
//  ViewController.swift
//  Number Analyser
//
//  Created by Adolfho Athyla on 04/12/16.
//  Copyright © 2016 a7hyla. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var numberTextField: UITextField!
    @IBOutlet var result: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        numberTextField.becomeFirstResponder()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func analyseNumber(_ sender: UIButton) {
        if let _ = numberTextField.text, let number = Int(numberTextField.text!) {
            var str = ""
            if NumberAnalyse.isEsoterico(number: number) {
                str += "É esotérico."
            }
            if NumberAnalyse.isCetico(number: number) {
                str += " É cético."
            }
            if NumberAnalyse.isPrimo(number: number) {
                str += " É primo."
            }
            
            result.text = str
            if result.isHidden { result.isHidden = false }
        }
    }

}

