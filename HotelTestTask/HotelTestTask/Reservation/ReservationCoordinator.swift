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
  



}
