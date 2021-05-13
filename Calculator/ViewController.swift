//
//  ViewController.swift
//  Calculator
//
//  Created by Yamaguchi Kyoya on 2021/05/13.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var resultLabel: UILabel!
    var num1 = 0.0
    var num2 = 0.0
    var num3 = 0.0
    var ope: Ope = .plus
    
    enum Ope: Int {
        case plus, minus, times, divide
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func pressNumButton(_ sender: UIButton) {
        num1 = num1 * 10 + Double(sender.tag)
        resultLabel.text = String(num1)
    }
    
    @IBAction func opeButton(_ sender: UIButton) {
        num2 = num1
        num1 = 0
        ope = Ope(rawValue: sender.tag)!
    }
    
    @IBAction func equal() {
        switch ope {
        case .plus:
            num3 = num2 + num1
        case .minus:
            num3 = num2 - num1
        case .times:
            num3 = num2 * num1
        case .divide:
            num3 = num2 / num1
        }
        resultLabel.text = String(num3)
    }

    @IBAction func clear() {
        resultLabel.text = "0"
        num1 = 0
        num2 = 0
        num3 = 0
    }
}

