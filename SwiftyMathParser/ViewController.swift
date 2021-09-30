//
//  ViewController.swift
//  SwiftyMathParser
//
//  Created by Jared Kozar on 9/27/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let parser = Parser.parseEquation(equation: "3.8^(4/3)+4")
        
        print(parser)
    }


}

