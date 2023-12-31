//
//  HotelBlock.swift
//  HotelTestTask
//
//  Created by Владимир Данилович on 23.12.23.
//

import SwiftUI

struct HotelBlock: View {

  var name: String
  var adress: String
  var rating: Int
  var ratingName: String

  var body: some View {
    ZStack { // ------
      RoundedRectangle(cornerRadius: 15)
        .foregroundColor(.white)
      VStack(alignment: .leading) {
        StarView(count: rating, name: ratingName)
          .padding(.top, 16)
        Text(name)
          .sfPro(22, weight: .medium)
          .foregroundStyle(.black)
          .padding(.top, -8)
        Button(action: {
          print("tapAdrees")
        }, label: {
          Text(adress)
            .sfPro(14, weight: .medium)
            .foregroundStyle(.blue)
        })
        .padding(.top, -8)
        .padding(.bottom, 16)
      }
//      .background(RoundedRectangle(cornerRadius: 15)
//        .foregroundStyle(.white))
    }
  }
}

          #Preview {
            HotelBlock(name: "Resort", adress: "Egyot", rating: 5, ratingName: "Превосходно")
          }
