//
//  InitialVCCustomButton.swift
//  MVVMForBothUIKitAndSwiftUI
//
//  Created by Dennis on 3/12/2566 BE.
//

import UIKit

final class InitialVCCustomButton: UIButton {
    
    override var intrinsicContentSize: CGSize {
        CGSize(
            width: super.intrinsicContentSize.width + 20.0,
            height: super.intrinsicContentSize.height + 10.0
        )
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUI()
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setUI() {
        self.backgroundColor = .green
        self.layer.cornerRadius = 5
        self.titleLabel?.font = .systemFont(ofSize: 20)
    }
    
}
