//
//  PaidCoordinator.swift
//  HotelTestTask
//
//  Created by Владимир Данилович on 31.12.23.
//

import SwiftUI


final class PaidCoordinator: Coordinator {
  var rootViewController = UIViewController()

  var parentCoordinator: Coordinator?
  
  func start() {
    let vm = PaidViewModel(coordinator: self)
    let pickViewController = UIHostingController(rootView: PaidView(viewModel: vm))
    rootViewController = pickViewController
  }
  
  func goToHotel() {
    let hotelCoordinator = HotelCoordinator()
    hotelCoordinator.start()
    let vc = hotelCoordinator.rootViewController
    self.rootViewController.navigationController?.pushViewController(vc, animated: true)
  }

}
