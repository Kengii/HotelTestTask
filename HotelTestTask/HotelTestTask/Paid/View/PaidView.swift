//
//  PaidView.swift
//  HotelTestTask
//
//  Created by Владимир Данилович on 31.12.23.
//

import SwiftUI

struct PaidView: View {

  @StateObject var viewModel: PaidViewModel

  var body: some View {
    ZStack {
      Color(uiColor: .lightBackground)
      VStack {
        VStack {
          TopView(name: "Заказ Оплачен")
            .padding(.leading, 16)
            .padding(.top, 63)
          Spacer()
          ZStack {
            Circle()
              .foregroundStyle(Color(uiColor: .lightBackground))
              .frame(height: 94)
            Image("Party")
          }
          Text("Ваш заказ принят в работу")
            .sfPro(22, weight: .medium)
            .foregroundStyle(.black)
          Text("Подтверждение заказа №104893 может занять некоторое время (от 1 часа до суток). Как только мы получим ответ от туроператора, вам на почту придет уведомление.")
            .sfPro(16, weight: .regular)
            .foregroundStyle(.gray)
            .multilineTextAlignment(.center)
            .padding(.top, 20)
            .padding([.trailing, .leading], 16)
          Spacer()

        }
        .background(RoundedRectangle(cornerRadius: 0))
        .foregroundStyle(.white)
        VStack {
          Button(action: {
          }, label: {
            ZStack {
              RoundedRectangle(cornerRadius: 15)
                .foregroundColor(.blue)
                .frame(height: 48)
              Text("Cупер!")
                .sfPro(16, weight: .medium)
                .foregroundStyle(.white)
            }
          })
          .padding([.leading, .trailing], 16)
          .padding(.bottom, 21)
        }
        .frame(height: 88)
        .background(RoundedRectangle(cornerRadius: 0))
        .foregroundStyle(.white)
      }}
    .ignoresSafeArea()
  }
}

#Preview {
  PaidView(viewModel: PaidViewModel(coordinator: PaidCoordinator()))
}
