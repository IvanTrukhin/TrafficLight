//
//  TrafficLightView.swift
//  TrafficLight
//
//  Created by Ivan on 30.04.2023.
//

import UIKit
import SnapKit

class TrafficLightView: UIView {
    
    private let sections: [SectionTrafficLightView] = [SectionTrafficLightView(colorLight: .red),
                                                       SectionTrafficLightView(colorLight: .yellow),
                                                       SectionTrafficLightView(colorLight: .green)]
    
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
        if let indexOfFirstOnSection = sections.firstIndex(where: { $0.isOn() }),
               indexOfFirstOnSection < sections.count - 1 {
            sections[indexOfFirstOnSection].turnOff()
            sections[indexOfFirstOnSection + 1].turnOn()
        } else {
            sections.forEach({ $0.turnOff()})
            sections.first?.turnOn()
        }
    }
    
    // MARK: - Private
    
    private func settingStackView() {
        addSubview(stackView)
        
        stackView.spacing = 12
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.distribution = .fill
        
        sections.forEach { section in
            stackView.addArrangedSubview(section)
            
            section.snp.makeConstraints { make in
                make.width.height.equalTo(100)
            }
        }
        stackView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
    
    private func loadingState () {
        sections.forEach({$0.turnOff()})
    }
}
