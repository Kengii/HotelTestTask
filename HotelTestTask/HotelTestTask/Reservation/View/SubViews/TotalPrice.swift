//
//  TotalPrice.swift
//  HotelTestTask
//
//  Created by Владимир Данилович on 24.12.23.
//

import SwiftUI

struct TotalPrice: View {

  let tourPrice: Int
  let fuelCharge: Int
  let serviceCharge: Int

    var body: some View {
      VStack(spacing: 16) {
        HStack {
          Text("Тур")
            .sfPro(16, weight: .regular)
            .foregroundStyle(.gray)
          Spacer()
          Text("\(tourPrice) ₽")
            .sfPro(16, weight: .regular)
            .foregroundStyle(.black)
        }
        .padding([.trailing, .leading, .top], 16)
        HStack {
          Text("Топливный сбор")
            .sfPro(16, weight: .regular)
            .foregroundStyle(.gray)
          Spacer()
        Text("\(fuelCharge) ₽")
            .sfPro(16, weight: .regular)
            .foregroundStyle(.black)
        }
        .padding([.trailing, .leading], 16)
        HStack {
          Text("Сервисный сбор")
            .sfPro(16, weight: .regular)
            .foregroundStyle(.gray)
          Spacer()
          Text("\(serviceCharge) ₽")
            .sfPro(16, weight: .regular)
            .foregroundStyle(.black)
        }
        .padding([.trailing, .leading], 16)
        HStack {
          Text("К оплате")
            .sfPro(16, weight: .regular)
            .foregroundStyle(.gray)
          Spacer()
          Text("\(tourPrice + fuelCharge + serviceCharge) ₽")
            .sfPro(16, weight: .regular)
            .foregroundStyle(.blue)
        }
        .padding([.trailing, .leading, .bottom], 16)

      }
      .background(RoundedRectangle(cornerRadius: 15)
        .foregroundStyle(.white))
    }
}

#Preview {
  TotalPrice(tourPrice: 0, fuelCharge: 0, serviceCharge: 0)
}
