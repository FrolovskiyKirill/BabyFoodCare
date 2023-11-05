//
//  BabyFoodCareListView.swift
//  BabyFoodCare
//
//  Created by Kirill Frolovskiy on 28.10.2023.
//

import SwiftUI

struct BabyFoodCareListView: View {
  @StateObject var babyFoodCareDataService = BabyFoodCareDataService()
  
  var body: some View {
    NavigationStack {
          ScrollView {
              LazyVGrid(columns: [GridItem(.flexible())], spacing: 16) {
                  ForEach(babyFoodCareDataService.babyFoodCareModel, id: \.id) { card in
                      BabyFoodCareListCell(babyFoodCare: card)
                  }
              }
              .padding(16)
          }
          .navigationTitle("List View")
      }
      .onAppear {
        babyFoodCareDataService.getBabyFoodCare()
      }
  }
}

#Preview {
    BabyFoodCareListView()
}
