//
//  BabyFoodCare.swift
//  BabyFoodCare
//
//  Created by Kirill Frolovskiy on 28.10.2023.
//

import Foundation

struct BabyFoodCareModel: Decodable, Identifiable, Hashable {
  let id: Int
  let name: String
  let description: String
  let price: Double
  let imageURL: String
  let calories: Int
  let protein: Int
  let carbs: Int
}

struct BabyFoodCareModel2: Decodable, Identifiable, Hashable {
  let id: Int
  let title: String
  let foodType: String
  let description: String
  let imageURL: String
  let foodTypeImageURL: String
  let monthFrom: Int
  let allergen: Bool
  let allergenDescription: String?
  let withWarning: Bool
  let warningNote: String?
  let howToServe: String?
  let howToServeImageURL: [String]?
  let calories: Int
  let protein: Int
  let fats: Int
  let carbs: Int
}

struct UserModel {
  let userID: Int
  let foodID: Int
  let isFavorite: Bool
  let isTried: Bool
  let notes: String?
}

struct MockData {

  static let sampleBabyFoodCare = BabyFoodCareModel(
    id: 0001,
    name: "Test Pepper",
    description: "This is the description for my appetizer. It's yummy.",
    price: 9.99,
    imageURL: "https://seanallen-course-backend.herokuapp.com/images/appetizers/asian-flank-steak.jpg",
    calories: 99,
    protein: 99,
    carbs: 99
  )

  static let sampleBabyFoodCare2 = BabyFoodCareModel2(
    id: 0001,
    title: "Test Pepper",
    foodType: "Vegetables",
    description: "This is the description for my appetizer. It's yummy.",
    imageURL: "https://seanallen-course-backend.herokuapp.com/images/appetizers/asian-flank-steak.jpg",
    foodTypeImageURL: "https://seanallen-course-backend.herokuapp.com/images/appetizers/asian-flank-steak.jpg",
    monthFrom: 6,
    allergen: false,
    allergenDescription: "This is the description about allergen.",
    withWarning: true,
    warningNote: "This is the description about warning.",
    howToServe: "This is the description for my appetizer. It's yummy.",
    howToServeImageURL: [
      "https://seanallen-course-backend.herokuapp.com/images/appetizers/asian-flank-steak.jpg", "https://seanallen-course-backend.herokuapp.com/images/appetizers/asian-flank-steak.jpg", "https://seanallen-course-backend.herokuapp.com/images/appetizers/asian-flank-steak.jpg"
    ],
    calories: 300,
    protein: 20,
    fats: 5,
    carbs: 30)

  static let cards = [sampleBabyFoodCare, sampleBabyFoodCare, sampleBabyFoodCare, sampleBabyFoodCare]

  static let orderItemOne = BabyFoodCareModel(
    id: 0001,
    name: "Test Appetizer One",
    description: "This is the description for my appetizer. It's yummy.",
    price: 9.99,
    imageURL: "",
    calories: 99,
    protein: 99,
    carbs: 99
  )

  static let orderItemTwo = BabyFoodCareModel(
    id: 0002,
    name: "Test Appetizer Two",
    description: "This is the description for my appetizer. It's yummy.",
    price: 9.99,
    imageURL: "",
    calories: 99,
    protein: 99,
    carbs: 99
  )

  static let orderItemThree = BabyFoodCareModel(
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

struct MockData2 {

  static let sampleBabyFoodCare = BabyFoodCareModel(
    id: 0001,
    name: "Test Pepper",
    description: "This is the description for my appetizer. It's yummy.",
    price: 9.99,
    imageURL: "https://seanallen-course-backend.herokuapp.com/images/appetizers/asian-flank-steak.jpg",
    calories: 99,
    protein: 99,
    carbs: 99
  )
}
