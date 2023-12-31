//
//  SectionTouristView.swift
//  HotelTestTask
//
//  Created by Владимир Данилович on 25.12.23.
//

import SwiftUI

struct SectionTouristView: View {

  var section: String
  var expanded: Bool

  var body: some View {
    ZStack {
RoundedRectangle(cornerRadius: 15)
        .foregroundStyle(.white)
        .frame(height: 58)
      HStack {
        Text(section)
          .sfPro(22, weight: .medium)
          .foregroundStyle(.black)
        Spacer()
        Image(systemName: "chevron.up")
          .background(RoundedRectangle(cornerRadius: 10)
            .foregroundStyle(Color(uiColor: UIColor(red: 0.051, green: 0.447, blue: 1, alpha: 0.1)))
            .frame(width: 32, height: 32))
          .foregroundColor(.blue)
          .rotationEffect(Angle.degrees(expanded ? 180 : 0))
      }
    }
  }
}

