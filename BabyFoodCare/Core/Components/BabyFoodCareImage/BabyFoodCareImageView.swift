//
//  BabyFoodCareImageView.swift
//  BabyFoodCare
//
//  Created by Kirill Frolovskiy on 06.11.2023.
//

import SwiftUI

//class BabyFoodCareImageViewModel: ObservableObject {
//
//  @Published var image: UIImage? = nil
//  @Published var isLoading = false
//
//  init() {
//    getImage()
//  }
//
//  func getImage() {
//
//  }
//}

struct BabyFoodCareImageView: View {

  @StateObject var vm: BabyFoodCareImageViewModel

  init(babyFoodCareModel: BabyFoodCareModel) {
    _vm = StateObject(wrappedValue: BabyFoodCareImageViewModel(babyFoodCareModel: babyFoodCareModel))
  }

  var body: some View {
    ZStack {
      if let image = vm.image {
        Image(uiImage: image)
          .resizable()
          .scaledToFit()
      } else if vm.isLoading {
        ProgressView()
      } else {
        Image(systemName: "questionmark")
      }
    }
  }
}

#Preview {
  BabyFoodCareImageView(babyFoodCareModel: MockData.sampleBabyFoodCare)
}


