//
//  BabyFoodCareListViewModel.swift
//  BabyFoodCare
//
//  Created by Kirill Frolovskiy on 28.10.2023.
//

import Foundation

final class BabyFoodCareListViewModel: ObservableObject {
  @Published var babyFoodCare: [BabyFoodCare] = []

  func getBabyFoodCare() {
    //          isLoading = true
    NetworkManager.shared.getBabyFoodCares { [self] result in
      DispatchQueue.main.async {
        //                  isLoading = false
        switch result {
        case .success(let babyFoodCare):
          self.babyFoodCare = babyFoodCare

        case .failure(let error):
          //                      switch error {
          print(error.localizedDescription)
          //                      case .invalidResponse:
          //                          alertItem = AlertContext.invalidResponse
          //
          //                      case .invalidURL:
          //                          alertItem = AlertContext.invalidURL
          //
          //                      case .invalidData:
          //                          alertItem = AlertContext.invalidData
          //
          //                      case .unableToComplete:
          //                          alertItem = AlertContext.unableToComplete
        }
      }
    }
  }
}

