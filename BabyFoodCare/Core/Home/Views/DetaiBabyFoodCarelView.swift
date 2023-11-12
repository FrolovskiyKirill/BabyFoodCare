//
//  DetaiBabyFoodCarelView.swift
//  BabyFoodCare
//
//  Created by Kirill Frolovskiy on 12.11.2023.
//

import SwiftUI

struct DetaiBabyFoodCarelView: View {

  let babyFoodCare: BabyFoodCareModel

    var body: some View {
      Text(babyFoodCare.name)
    }
}

#Preview {
    DetaiBabyFoodCarelView(babyFoodCare: MockData.sampleBabyFoodCare)
}
