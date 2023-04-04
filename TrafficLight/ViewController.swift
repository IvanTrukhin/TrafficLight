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
    
    @IBOutlet var changeButton: UIButton!
    
    private var colourLight = ColourLight.red
    private let lightIsOn: CGFloat = 1
    private let lightIsOff: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        redColour.layer.cornerRadius = 50
        redColour.layer.borderWidth = 4
        redColour.layer.borderColor = UIColor.black.cgColor
        redColour.alpha = lightIsOff
        
        yellowColour.layer.cornerRadius = 50
        yellowColour.layer.borderWidth = 4
        yellowColour.layer.borderColor = UIColor.black.cgColor
        yellowColour.alpha = lightIsOff
        
        greenColour.layer.cornerRadius = 50
        greenColour.layer.borderWidth = 4
        greenColour.layer.borderColor = UIColor.black.cgColor
        greenColour.alpha = lightIsOff
        
        changeButton.layer.cornerRadius = 10
        // Do any additional setup after loading the view.
    }

    @IBAction func controlButton() {
        
        changeButton.setTitle("Next", for: .normal)
        
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

