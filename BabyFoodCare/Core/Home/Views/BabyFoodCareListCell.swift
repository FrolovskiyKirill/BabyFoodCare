//
//  BabyFoodCareListCell.swift
//  BabyFoodCare
//
//  Created by Kirill Frolovskiy on 28.10.2023.
//

import SwiftUI

struct BabyFoodCareListCell: View {
  
  let babyFoodCare: BabyFoodCareModel
  
  var body: some View {
    VStack(alignment: .leading) {
      BabyFoodCareImageView(babyFoodCareModel: babyFoodCare)
        .frame(width: 170, height: 130)
        .cornerRadius(8)
        .overlay(
                  Image(systemName: "star")
                    .foregroundColor(.gray)
                    .font(.system(size: 16))
                    .padding(8),
                  alignment: .topTrailing
                )
        Text(babyFoodCare.name)
          .font(.title3)
          .fontWeight(.light)

        Text("$\(babyFoodCare.price, specifier: "%.2f")")
          .foregroundColor(.secondary)
          .fontWeight(.ultraLight)

      .padding(.trailing)
    }
  }
}

#Preview {
  BabyFoodCareListCell(babyFoodCare: MockData.sampleBabyFoodCare)
}
