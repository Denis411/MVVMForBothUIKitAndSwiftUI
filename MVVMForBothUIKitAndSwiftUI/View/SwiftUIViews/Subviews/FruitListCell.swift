//
//  File.swift
//  MVVMForBothUIKitAndSwiftUI
//
//  Created by Dennis on 3/12/2566 BE.
//

import SwiftUI

struct FruitListCell: View {
    
    let fruitModel: FruitModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            FruitHStack(title: "Fruit:", value: fruitModel.title)
            FruitHStack(title: "Calories:", value: fruitModel.calories)
            FruitHStack(title: "Protein:", value: fruitModel.protein)
            FruitHStack(title: "Carbohydrates:", value: fruitModel.carbohydrates)
            FruitHStack(title: "Fat:", value: fruitModel.fat)
        }
        .padding(.vertical, 10)
        .padding(.horizontal, 20)
        .background(Color.gray.opacity(0.5))
        .cornerRadius(10)
    }
    
}

fileprivate struct FruitHStack: View {
    
    let title: String
    let value: String
    
    var body: some View {
        HStack(spacing: 10) {
            Text(title)
            Text(value)
            Spacer()
        }
    }
    
}
