//
//  TrafficLightView.swift
//  TrafficLight
//
//  Created by Ivan on 30.04.2023.
//

import UIKit
import SnapKit

class TrafficLightView: UIView {

    private var firstSectoinView = SectionTrafficLightView(colorLight: .red)
    private var secondSectionView = SectionTrafficLightView(colorLight: .yellow)
    private var thirdSectionView = SectionTrafficLightView(colorLight: .green)
    
    private let stackView = UIStackView(frame: .zero)
    
    init() {
        super.init(frame: .zero)
        
        settingStackView()
        loadingState ()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Public
    func stateChange() {
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
    }
    
    // MARK: - Private
    
    private func settingStackView() {
        addSubview(stackView)
        
        stackView.spacing = 12
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.distribution = .fill
        
        stackView.addArrangedSubview(firstSectoinView)
        stackView.addArrangedSubview(secondSectionView)
        stackView.addArrangedSubview(thirdSectionView)
        
        stackView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        firstSectoinView.snp.makeConstraints { make in
            make.width.height.equalTo(100)
        }
        secondSectionView.snp.makeConstraints { make in
            make.width.height.equalTo(100)
        }
        thirdSectionView.snp.makeConstraints { make in
            make.width.height.equalTo(100)
        }
    }
    
    private func loadingState () {
        firstSectoinView.turnOff()
        secondSectionView.turnOff()
        thirdSectionView.turnOff()
    }
    
}
