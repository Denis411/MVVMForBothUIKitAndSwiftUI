//
//  FruitListUIViewViewController.swift
//  MVVMForBothUIKitAndSwiftUI
//
//  Created by Dennis on 3/12/2566 BE.
//

import UIKit
import Combine

final class FruitListUIViewController: UIViewController {
    
    private let fruitListViewModel = FruitListViewModel()
    private var contentView: FruitListUITableView? { view as? FruitListUITableView }
    private var disposedBag = Set<AnyCancellable>()
    
    override func loadView() {
        view = FruitListUITableView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setBinding()
        fruitListViewModel.loadFruits()
    }
    
}

// MARK: - Set binding
fileprivate extension FruitListUIViewController {
    
    func setBinding() {
        fruitListViewModel
            .$fruitList
            .sink { [unowned self] fruitListModel in
                self.contentView?.updateData(with: fruitListModel)
        }
            .store(in: &disposedBag)
    }
    
}
