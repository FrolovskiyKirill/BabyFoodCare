//
//  BabyFoodCareListService.swift
//  BabyFoodCare
//
//  Created by Kirill Frolovskiy on 05.11.2023.
//

import Foundation
import Combine

class BabyFoodCareDataService: ObservableObject {

  var BFGSubscription: AnyCancellable?

  @Published var babyFoodCareModel: [BabyFoodCareModel] = []

  init() {
    getBabyFoodCare()
  }

  func getBabyFoodCare() {

    guard let url = URL(string: "https://davnopora.fun/kir/food")
    else { return }

    BFGSubscription = NetworkingManager.download(url: url)
      .decode(type: [BabyFoodCareModel].self, decoder: JSONDecoder())
      .sink(receiveCompletion: NetworkingManager.handleCompletion, receiveValue: { [weak self] returnedBabyFoodCareData in
        self?.babyFoodCareModel = returnedBabyFoodCareData
        self?.BFGSubscription?.cancel()
      })
  }
}
