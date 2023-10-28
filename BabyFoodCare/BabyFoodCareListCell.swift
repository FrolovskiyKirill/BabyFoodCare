//
//  BabyFoodCareListCell.swift
//  BabyFoodCare
//
//  Created by Kirill Frolovskiy on 28.10.2023.
//

import SwiftUI

struct BabyFoodCareListCell: View {
  
  let babyFoodCare: BabyFoodCare
  
  var body: some View {
    HStack {
      Image("papper")
        .resizable()
        .aspectRatio(contentMode: .fit)
        .frame(width: 120, height: 90)
        .cornerRadius(8)
      
      //          AsyncImage(url: URL(string: appetizer.imageURL)) { image in
      //              image
      //                  .resizable()
      //                  .aspectRatio(contentMode: .fit)
      //                  .frame(width: 120, height: 90)
      //        .cornerRadius(8)
      
      //  placeholder: {
      //      Image("food-placeholder")
      //        .resizable()
      //        .aspectRatio(contentMode: .fit)
      //        .frame(width: 120, height: 90)
      //        .cornerRadius(8)
      //    }
      
      
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
  BabyFoodCareListCell(babyFoodCare: MockData.orderItemOne)
}
