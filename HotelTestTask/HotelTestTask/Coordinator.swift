//
//  Coordinator.swift
//  HotelTestTask
//
//  Created by Владимир Данилович on 21.12.23.
//

import SwiftUI

protocol Coordinator {
  var rootViewController: UIViewController { get set }
  var parentCoordinator: Coordinator? { get set }
  func start()
}
