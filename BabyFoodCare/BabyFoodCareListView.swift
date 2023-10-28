//
//  BabyFoodCareListView.swift
//  BabyFoodCare
//
//  Created by Kirill Frolovskiy on 28.10.2023.
//

import SwiftUI

struct BabyFoodCareListView: View {
  @StateObject var viewModel = BabyFoodCareListViewModel()
  
    var body: some View {
      NavigationStack {
        List(viewModel.babyFoodCare) { card in
          BabyFoodCareListCell(babyFoodCare: card)
        }
          .navigationTitle("List View")
      }
      .onAppear {
        viewModel.getBabyFoodCare()
      }
    }
}

#Preview {
    BabyFoodCareListView()
}
