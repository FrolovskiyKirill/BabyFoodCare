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
              LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 4) {
                  ForEach(babyFoodCareDataService.babyFoodCareModel, id: \.id) { card in
                    NavigationLink(value: card) {
                      BabyFoodCareListCell(babyFoodCare: card)
                    }
                    .buttonStyle(PlainButtonStyle())
                  }
              }
              .padding(8)
          }
//          .navigationTitle("List View")
          .navigationDestination(for: BabyFoodCareModel.self) { card in
            DetailBabyFoodCarelView(babyFoodCare: card)
          }
      }
      .onAppear {
        babyFoodCareDataService.getBabyFoodCare()
      }
  }
}

#Preview {
    BabyFoodCareListView()
}
