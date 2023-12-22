//
//  HotelView.swift
//  HotelTestTask
//
//  Created by Владимир Данилович on 21.12.23.
//

import SwiftUI

struct HotelView: View {

  @StateObject var viewModel: HotelViewModel

  var body: some View {
    ZStack {
      Color(uiColor: .lightBackground)
      VStack {
        ScrollView(.vertical, showsIndicators: false) {
          VStack(alignment: .leading, content: {
            Text("Отель")
              .sfPro(18, weight: .medium)
              .foregroundStyle(.black)
              .padding(.top, 63)
              .padding(.horizontal, 170)
            PhotoView(imageUrls: viewModel.hotel.imageUrls)
              .frame(height: 257)
              .padding([.top, .trailing, .leading], 16)
            StarView(count: viewModel.hotel.rating, name: viewModel.hotel.ratingName)
              .padding([.leading, .top], 16)
            Text(viewModel.hotel.name)
              .sfPro(22, weight: .medium)
              .foregroundStyle(.black)
              .padding(.top, 13)
              .padding([.leading, .trailing], 16)
              .multilineTextAlignment(.leading)
            Button {
              print("tapAdress")
            } label: {
              Text(viewModel.hotel.adress)
                .sfPro(14, weight: .medium)
                .foregroundStyle(.blue)
            }
              .padding(.top, 8)
              .padding(.leading, 16)
            PriceView(price: viewModel.hotel.minimalPrice, priceForIt: viewModel.hotel.priceForIt)
              .padding([.leading, .top, .bottom], 16)
          })
            .background(RoundedRectangle(cornerRadius: 15))
            .foregroundColor(.white)
          VStack(alignment: .leading, content: {
            Text("Об отеле")
              .sfPro(22, weight: .medium)
              .foregroundStyle(.black)
              .padding([.leading, .top], 16)
            PeculiaritiesV(data: viewModel.hotel.aboutTheHotel.peculiarities, spacing: 8, alignment: viewModel.alignment) { item in
              Text(verbatim: item)
                .sfPro(16, weight: .medium)
                .foregroundStyle(.gray)
                .padding(8)
                .background(RoundedRectangle(cornerRadius: 5)
                  .fill(Color(uiColor: UIColor(red: 0.984, green: 0.984, blue: 0.988, alpha: 1))))
            }
              .padding(.horizontal, 8)
              .padding([.leading, .top], 16)
            Text(viewModel.hotel.aboutTheHotel.description)
              .sfPro(16, weight: .regular)
              .foregroundStyle(.black)
              .padding(.leading, 16)
              .padding(.top, 12)
            AboutHotel()
              .padding([.top, .leading, .bottom], 16)
          })
            .background(RoundedRectangle(cornerRadius: 15))
            .foregroundColor(.white)
            .padding(.top, 8)
        }
          .ignoresSafeArea()
        VStack {
          Button(action: {
            viewModel.goToRoom()
          }, label: {
              ZStack {
                RoundedRectangle(cornerRadius: 15)
                  .foregroundColor(.blue)
                  .frame(height: 48)
                Text("К выбору номера")
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
      }
    }
      .ignoresSafeArea()
  }
}

#Preview {
  HotelView(viewModel: HotelViewModel(coordinator: HotelCoordinator()))
}
