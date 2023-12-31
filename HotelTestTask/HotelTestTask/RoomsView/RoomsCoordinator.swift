//
//  RoomsViewCoordinator.swift
//  HotelTestTask
//
//  Created by Владимир Данилович on 21.12.23.
//

import SwiftUI

final class RoomsCoordinator: Coordinator {
  var rootViewController = UIViewController()

  var parentCoordinator: Coordinator?
  
  func start() {

  }

  func startRoom(name: String) {
    let vm = RoomsViewModel(coordinator: self, name: name)
    let pickViewController = UIHostingController(rootView: RoomsView(viewModel: vm))
    rootViewController = pickViewController
  }

  func goToReservation() {
    let reservationCoordinator = ReservationCoordinator()
    reservationCoordinator.start()
    let vc = reservationCoordinator.rootViewController
    self.rootViewController.navigationController?.pushViewController(vc, animated: true)
  }

}
