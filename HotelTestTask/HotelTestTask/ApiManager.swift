//
//  ApiManager.swift
//  HotelTestTask
//
//  Created by Владимир Данилович on 21.12.23.
//

import Foundation
import Combine

enum ApiPath: String {
  case getHotel = "https://run.mocky.io/v3/d144777c-a67f-4e35-867a-cacc3b827473"
}

final class ApiManager {

  init() {
    let decoder = JSONDecoder()
    decoder.keyDecodingStrategy = .convertFromSnakeCase
    self.decoder = decoder
  }

  let decoder: JSONDecoder

  func getHotel() -> AnyPublisher<Hotel, Never> {
    let link = ApiPath.getHotel.rawValue
    guard let url = URL(string: link) else {
      return Just(Hotel()).eraseToAnyPublisher()
    }

    return URLSession.shared.dataTaskPublisher(for: url)
      .map(\.data)
      .decode(type: Hotel.self, decoder: decoder)
      .catch { error in Just(Hotel()) }
      .receive(on: RunLoop.main)
      .eraseToAnyPublisher()
  }
}
