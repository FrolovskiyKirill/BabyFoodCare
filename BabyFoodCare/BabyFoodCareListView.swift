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
          ScrollView {
              LazyVGrid(columns: [GridItem(.flexible())], spacing: 16) {
                  ForEach(viewModel.babyFoodCare, id: \.id) { card in
                      BabyFoodCareListCell(babyFoodCare: card)
                  }
              }
              .padding(16)
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
