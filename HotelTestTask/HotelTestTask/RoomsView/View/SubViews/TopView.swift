//
//  TopView.swift
//  HotelTestTask
//
//  Created by Владимир Данилович on 22.12.23.
//

import SwiftUI

struct TopView: View {

  @Environment(\.dismiss) var dismiss
  let name: String

  var body: some View {
    HStack(alignment: .center) {
      Button {
        dismiss.callAsFunction()
      } label: {
        Image(systemName: "chevron.left")
          .foregroundColor(.black)
      }
      Spacer()
      Text(name)
        .sfPro(18, weight: .medium)
        .multilineTextAlignment(.center)
        .padding(.trailing, 16)
    }
  }
}
