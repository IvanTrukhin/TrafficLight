//
//  ViewController.swift
//  TrafficLight
//
//  Created by Ivan on 13.01.2023.
//

import UIKit
import SnapKit

//enum ColourLight {
//    case red, yellow, green
//}

class TrafficLightController: UIViewController {

    @IBOutlet var firstSectoinView: SectionTrafficLightView!
    @IBOutlet var secondSectionView: SectionTrafficLightView!
    @IBOutlet var thirdSectionView: SectionTrafficLightView!
    
//    let blueView = UIView(frame: .zero)
    
    @IBOutlet var changeButton: UIButton!
    
    @IBOutlet var redViewHeightConstraint: NSLayoutConstraint!
    
    
//    private var colourLight = ColourLight.red
//    private let lightIsOn: CGFloat = 1
//    private let lightIsOff: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstSectoinView.turnOff()
        secondSectionView.turnOff()
        thirdSectionView.turnOff()
        
        firstSectoinView.colorLight = .red
        secondSectionView.colorLight = .yellow
        thirdSectionView.colorLight = .green
    }
        
//        blueView.backgroundColor = .systemBlue
//        view.addSubview(blueView)
//
//        blueView.snp.makeConstraints { make in
//            make.centerX.equalToSuperview()
//            make.height.width.equalTo(120)
//            make.top.equalTo(thirdSectionView.snp.bottom).offset(44)
       
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
//        func optimizationView(_ view: UIView) {
//            view.layer.cornerRadius = redViewHeightConstraint.constant / 2
//            view.layer.borderWidth = 4
//            view.layer.borderColor = UIColor.black.cgColor
//            view.alpha = lightIsOff
//        }
//
//        optimizationView(firstSectoinView)
//        optimizationView(secondSectionView)
//        optimizationView(thirdSectionView)
//        optimizationView(blueView)
        
//        for view in viewsCollections {
//            optimizationView(view)
//        }
    

    @IBAction func controlButtonAction() {
        
        changeButton.setTitle("Next", for: .normal)
        changeButton.layer.cornerRadius = 10
//        switch colourLight {
//        case .red:
//            thirdSectionView.alpha = lightIsOff
//            firstSectoinView.alpha = lightIsOn
//            colourLight = .yellow
//        case .yellow:
//            firstSectoinView.alpha = lightIsOff
//            secondSectionView.alpha = lightIsOn
//            colourLight = .green
//        case .green:
//            secondSectionView.alpha = lightIsOff
//            thirdSectionView.alpha = lightIsOn
//            colourLight = .red
//        }
        
        if firstSectoinView.isOff() && secondSectionView.isOff() && thirdSectionView.isOff() {
            firstSectoinView.turnOn()
        } else if firstSectoinView.isOn() {
            firstSectoinView.turnOff()
            secondSectionView.turnOn()
        } else if secondSectionView.isOn() {
            secondSectionView.turnOff()
            thirdSectionView.turnOn()
        } else if thirdSectionView.isOn() {
            thirdSectionView.turnOff()
            firstSectoinView.turnOn()
            }
        
//        if firstSectoinView.backgroundColor == .clear && secondSectionView.backgroundColor == .clear && thirdSectionView.backgroundColor == .clear {
//            firstSectoinView.backgroundColor = .red
//        } else if firstSectoinView.backgroundColor == .red {
//            firstSectoinView.backgroundColor = .clear
//            secondSectionView.backgroundColor = .yellow
//        } else if secondSectionView.backgroundColor == .yellow {
//            secondSectionView.backgroundColor = .clear
//            thirdSectionView.backgroundColor = .green
//        } else if thirdSectionView.backgroundColor == .green {
//            thirdSectionView.backgroundColor = .clear
//        }
//    }

}
}
