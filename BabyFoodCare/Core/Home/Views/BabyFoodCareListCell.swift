//
//  BabyFoodCareListCell.swift
//  BabyFoodCare
//
//  Created by Kirill Frolovskiy on 28.10.2023.
//

import SwiftUI

struct BabyFoodCareListCell: View {

  @State var isFavorite: Bool = false
  @State var isTried: Bool = false

  let babyFoodCare: BabyFoodCareModel

  var body: some View {
    VStack(alignment: .leading) {
      BabyFoodCareImageView(babyFoodCareModel: babyFoodCare)
        .frame(width: 170, height: 130)
        .cornerRadius(8)
        .overlay(alignment: .topTrailing, content: {
          Button {
            isFavorite.toggle()
          } label: {
            //            Image("mail.stack")
            Label("", systemImage: isFavorite ? "star.fill" : "star")
              .foregroundColor(isFavorite ? .yellow : .gray)
              .font(.system(size: 20))
              .symbolEffect(.bounce, value: isFavorite)
              .padding(6)
          }
        })
        .overlay(alignment: .topLeading, content: {
          Button {
            isTried.toggle()
          } label: {
            Label("", systemImage: "fork.knife")
              .foregroundColor(isTried ? .green : .gray)
              .font(.system(size: 20))
              .symbolEffect(.bounce, value: isTried)
              .padding(6)
          }
        })
        .overlay(alignment: .bottomTrailing, content: {
          Button {
//            isTried.toggle()
          } label: {
            Label("", systemImage: "exclamationmark.bubble")
              .foregroundColor(.red)
              .font(.system(size: 20))
//              .symbolEffect(.bounce, value: isTried)
              .padding(6)
          }
        })
      Text(babyFoodCare.title)
        .font(.title3)
        .fontWeight(.light)
      Text(babyFoodCare.foodType)
        .foregroundColor(.secondary)
        .fontWeight(.ultraLight)

        .padding(.trailing)
    }
  }
}

#Preview {
  BabyFoodCareListCell(babyFoodCare: MockData.sampleBabyFoodCare)
}
