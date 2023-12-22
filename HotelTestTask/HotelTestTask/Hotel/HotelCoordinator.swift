//
//  HotelCoordinator.swift
//  HotelTestTask
//
//  Created by Владимир Данилович on 21.12.23.
//

import SwiftUI

final class HotelCoordinator: Coordinator {
  var rootViewController = UIViewController()

  var parentCoordinator: Coordinator?

  func start() {
    let vm = HotelViewModel(coordinator: self)
    let hotelViewController = UIHostingController(rootView: HotelView(viewModel: vm))
    let navigation = UINavigationController(rootViewController: hotelViewController)
    navigation.navigationBar.isHidden = true
    rootViewController = navigation
  }

  func goToRooms(name: String) {
    let roomsCoordinator = RoomsCoordinator()
    roomsCoordinator.startRoom(name: name)
    let vc = roomsCoordinator.rootViewController
    self.rootViewController.show(vc, sender: nil)
  }
}
