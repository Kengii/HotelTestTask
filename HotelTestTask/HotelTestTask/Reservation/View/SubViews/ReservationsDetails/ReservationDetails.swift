//
//  ReservationDetails.swift
//  HotelTestTask
//
//  Created by Владимир Данилович on 23.12.23.
//

import SwiftUI

struct ReservationDetails: View {

  var departure: String
  var arrivalCountry: String
  var dateStart: String
  var dateStop: String
  var nightsCount: Int
  var hotelName: String
  var room: String
  var nutrition: String

    var body: some View {
      VStack(alignment: .leading, spacing: 16) {
        ReservationDetailsText(staticText: "Вылет из", varibalText: departure, padding: 76)
          .padding(.top, 16)
        ReservationDetailsText(staticText: "Страна, город", varibalText: arrivalCountry, padding: 39)
        ReservationDetailsText(staticText: "Даты", varibalText: dateStart + "-" + dateStop, padding: 103)
        ReservationDetailsText(staticText: "Кол-во ночей", varibalText: "\(nightsCount) ночей", padding: 44)
        ReservationDetailsText(staticText: "Отель", varibalText: hotelName, padding: 97)

        ReservationDetailsText(staticText: "Номер", varibalText: room, padding: 91)

        ReservationDetailsText(staticText: "Питание", varibalText: nutrition, padding: 79)
          .padding(.bottom, 16)
      }
      .background(RoundedRectangle(cornerRadius: 15)
        .foregroundStyle(.white))
    }
}

#Preview {
  ReservationDetails(departure: "Москва", arrivalCountry: "Египет, Хургада", dateStart: "19.09.2023", dateStop: "27.09.2023",nightsCount: 7, hotelName: "Steigenberger Makadi", room: "Стандартный с видом на бассейн или сад", nutrition: "Все включено")
}
