//
//  Room.swift
//  HotelTestTask
//
//  Created by Владимир Данилович on 22.12.23.
//

import Foundation

struct Room: Decodable {
  let id: Int
  let name: String
  let price: Int
  let pricePer: String
  let peculiarities: [String]
  let imageUrls: [URL]

  enum CodingKeys: CodingKey {
    case id
    case name
    case price
    case pricePer
    case peculiarities
    case imageUrls
  }

  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    self.id = try container.decode(Int.self, forKey: .id)
    self.name = try container.decode(String.self, forKey: .name)
    self.price = try container.decode(Int.self, forKey: .price)
    self.pricePer = try container.decode(String.self, forKey: .pricePer)
    self.peculiarities = try container.decode([String].self, forKey: .peculiarities)
    self.imageUrls = try container.decode([URL].self, forKey: .imageUrls)
  }
}
