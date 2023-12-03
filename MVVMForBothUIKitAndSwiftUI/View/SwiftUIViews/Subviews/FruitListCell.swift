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
            HStack(spacing: 10) {
                Text("Fruit:")
                Text(fruitModel.title)
            }
            
            HStack(spacing: 10) {
                Text("Calories:")
                Text(fruitModel.calories)
            }
            
            HStack(spacing: 10) {
                Text("Protein:")
                Text(fruitModel.protein)
            }
            
            HStack(spacing: 10) {
                Text("Carbohydrates:")
                Text(fruitModel.carbohydrates)
            }
            
            HStack(spacing: 10) {
                Text("Fat:")
                Text(fruitModel.fat)
            }

        }
        .cornerRadius(10)
    }
    
}
