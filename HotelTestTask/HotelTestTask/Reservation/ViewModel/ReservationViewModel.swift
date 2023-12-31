//
//  ReservationViewModel.swift
//  HotelTestTask
//
//  Created by Владимир Данилович on 23.12.23.
//

import SwiftUI
import Combine

final class ReservationViewModel: ObservableObject {

  init(coordinator: ReservationCoordinator) {
    self.coordinator = coordinator
    getReservation()
  }

  @Published var reservation = Reservation()
  @Published var email = ""
  @Published var phoneNumber = ""
  @Published var formIsValid = false
  @Published var sections = ["Первый турсит"]


  let tourists = ["Имя", "Фамилия", "Дата рождения", "Гражданство", "Номер загранпаспорта", "Срок действия загранпаспорта"]
  var textFieldText: [String] = []
  var text : String = ""
  var expanded = false

  private let coordinator: ReservationCoordinator
  private let api = ApiManager()
  private var cancellable = Set<AnyCancellable>()
}

extension ReservationViewModel {
  private func getReservation() {
    api.getReservation()
      .receive(on: DispatchQueue.main)
      .sink { [weak self] product in
        self?.reservation = product
      }
      .store(in: &cancellable)
  }

  func addTourist() {
    sections.append("Второй турист")
  }
}
