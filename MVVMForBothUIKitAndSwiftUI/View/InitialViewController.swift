//
//  ViewController.swift
//  MVVMForBothUIKitAndSwiftUI
//
//  Created by Dennis on 3/12/2566 BE.
//

import UIKit

class InitialViewController: UIViewController {
    
    private let buttonHStack = UIStackView()
    private let buttonA = InitialVCCustomButton()
    private let buttonB = InitialVCCustomButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        setButtons()
        setButtonHStack()
    }
    
    @inline(__always)
    private func setButtons() {
        buttonA.setTitle("A view", for: .normal)
        buttonB.setTitle("B view", for: .normal)
        
        [buttonA, buttonB].forEach { button in
            button.translatesAutoresizingMaskIntoConstraints = false
        }
    }
    
    @inline(__always)
    private func setButtonHStack() {
        buttonHStack.axis = .horizontal
        buttonHStack.spacing = 25
        buttonHStack.distribution = .fillEqually
        
        buttonHStack.addArrangedSubview(buttonA)
        buttonHStack.addArrangedSubview(buttonB)
        
        view.addSubview(buttonHStack)
        
        buttonHStack.translatesAutoresizingMaskIntoConstraints = false
        buttonHStack.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        buttonHStack.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }

}

