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
        ScrollView(.vertical, showsIndicators: false) {
            ForEach(fruitListViewModel.fruitList, id: \.self) { fruitModel in
                FruitListCell(fruitModel: fruitModel)
            }
        }
        .padding(.horizontal, 10)
        .onAppear {
            fruitListViewModel.loadFruits()
        }
    }
    
}
