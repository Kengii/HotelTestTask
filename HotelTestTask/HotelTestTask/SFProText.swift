//
//  SFProText.swift
//  HotelTestTask
//
//  Created by Владимир Данилович on 21.12.23.
//

import SwiftUI

extension Font {
  static func sfPro(size: CGFloat, weight: Weight) -> Font {
    switch weight {
    case .medium:
        .custom("SFProDisplay-Medium", size: size)
    case .semibold:
        .custom("SFProDisplay-Bold", size: size)
    case .bold:
        .custom("SFProDisplay-Semibold", size: size)
    default:
        .custom("SFProDisplay-Regular", size: size)
    }
  }
}
extension Text {
  func sfPro(_ size: CGFloat, weight: Font.Weight) -> Text {
    self
      .font(.sfPro(size: size, weight: weight))
  }
}
