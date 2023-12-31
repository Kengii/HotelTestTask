//
//  TouristTextFieldView.swift
//  HotelTestTask
//
//  Created by Владимир Данилович on 25.12.23.
//

import SwiftUI

struct TouristTextFieldView: View {

  var touristTextField: String
  @State var text: String

  var body: some View {
    VStack(alignment: .leading, spacing: 8) {
      TextField(touristTextField, text: $text)
        .frame(height: 52)
        .padding(.leading, 16)
    }.background(RoundedRectangle(cornerRadius: 15)
      .foregroundStyle(Color(uiColor: .lightBackground)))
  }
}
