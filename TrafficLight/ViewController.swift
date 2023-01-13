//
//  ViewController.swift
//  TrafficLight
//
//  Created by Ivan on 13.01.2023.
//

import UIKit

enum ColourLight {
    case red, yellow, green
}

class ViewController: UIViewController {

    @IBOutlet var redColour: UIView!
    @IBOutlet var yellowColour: UIView!
    @IBOutlet var greenColour: UIView!
    
    @IBOutlet var changeButtom: UIButton!
    
    private var colourLight = ColourLight.red
    private let lightIsOn: CGFloat = 1
    private let lightIsOff: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .black
        
        redColour.layer.cornerRadius = 50
        yellowColour.layer.cornerRadius = 50
        greenColour.layer.cornerRadius = 50
        
        redColour.alpha = lightIsOff
        yellowColour.alpha = lightIsOff
        greenColour.alpha = lightIsOff
        
        changeButtom.layer.cornerRadius = 10
        // Do any additional setup after loading the view.
    }

    @IBAction func controlButton() {
        
        changeButtom.setTitle("Next", for: .normal)
        
        switch colourLight {
        case .red:
            greenColour.alpha = lightIsOff
            redColour.alpha = lightIsOn
            colourLight = .yellow
        case .yellow:
            redColour.alpha = lightIsOff
            yellowColour.alpha = lightIsOn
            colourLight = .green
        case .green:
            yellowColour.alpha = lightIsOff
            greenColour.alpha = lightIsOn
            colourLight = .red
        }
    }
    
}

