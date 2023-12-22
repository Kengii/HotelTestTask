//
//  ButtonDeatails.swift
//  HotelTestTask
//
//  Created by Владимир Данилович on 22.12.23.
//

import SwiftUI

struct ButtonDeatails: View {
  var body: some View {
    Button(action: {
      print("Подробнее")
    }, label: {
        HStack {
          Text("Подробнее о номере")
            .sfPro(16, weight: .medium)
          Image(systemName: "chevron.right")
        }
      })
      .background(RoundedRectangle(cornerRadius: 5)
        .foregroundColor(.blue)
        .opacity(0.1)
        .frame(width: 192, height: 29))
  }
}

#Preview {
  ButtonDeatails()
}
