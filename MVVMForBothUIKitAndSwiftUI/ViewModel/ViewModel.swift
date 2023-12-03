//
//  ViewModel.swift
//  MVVMForBothUIKitAndSwiftUI
//
//  Created by Dennis on 3/12/2566 BE.
//

import Foundation

@MainActor
final class FruitListViewModel: ObservableObject {
    
    @Published var fruitList: [FruitModel] = []
    
    func loadFruits() {
        let singleFrout = FruitModel(title: "Apple", calories: " 96", fat: "0.2", carbohydrates:
                                "22", protein: "1")
        fruitList = [singleFrout, singleFrout, singleFrout]
    }
    
}
