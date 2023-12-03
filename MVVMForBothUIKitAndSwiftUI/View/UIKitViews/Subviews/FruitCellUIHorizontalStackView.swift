//
//  FruitCellUIHorizontalStackView.swift
//  MVVMForBothUIKitAndSwiftUI
//
//  Created by Dennis on 3/12/2566 BE.
//

import UIKit

final class FruitCellUIHorizontalStackView: UIStackView {
    
    let titleLabel = UILabel()
    let valueLabel = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpUI()
    }
    
    @available(*, unavailable)
    required init(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    func update(title: String, value: String) {
        self.titleLabel.text = title
        self.valueLabel.text = value
    }
    
}

extension FruitCellUIHorizontalStackView {
    
    private func setUpUI() {
        self.axis = .horizontal
        self.distribution = .fill
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        self.addArrangedSubview(titleLabel)
        valueLabel.translatesAutoresizingMaskIntoConstraints = false
        self.addArrangedSubview(valueLabel)
    }
    
}
