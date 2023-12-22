//
//  RoomsViewModel.swift
//  HotelTestTask
//
//  Created by Владимир Данилович on 21.12.23.
//

import SwiftUI
import Combine

final class RoomsViewModel: ObservableObject {

  init(coordinator: RoomsCoordinator, name: String) {
    self.coordinator = coordinator
    self.name = name
    getRooms()
  }

  @Published var rooms = [Room]()

  private let coordinator: RoomsCoordinator
  private var cancellable = Set<AnyCancellable>()
  private let api = ApiManager()

  let name: String
  let alignments: [HorizontalAlignment] = [.leading, .center, .trailing]
  var alignment: HorizontalAlignment {
    alignments[0]
  }
}

extension RoomsViewModel {
  private func getRooms() {
    api.getRooms()
      .receive(on: DispatchQueue.main)
      .sink { [weak self] rooms in
        self?.rooms = rooms.rooms
      }
      .store(in: &cancellable)
  }
}
