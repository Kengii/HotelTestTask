//
//  Tourist.swift
//  HotelTestTask
//
//  Created by Владимир Данилович on 27.12.23.
//

import Foundation


struct TouristSection: Identifiable {

  var id: String {
      return nameSection
  }

  let nameSection: String

  var cell : [TouristCell]
  var expanded = false
}

struct TouristCell: Identifiable {

  var id: String {
      return name
  }

  let name: String
  
  var expanded = false
}
