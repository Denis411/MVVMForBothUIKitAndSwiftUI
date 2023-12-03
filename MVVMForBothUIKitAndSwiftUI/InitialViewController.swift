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
        
        buttonA.addTarget(self, action: #selector(actionA), for: .touchUpInside)
        buttonB.addTarget(self, action: #selector(actionB), for: .touchUpInside)
        
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


import SwiftUI

// MARK: - Actions
extension InitialViewController {
    
    @objc func actionA() {
        // You shoul use eitehr a coordinator of a router here
        // I did not apply neither of the listed to focus on reusing ViewModel in both UIKit and SwiftUI
        // I did not use DI for the same reason
        let fruitView = FruitListView()
        let fruitViewController = UIHostingController(rootView: fruitView)
        show(fruitViewController, sender: self)
    }
    
    @objc func actionB() {
        // You shoul use eitehr a coordinator of a router here
        // I did not apply neither of the listed to focus on reusing ViewModel in both UIKit and SwiftUI
        // I did not use DI for the same reason
        let vm = FruitListViewModel()
    }
    
}
