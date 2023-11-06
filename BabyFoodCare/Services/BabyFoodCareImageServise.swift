//
//  BabyFoodCareImageServise.swift
//  BabyFoodCare
//
//  Created by Kirill Frolovskiy on 06.11.2023.
//

import SwiftUI
import Combine

final class BabyFoodCareImageServise {

  @Published var image: UIImage? = nil

  private var imageSubscription: AnyCancellable?
  private let babyFoodCareModel: BabyFoodCareModel

  init(babyFoodCareModel: BabyFoodCareModel) {
    self.babyFoodCareModel = babyFoodCareModel
    getBabyFoodCareImage()
  }

  private func getBabyFoodCareImage() {
    guard let url = URL(string: babyFoodCareModel.imageURL) else { return }

    imageSubscription = NetworkingManager.download(url: url)
      .tryMap({ data -> UIImage? in
        return UIImage(data: data)
      })
      .sink(receiveCompletion: NetworkingManager.handleCompletion, receiveValue: { [weak self] returnedImage in
        self?.image = returnedImage
        self?.imageSubscription?.cancel()
      })
  }

}
