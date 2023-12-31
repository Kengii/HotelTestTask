//
//  ReservationDetailsText.swift
//  HotelTestTask
//
//  Created by Владимир Данилович on 23.12.23.
//

import SwiftUI

struct ReservationDetailsText: View {
  var staticText: String
  var varibalText: String
  var padding: CGFloat

    var body: some View {
      HStack(alignment: .top) {
        Text(staticText)
          .sfPro(16, weight: .regular)
          .foregroundColor(.gray)
          .padding(.leading, 16)
        Text(varibalText)
          .sfPro(16, weight: .regular)
          .padding(.leading, padding)
      }
    }
}

#Preview {
  ReservationDetailsText(staticText: "Вылет из", varibalText: "Москва", padding: 76)
}
