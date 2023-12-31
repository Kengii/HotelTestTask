//
//  ReservationView.swift
//  HotelTestTask
//
//  Created by Владимир Данилович on 23.12.23.
//

import SwiftUI

struct ReservationView: View {

  @StateObject var viewModel: ReservationViewModel

  var body: some View {
    ZStack {
      Color(uiColor: .lightBackground)
      VStack {
        HStack(alignment: .center) {
          TopView(name: "Бронирование")
            .padding([.leading, .bottom], 16)
            .padding(.top, 63)
        }
          .background(RoundedRectangle(cornerRadius: 0)
            .foregroundColor(.white))
        ScrollView(.vertical) {
          HotelBlock(name: viewModel.reservation.hotelName,
            adress: viewModel.reservation.hotelAdress,
            rating: viewModel.reservation.horating,
            ratingName: viewModel.reservation.ratingName)
          ReservationDetails(departure: viewModel.reservation.departure,
            arrivalCountry: viewModel.reservation.arrivalCountry,
            dateStart: viewModel.reservation.tourDateStart,
            dateStop: viewModel.reservation.tourDateStop,
            nightsCount: viewModel.reservation.numberOfNights,
            hotelName: viewModel.reservation.hotelName,
            room: viewModel.reservation.room,
            nutrition: viewModel.reservation.nutrition)
          BuyerInformation(phone: viewModel.phoneNumber, email: viewModel.email)
          TouristDropDownView()
            .environmentObject(viewModel)
          AddTourist()
            .environmentObject(viewModel)
          TotalPrice(tourPrice: viewModel.reservation.tourPrice, fuelCharge: viewModel.reservation.fuelCharge, serviceCharge: viewModel.reservation.serviceCharge)
          VStack {
            Button(action: {
              viewModel.goToPaid()
            }, label: {
                ZStack {
                  RoundedRectangle(cornerRadius: 15)
                    .foregroundColor(.blue)
                    .frame(height: 48)
                  Text("Опдлатить \(viewModel.reservation.tourPrice + viewModel.reservation.fuelCharge + viewModel.reservation.serviceCharge) ₽")
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
}

#Preview {
  ReservationView(viewModel: ReservationViewModel(coordinator: ReservationCoordinator()))
}
