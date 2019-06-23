//
//  ViewController.swift
//  JustHealthMajorProject
//
//  Created by Sophie Novak on 26/04/2019.
//  Copyright © 2019 Sophie Novak. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var genderCollection: [UIButton]!
    
    @IBOutlet weak var heightTxtBox: UITextField!
    @IBOutlet weak var weightTxtBox: UITextField!
    @IBOutlet weak var ageTxtBox: UITextField!
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    
    @IBAction func bmiButton(_ sender: Any) {
        
        let theheight = Double(heightTxtBox.text!)
        
        let theweight = Double(weightTxtBox.text!)
        
        let bmiValue = Double(theweight!/(theheight! * 2))
        
        bmiLabel.text = "\(bmiValue)"
        
        if bmiValue < 18.5 {
            categoryLabel.text = "You are underweight"
        }
        
        if bmiValue > 25.0 {
            categoryLabel.text = "You are overweight"
        }
        
        if bmiValue > 18.5 && bmiValue < 25.0 {
            categoryLabel.text = "You are a healthy weight"
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

