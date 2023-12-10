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
    private let viewForBackground = UIView()
    
    private let titleView = FruitCellUIHorizontalStackView()
    private let caloriesView = FruitCellUIHorizontalStackView()
    private let proteinView = FruitCellUIHorizontalStackView()
    private let carbohydratesView = FruitCellUIHorizontalStackView()
    private let fatView = FruitCellUIHorizontalStackView()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setUpUI()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        backgroundView?.frame = contentView.frame.inset(by: .init(top: 0, left: 10, bottom: 10, right: 10))
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
        viewForBackground.backgroundColor = .gray.withAlphaComponent(0.5)
        viewForBackground.layer.cornerRadius = 10
        backgroundView = viewForBackground
        
        selectionStyle = .none
        
        verticalStackView.axis = .vertical
        verticalStackView.alignment = .leading
        verticalStackView.spacing = 10
        
        [titleView, caloriesView, proteinView, carbohydratesView, fatView]
            .forEach { view in
                verticalStackView.addArrangedSubview(view)
            }
        
        verticalStackView.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(verticalStackView)
        
        verticalStackView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10).isActive = true
        verticalStackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 30).isActive = true
        verticalStackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -30).isActive = true
    }
    
}
