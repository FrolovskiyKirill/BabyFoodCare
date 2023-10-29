//
//  BabyFoodCare.swift
//  BabyFoodCare
//
//  Created by Kirill Frolovskiy on 28.10.2023.
//

import Foundation

struct BabyFoodCare: Decodable, Identifiable {
  let id: Int
  let name: String
  let description: String
  let price: Double
  let imageURL: String
  let calories: Int
  let protein: Int
  let carbs: Int
}

struct MockData {

  static let sampleBabyFoodCare = BabyFoodCare(
    id: 0001,
    name: "Test Pepper",
    description: "This is the description for my appetizer. It's yummy.",
    price: 9.99,
    imageURL: "",
    calories: 99,
    protein: 99,
    carbs: 99
  )

  static let cards = [sampleBabyFoodCare, sampleBabyFoodCare, sampleBabyFoodCare, sampleBabyFoodCare]

  static let orderItemOne = BabyFoodCare(
    id: 0001,
    name: "Test Appetizer One",
    description: "This is the description for my appetizer. It's yummy.",
    price: 9.99,
    imageURL: "",
    calories: 99,
    protein: 99,
    carbs: 99
  )

  static let orderItemTwo = BabyFoodCare(
    id: 0002,
    name: "Test Appetizer Two",
    description: "This is the description for my appetizer. It's yummy.",
    price: 9.99,
    imageURL: "",
    calories: 99,
    protein: 99,
    carbs: 99
  )

  static let orderItemThree = BabyFoodCare(
    id: 0003,
    name: "Test Appetizer Three",
    description: "This is the description for my appetizer. It's yummy.",
    price: 9.99,
    imageURL: "",
    calories: 99,
    protein: 99,
    carbs: 99)

  static let orderItems = [orderItemOne, orderItemTwo, orderItemThree]
}
