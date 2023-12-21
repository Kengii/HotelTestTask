//
//  AboutHotel.swift
//  HotelTestTask
//
//  Created by Владимир Данилович on 21.12.23.
//

import SwiftUI

struct AboutHotel: View {
    var body: some View {
      VStack {
        HStack {
          Image("emoji")
          VStack(alignment: .leading) {
            Text("Удобства")
              .sfPro(16, weight: .medium)
              .foregroundStyle(.black)
            Text("Самое необходимое")
              .sfPro(14, weight: .medium)
              .foregroundColor(.gray)
          }
          Spacer()
          Image(systemName: "chevron.right")
            .foregroundStyle(.black)
        }
          .padding([.trailing, .leading], 45)
        RoundedRectangle(cornerRadius: 0)
          .frame(width: 275, height: 1)
          .foregroundColor(Color(uiColor: .lightGray))
          .padding(10)

        HStack {
          Image("tick")
          VStack(alignment: .leading) {
            Text("Что включено")
              .sfPro(16, weight: .medium)
              .foregroundStyle(.black)
            Text("Самое необходимое")
              .sfPro(14, weight: .medium)
              .foregroundColor(.gray)
          }
          Spacer()
          Image(systemName: "chevron.right")
            .foregroundStyle(.black)
        }
        .padding([.trailing, .leading], 45)
        RoundedRectangle(cornerRadius: 0)
          .frame(width: 275, height: 1)
          .foregroundColor(Color(uiColor: .lightGray))
          .padding(10)
        HStack {
          Image("close")
          VStack(alignment: .leading) {
            Text("Что не включено")
              .foregroundStyle(.black)
              .sfPro(16, weight: .medium)
            Text("Самое необходимое")
              .sfPro(14, weight: .medium)
              .foregroundColor(.gray)
          }
          Spacer()
          Image(systemName: "chevron.right")
            .foregroundStyle(.black)
        }
        .padding([.trailing, .leading], 45)
      }
      .background(RoundedRectangle(cornerRadius: 15))
      .foregroundStyle(Color(uiColor: UIColor(red: 0.984, green: 0.984, blue: 0.988, alpha: 1)))
    }
}

#Preview {
    AboutHotel()
}
