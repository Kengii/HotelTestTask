//
//  HotelViewModel.swift
//  HotelTestTask
//
//  Created by Владимир Данилович on 21.12.23.
//

import SwiftUI
import Combine

final class HotelViewModel: ObservableObject {

  init(coordinator: HotelCoordinator) {
    self.coordinator = coordinator
    getHotel()
  }

  private let api = ApiManager()
  private let coordinator: HotelCoordinator
  private var cancellable = Set<AnyCancellable>()

  @Published var hotel = Hotel()

  let alignments: [HorizontalAlignment] = [.leading, .center, .trailing]
  var alignment: HorizontalAlignment {
    alignments[0]
  }
}

extension HotelViewModel {
  private func getHotel() {
    api.getHotel()
      .receive(on: DispatchQueue.main)
      .sink {
      [weak self] product in
      self?.hotel = product
    }
      .store(in: &cancellable)
  }
}
