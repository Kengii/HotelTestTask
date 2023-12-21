//
//  StarView.swift
//  HotelTestTask
//
//  Created by Владимир Данилович on 21.12.23.
//

import SwiftUI

struct StarView: View {

  var count: Int
  var name: String

  var body: some View {
    HStack {
      Image("Star")
        .padding(.leading, 5)
      Text("\(count)")
        .sfPro(16, weight: .medium)
        .foregroundColor(Color(uiColor: UIColor(red: 1, green: 0.66, blue: 0, alpha: 1)))
        .padding(.leading, -4)
      Text(name)
        .sfPro(16, weight: .medium)
        .foregroundColor(Color(uiColor: UIColor(red: 1, green: 0.66, blue: 0, alpha: 1)))
        .padding(.leading, -4)
    }
    .frame(width: 149)
      .background(RoundedRectangle(cornerRadius: 5))
      .foregroundColor(Color(uiColor: UIColor(red: 1, green: 0.78, blue: 0, alpha: 0.2)))
  }
}

#Preview {
  StarView(count: 5, name: "Превосходно")
}
