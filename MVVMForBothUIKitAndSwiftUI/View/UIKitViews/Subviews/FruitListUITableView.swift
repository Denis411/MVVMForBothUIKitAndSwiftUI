//
//  FruitListUIView.swift
//  MVVMForBothUIKitAndSwiftUI
//
//  Created by Dennis on 3/12/2566 BE.
//

import UIKit

final class FruitListUITableView: UITableView {
    
    private var fruitList: [FruitModel] = []
    
    override init(frame: CGRect, style: UITableView.Style) {
        super.init(frame: frame, style: style)
        setUpUI()
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func updateData(with fruitList:  [FruitModel]) {
        self.fruitList = fruitList
        // You may use logic on selective update to reload a concrete cell that has no dublicates
        self.reloadData()
        setNeedsLayout()
        layoutIfNeeded()
    }
    
}

// MARK: - Setting up FruitListUITableView
extension FruitListUITableView {
    
    private func setUpUI() {
        self.register(FruilListUITableViewCell.self, forCellReuseIdentifier: FruilListUITableViewCell.identifier)
        dataSource = self
        showsVerticalScrollIndicator = false
        rowHeight = UITableView.automaticDimension
        estimatedRowHeight = 15
    }
    
}

// MARK: - UITableViewDataSource
extension FruitListUITableView: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        fruitList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: FruilListUITableViewCell.identifier, for: indexPath)
        (cell as? FruilListUITableViewCell)?.updateCell(with: fruitList[indexPath.row])
        return cell
    }
    
}
