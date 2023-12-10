//
//  FruilListUITableViewCell.swift
//  MVVMForBothUIKitAndSwiftUI
//
//  Created by Dennis on 3/12/2566 BE.
//

import UIKit

final class FruilListUITableViewCell: UITableViewCell {
    
    static let identifier = "FruilListUITableViewCell"
    
    private let containerView = UIView()
    private let verticalStackView = UIStackView()
    private let titleView = FruitCellUIHorizontalStackView()
    private let caloriesView = FruitCellUIHorizontalStackView()
    private let proteinView = FruitCellUIHorizontalStackView()
    private let carbohydratesView = FruitCellUIHorizontalStackView()
    private let fatView = FruitCellUIHorizontalStackView()
    
    override init(
        style: UITableViewCell.CellStyle,
        reuseIdentifier: String?
    ) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setUpUI()
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        let insets = UIEdgeInsets(top: 0, left: 10, bottom: -20, right: 10)
        containerView.frame = contentView.frame.inset(by: insets)
    }
    
    func updateCell(with model: FruitModel) {
        titleView.update(title: "Title:", value: model.title)
        caloriesView.update(title: "Calories:", value: model.calories)
        fatView.update(title: "Fat:", value: model.fat)
        carbohydratesView.update(title: "Carbohydrates:", value: model.carbohydrates)
        proteinView.update(title: "Protein:", value: model.protein)
    }
    
    private func setUpUI() {
        selectionStyle = .none
        setUpContainerView()
        setUpVerticalStackView()
    }
    
    private func setUpContainerView() {
        containerView.backgroundColor = .gray.withAlphaComponent(0.5)
        containerView.layer.cornerRadius = 10
        
        contentView.addSubview(containerView)
    }
    
    private func setUpVerticalStackView() {
        verticalStackView.axis = .vertical
        verticalStackView.alignment = .leading
        verticalStackView.spacing = 10
        
        [titleView, caloriesView, proteinView, carbohydratesView, fatView].forEach { hStackView in
            hStackView.translatesAutoresizingMaskIntoConstraints = false
            verticalStackView.addArrangedSubview(hStackView)
        }
        
        verticalStackView.translatesAutoresizingMaskIntoConstraints = false
        containerView.addSubview(verticalStackView)
        
        verticalStackView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10).isActive = true
        verticalStackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20).isActive = true
        verticalStackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20).isActive = true
        verticalStackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10).isActive = true
    }
    
}
