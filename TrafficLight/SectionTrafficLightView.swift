//
//  SectionTrafficLight.swift
//  TrafficLight
//
//  Created by Ivan on 09.04.2023.
//

import UIKit

class SectionTrafficLightView: UIView {

    var colorLight: UIColor?
    
    // создание объекта из сториборд
    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.cornerRadius = frame.size.width / 2
        layer.borderWidth = 4
        layer.borderColor = UIColor.black.cgColor
        backgroundColor = .clear
    }

    // включение
    func turnOn() {
        backgroundColor = colorLight
    }
    
    // выключение
    func turnOff() {
        backgroundColor = .clear
    }
    
    // получение состояния секции
    func isOff() -> Bool {
        if backgroundColor == .clear {
            return true
        } else {
            return false
        }
    }
    func isOn() -> Bool {
        if backgroundColor == .clear {
            return false
        } else {
            return true
        }
    }
}
