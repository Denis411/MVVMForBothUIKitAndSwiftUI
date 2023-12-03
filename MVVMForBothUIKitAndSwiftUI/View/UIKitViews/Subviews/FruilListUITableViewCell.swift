//
//  FruilListUITableViewCell.swift
//  MVVMForBothUIKitAndSwiftUI
//
//  Created by Dennis on 3/12/2566 BE.
//

import UIKit

final class FruilListUITableViewCell: UITableViewCell {
    
    static let identifier = "FruilListUITableViewCell"
    private let verticalStackView = UIStackView()
    
    private let titleView = FruitCellUIHorizontalStackView()
    private let caloriesView = FruitCellUIHorizontalStackView()
    private let proteinView = FruitCellUIHorizontalStackView()
    private let carbohydratesView = FruitCellUIHorizontalStackView()
    private let fatView = FruitCellUIHorizontalStackView()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setUpUI()
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    func updateCell(with model: FruitModel) {
        titleView.update(title: "Title:", value: model.title)
        caloriesView.update(title: "Calories:", value: model.calories)
        fatView.update(title: "Fat:", value: model.fat)
        carbohydratesView.update(title: "Carbohydrates:", value: model.carbohydrates)
        proteinView.update(title: "Protein:", value: model.protein)
    }
    
    private func setUpUI() {
        contentView.backgroundColor = .gray.withAlphaComponent(0.5)
        contentView.layer.cornerRadius = 10
        
        verticalStackView.axis = .vertical
        verticalStackView.alignment = .leading
        verticalStackView.spacing = 10
        
        verticalStackView.addArrangedSubview(titleView)
        verticalStackView.addArrangedSubview(caloriesView)
        verticalStackView.addArrangedSubview(proteinView)
        verticalStackView.addArrangedSubview(carbohydratesView)
        verticalStackView.addArrangedSubview(fatView)
        
        verticalStackView.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(verticalStackView)
        
        verticalStackView.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        verticalStackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive = true
        verticalStackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor).isActive = true
        verticalStackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
    }
    
}
