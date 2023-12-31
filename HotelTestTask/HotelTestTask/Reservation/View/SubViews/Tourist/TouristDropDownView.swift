//
//  TouristDropDownView.swift
//  HotelTestTask
//
//  Created by Владимир Данилович on 27.12.23.
//

import SwiftUI

struct TouristDropDownView: View {

  @EnvironmentObject var vm: ReservationViewModel

  @State var isExpanded: Bool = false

  @State var height: CGFloat = 58

  var body: some View {
    ForEach(vm.sections, id: \.self) { section in
      ZStack {
        RoundedRectangle(cornerRadius: 15)
          .foregroundStyle(.white)
        VStack(spacing: 8, content: {
          SectionTouristView(section: section, expanded: isExpanded)
          .onTapGesture {
            withAnimation {
              isExpanded.toggle()
              if isExpanded {
                height = CGFloat(vm.textFieldText.count * 40)
              }
              else {
                height = 58
              }
            }
          }
          .padding([.trailing, .leading], 16)
          if isExpanded {
            ForEach(vm.tourists, id: \.self) { tourist in
              TouristTextFieldView(touristTextField: tourist, text: vm.text)
            }
          }
        })
      }
    }
    .frame(height: height)
  }
}


#Preview {
    TouristDropDownView()
    .environmentObject(ReservationViewModel(coordinator: ReservationCoordinator()))
}
