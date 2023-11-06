//
//  BabyFoodCareImageViewModel.swift
//  BabyFoodCare
//
//  Created by Kirill Frolovskiy on 06.11.2023.
//

import SwiftUI
import Combine

class BabyFoodCareImageViewModel: ObservableObject {

  @Published var image: UIImage? = nil
  @Published var isLoading = false


  private let babyFoodCareModel: BabyFoodCareModel
  private let dataService: BabyFoodCareImageServise
  private var cancellables = Set<AnyCancellable>()

  init(babyFoodCareModel: BabyFoodCareModel) {
    self.babyFoodCareModel = babyFoodCareModel
    self.dataService = BabyFoodCareImageServise(babyFoodCareModel: babyFoodCareModel)
    self.addSubscribers()
    self.isLoading = true
  }

  private func addSubscribers() {

    dataService.$image
      .sink { [weak self] _ in
        self?.isLoading = false
      } receiveValue: { [weak self] returnedImage in
        self?.image = returnedImage
      }
      .store(in: &cancellables)
  }
}
