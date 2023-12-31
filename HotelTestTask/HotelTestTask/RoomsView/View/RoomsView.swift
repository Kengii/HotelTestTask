//
//  RoomsView.swift
//  HotelTestTask
//
//  Created by Владимир Данилович on 21.12.23.
//

import SwiftUI

struct RoomsView: View {

  @StateObject var viewModel: RoomsViewModel
  let columns = [GridItem(.flexible())]

  var body: some View {
    ZStack(alignment: .center) {
      Color(uiColor: .lightBackground)
        .ignoresSafeArea()
      VStack {
        HStack(alignment: .center) {
          TopView(name: viewModel.name)
            .padding(.top, 63)
            .padding([.leading, .bottom], 16)
        }.background(RoundedRectangle(cornerRadius: 0).foregroundStyle(.white))
        Spacer()
        ScrollView(.vertical) {
          LazyVGrid(columns: columns, content: {
            ForEach(viewModel.rooms, id: \.id) { room in
              VStack(alignment: .leading, content: {
                PhotoView(imageUrls: room.imageUrls)
                  .frame(height: 257)
                  .padding([.top, .trailing, .leading], 16)
                Text(room.name)
                  .sfPro(22, weight: .medium)
                  .foregroundStyle(.black)
                  .padding(.top, 8)
                  .padding(.leading, 16)
                PeculiaritiesV(data: room.peculiarities, spacing: 8, alignment: viewModel.alignment) { item in
                  Text(item)
                    .sfPro(16, weight: .medium)
                    .foregroundStyle(.gray)
                    .padding(8)
                    .background(RoundedRectangle(cornerRadius: 8)
                      .fill(Color(uiColor: .lightGray).opacity(0.1)))
                }
                  .padding([.horizontal, .top], 8)
                  .padding(.leading, 8)
                ButtonDeatails()
                  .padding(.top, 8)
                  .padding(.leading, 24)
                PriceView(price: room.price, priceForIt: room.pricePer)
                  .padding(.top, 8)
                  .padding(.leading, 16)
                Button {
                  viewModel.goToReservation()
                } label: {
                  ZStack {
                    RoundedRectangle(cornerRadius: 15)
                      .foregroundColor(.blue)
                      .frame(height: 48)
                    Text("Выбрать номер")
                      .sfPro(16, weight: .medium)
                      .foregroundStyle(.white)
                  }
                }
                  .padding([.all], 16)
              })
            }.background(RoundedRectangle(cornerRadius: 15).foregroundStyle(.white))
          })
        }
      }
    }
      .ignoresSafeArea()
  }
}

#Preview {
  RoomsView(viewModel: RoomsViewModel(coordinator: RoomsCoordinator(), name: ""))
}
