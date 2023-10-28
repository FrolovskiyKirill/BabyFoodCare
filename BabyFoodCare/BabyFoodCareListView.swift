//
//  BabyFoodCareListView.swift
//  BabyFoodCare
//
//  Created by Kirill Frolovskiy on 28.10.2023.
//

import SwiftUI

struct BabyFoodCareListView: View {
    var body: some View {
      NavigationStack {
        List(MockData.cards) { card in
          BabyFoodCareListCell(babyFoodCare: card)
        }
          .navigationTitle("List View")
      }
    }
}

#Preview {
    BabyFoodCareListView()
}
