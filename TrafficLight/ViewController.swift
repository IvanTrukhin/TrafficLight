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

    @IBOutlet var redColourView: UIView!
    @IBOutlet var yellowColourView: UIView!
    @IBOutlet var greenColourView: UIView!
    
    @IBOutlet var changeButton: UIButton!
    
    
    @IBOutlet var viewsCollections: [UIView]!
    
    private var colourLight = ColourLight.red
    private let lightIsOn: CGFloat = 1
    private let lightIsOff: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        // MARK: before refactoring
//        redColourView.layer.cornerRadius = 50
//        redColourView.layer.borderWidth = 4
//        redColourView.layer.borderColor = UIColor.black.cgColor
//        redColourView.alpha = lightIsOff
//
//        yellowColourView.layer.cornerRadius = 50
//        yellowColourView.layer.borderWidth = 4
//        yellowColourView.layer.borderColor = UIColor.black.cgColor
//        yellowColourView.alpha = lightIsOff
//
//        greenColourView.layer.cornerRadius = 50
//        greenColourView.layer.borderWidth = 4
//        greenColourView.layer.borderColor = UIColor.black.cgColor
//        greenColourView.alpha = lightIsOff
        
        // MARK: after refactoring
        func optimizationView(_ view: UIView) {
            view.layer.cornerRadius = 50
            view.layer.borderWidth = 4
            view.layer.borderColor = UIColor.black.cgColor
            view.alpha = lightIsOff
        }
        
//        optimizationView(redColourView)
//        optimizationView(yellowColourView)
//        optimizationView(greenColourView)
        
        for view in viewsCollections {
            optimizationView(view)
        }
        
        changeButton.layer.cornerRadius = 10
    }

    @IBAction func controlButton() {
        
        changeButton.setTitle("Next", for: .normal)
        
        switch colourLight {
        case .red:
            greenColourView.alpha = lightIsOff
            redColourView.alpha = lightIsOn
            colourLight = .yellow
        case .yellow:
            redColourView.alpha = lightIsOff
            yellowColourView.alpha = lightIsOn
            colourLight = .green
        case .green:
            yellowColourView.alpha = lightIsOff
            greenColourView.alpha = lightIsOn
            colourLight = .red
        }
    }
    
}

