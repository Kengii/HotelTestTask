//
//  PriceView.swift
//  HotelTestTask
//
//  Created by Владимир Данилович on 21.12.23.
//

import SwiftUI

struct PriceView: View {

  let price: Int
  let priceForIt: String

  var body: some View {
    HStack(alignment: .bottom, content: {
      Text("ОТ")
        .sfPro(30, weight: .semibold)
        .foregroundStyle(.black)
      Text("\(price)" + "" + "P")
        .sfPro(30, weight: .semibold)
        .foregroundStyle(.black)
      Text(priceForIt)
        .sfPro(16, weight: .regular)
        .foregroundStyle(.gray)
    })
  }
}
