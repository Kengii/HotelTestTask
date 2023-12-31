//
//  ReservationCoordinator.swift
//  HotelTestTask
//
//  Created by Владимир Данилович on 23.12.23.
//

import SwiftUI

final class ReservationCoordinator: Coordinator {
  var rootViewController = UIViewController()

  var parentCoordinator: Coordinator?

  func start() {
    let vm = ReservationViewModel(coordinator: self)
    let pickViewController = UIHostingController(rootView: ReservationView(viewModel: vm))
    rootViewController = pickViewController
  }


  func goToPaid() {
    let paidCoordinator = PaidCoordinator()
    paidCoordinator.start()
    let vc = paidCoordinator.rootViewController
    self.rootViewController.navigationController?.pushViewController(vc, animated: true)
  }
}
