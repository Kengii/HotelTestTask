//
//  Reservation.swift
//  HotelTestTask
//
//  Created by Владимир Данилович on 23.12.23.
//

import Foundation

struct Reservation: Codable {
  let id: Int
  let hotelName: String
  let hotelAdress: String
  let horating: Int
  let ratingName: String
  let departure: String
  let arrivalCountry: String
  let tourDateStart: String
  let tourDateStop: String
  let numberOfNights: Int
  let room: String
  let nutrition: String
  let tourPrice: Int
  let fuelCharge: Int
  let serviceCharge: Int

  init() {
    self.id = 0
    self.hotelName = ""
    self.hotelAdress = ""
    self.horating = 0
    self.ratingName = ""
    self.departure = ""
    self.arrivalCountry = ""
    self.tourDateStart = ""
    self.tourDateStop = ""
    self.numberOfNights = 0
    self.room = ""
    self.nutrition = ""
    self.tourPrice = 0
    self.fuelCharge = 0
    self.serviceCharge = 0
  }
}
