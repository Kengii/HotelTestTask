//
//  AddTourist.swift
//  HotelTestTask
//
//  Created by Владимир Данилович on 31.12.23.
//

import SwiftUI

struct AddTourist: View {

  @EnvironmentObject var vm: ReservationViewModel

    var body: some View {
      ZStack {
  RoundedRectangle(cornerRadius: 15)
          .foregroundStyle(.white)
          .frame(height: 58)
        HStack {
          Text("Добавить туриста")
            .sfPro(22, weight: .medium)
            .foregroundStyle(.black)
          Spacer()
          Button(action: {
            vm.addTourist()
          }, label: {
            Image(systemName: "plus")
              .background(RoundedRectangle(cornerRadius: 10)
                .foregroundStyle(Color(uiColor: UIColor(red: 0.051, green: 0.447, blue: 1, alpha: 0.1)))
                .frame(width: 32, height: 32))
              .foregroundColor(.blue)
          })
        }
        .padding([.trailing, .leading], 16)
      }
    }
}

#Preview {
    AddTourist()
}
