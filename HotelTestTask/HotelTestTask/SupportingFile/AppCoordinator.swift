//
//  AppCoordinator.swift
//  HotelTestTask
//
//  Created by Владимир Данилович on 21.12.23.
//

import SwiftUI

final class AppCoordinator: Coordinator {
  var rootViewController: UIViewController = UINavigationController()

  var parentCoordinator: Coordinator?

  let window: UIWindow

  init(window: UIWindow) {
    self.window = window
  }

  func start() {
    let hotelCoordinator = HotelCoordinator()
    hotelCoordinator.start()
    window.rootViewController = hotelCoordinator.rootViewController
    window.makeKeyAndVisible()
  }


}
