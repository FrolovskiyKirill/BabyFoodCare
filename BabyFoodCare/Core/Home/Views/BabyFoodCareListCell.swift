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
    HStack {
      BabyFoodCareImageView(babyFoodCareModel: babyFoodCare)
        .frame(width: 120, height: 90)
        .cornerRadius(8)
      VStack(alignment: .leading, spacing: 5) {
        Text(babyFoodCare.name)
          .font(.title2)
          .fontWeight(.medium)
        
        Text("$\(babyFoodCare.price, specifier: "%.2f")")
          .foregroundColor(.secondary)
          .fontWeight(.semibold)
      }
      .padding(.leading)
    }
  }
}

#Preview {
  BabyFoodCareListCell(babyFoodCare: MockData.sampleBabyFoodCare)
}
