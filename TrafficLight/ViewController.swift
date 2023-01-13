//
//  ViewController.swift
//  TrafficLight
//
//  Created by Ivan on 13.01.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redColour: UIView!
    @IBOutlet var yellowColour: UIView!
    @IBOutlet var greenColour: UIView!
    
    @IBOutlet var changeButtom: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redColour.layer.cornerRadius = 50
        yellowColour.layer.cornerRadius = 50
        greenColour.layer.cornerRadius = 50
        changeButtom.layer.cornerRadius = 20
        // Do any additional setup after loading the view.
    }

    @IBAction func controlButton() {
    }
    
}

