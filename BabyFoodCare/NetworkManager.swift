//
//  NetworkManager.swift
//  BabyFoodCare
//
//  Created by Kirill Frolovskiy on 28.10.2023.
//

import Foundation

final class NetworkManager {

  static let shared = NetworkManager()

  static let baseURL = "https://seanallen-course-backend.herokuapp.com/swiftui-fundamentals/"
  private let appetizerURL = baseURL + "appetizers"

  private init() {}


  func getBabyFoodCares(completed: @escaping (Result<[BabyFoodCare], BFCError>) -> Void) {
    guard let url = URL(string: appetizerURL) else {
      completed(.failure(.invalidURL))
      return
    }

    let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, response, error in
      if let _ = error {
        completed(.failure(.unableToComplete))
        return
      }

      guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
        completed(.failure(.invalidResponse))
        return
      }

      guard let data = data else {
        completed(.failure(.invalidData))
        return
      }

      do {
        let decoder = JSONDecoder()
        let decodedResponse = try decoder.decode(BabyFoodCareResponse.self, from: data)
        completed(.success(decodedResponse.request))
      } catch {
        completed(.failure(.invalidData))
      }
    }
    task.resume()
  }
}
