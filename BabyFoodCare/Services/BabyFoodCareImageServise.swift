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
  private let fileManager = LocalFileManager.instanse
  private let folderName = "bfg_images"
  private let imageName: String

  init(babyFoodCareModel: BabyFoodCareModel) {
    self.babyFoodCareModel = babyFoodCareModel
    self.imageName = String(babyFoodCareModel.id)
    getBabyFoodCareImage()
  }

  private func getBabyFoodCareImage() {
    if let savedImage = fileManager.getImage(imageName: imageName, folderName: folderName) {
image = savedImage
      print("Retrieved image from file Manager!")
    } else {
      downloadBabyFoodCareImage()
      print("Downloading image now")
    }
  }

  private func downloadBabyFoodCareImage() {
    guard let url = URL(string: babyFoodCareModel.imageURL) else { return }

    imageSubscription = NetworkingManager.download(url: url)
      .tryMap({ data -> UIImage? in
        return UIImage(data: data)
      })
      .sink(receiveCompletion: NetworkingManager.handleCompletion, receiveValue: { [weak self] returnedImage in
        guard let self = self, let downloadedImage = returnedImage else { return }
        self.image = downloadedImage
        self.imageSubscription?.cancel()
        self.fileManager.saveImage(image: downloadedImage, imageName: imageName, folderName: folderName)
      })
  }

}
