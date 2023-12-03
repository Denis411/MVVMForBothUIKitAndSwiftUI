//
//  FruitListViewSwiftUI.swift
//  MVVMForBothUIKitAndSwiftUI
//
//  Created by Dennis on 3/12/2566 BE.
//

import SwiftUI

struct FruitListView: View {
    
    @StateObject var fruitListViewModel = FruitListViewModel()
    
    var body: some View {
        ForEach(fruitListViewModel.fruitList, id: \.self) { fruitModel in
            FruitListCell(fruitModel: fruitModel)
                .padding(.horizontal, 20)
        }
        .onAppear {
            fruitListViewModel.loadFruits()
        }
    }
    
}
