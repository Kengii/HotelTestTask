//
//  Hotel.swift
//  HotelTestTask
//
//  Created by Владимир Данилович on 21.12.23.
//

import Foundation

struct Hotel: Codable {

  let id: Int
  let name: String
  let adress: String
  let minimalPrice: Int
  let priceForIt: String
  let rating: Int
  let ratingName: String
  let imageUrls: [URL]
  let aboutTheHotel: AboutTheHotel

  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    self.id = try container.decode(Int.self, forKey: .id)
    self.name = try container.decode(String.self, forKey: .name)
    self.adress = try container.decode(String.self, forKey: .adress)
    self.minimalPrice = try container.decode(Int.self, forKey: .minimalPrice)
    self.priceForIt = try container.decode(String.self, forKey: .priceForIt)
    self.rating = try container.decode(Int.self, forKey: .rating)
    self.ratingName = try container.decode(String.self, forKey: .ratingName)
    self.imageUrls = try container.decode([URL].self, forKey: .imageUrls)
    self.aboutTheHotel = try container.decode(AboutTheHotel.self, forKey: .aboutTheHotel)
  }

  init() {
    self.id = 0
    self.name = ""
    self.adress = ""
    self.minimalPrice = 0
    self.priceForIt = ""
    self.rating = 0
    self.ratingName = ""
    self.imageUrls = []
    self.aboutTheHotel = AboutTheHotel()
  }
}

struct AboutTheHotel: Codable {
  let description: String
  let peculiarities: [String]

  init() {
    self.description = ""
    self.peculiarities = []
  }
}
