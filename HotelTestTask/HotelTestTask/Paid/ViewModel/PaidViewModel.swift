//
//  PaidViewModel.swift
//  HotelTestTask
//
//  Created by Владимир Данилович on 31.12.23.
//

import SwiftUI

final class PaidViewModel: ObservableObject {

  init(coordinator: PaidCoordinator) {
    self.coordinator = coordinator
  }

  private let coordinator: PaidCoordinator
}
