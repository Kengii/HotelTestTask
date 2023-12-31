//
//  BuyerInformation.swift
//  HotelTestTask
//
//  Created by Владимир Данилович on 23.12.23.
//

import SwiftUI
import Combine

struct BuyerInformation: View {

  @State var phone: String
  @State var email: String
  @State var color = Color(uiColor: .red)
  @State var color1 = Color(uiColor: .lightBackground)
  @State var isEmailValid: Bool = true

  var body: some View {
    ZStack {
      Color(uiColor: .lightBackground)
      VStack(alignment: .leading, content: {
        Text("Информация о покупателе")
          .sfPro(22, weight: .medium)
          .foregroundStyle(.black)
          .padding([.leading, .top], 16)

        VStack(alignment: .leading) {
          Text("Номер телефона")
            .sfPro(12, weight: .regular)
            .padding(.top, 10)
            .padding([.leading, .trailing], 16)
            .foregroundColor(.gray)
          TextField("+7 (***) ***-**-**", text: $phone)
            .padding(.top, -10)
            .padding(.bottom, 10)
            .padding([.leading, .trailing], 16)
            .foregroundColor(.black)
            .keyboardType(.emailAddress)
            .onReceive(Just(phone)) { newValue in
            let validString = newValue.filter {
              "1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ._-+$!~&=#[]@".contains($0) }
            if validString != newValue {
              self.phone = validString
            }
          }
        }.background(RoundedRectangle(cornerRadius: 15).foregroundStyle(Color(uiColor: .lightBackground)))
          .padding([.leading, .trailing], 16)
          .padding(.top, 20)
        VStack(alignment: .leading) {
          Text("Почта")
            .sfPro(12, weight: .regular)
            .padding(.top, 10)
            .padding([.leading, .trailing], 16)
            .foregroundColor(.gray)
          TextField("email...", text: $email, onEditingChanged: { (isChanged) in
                      if !isChanged {
                          if self.textFieldValidatorEmail(self.email) {
                              self.isEmailValid = true
                          } else {
                              self.isEmailValid = false
                              self.email = ""
                          }
                      }
                  })
                      .foregroundColor(.black)
                      .autocapitalization(.none)
                      .padding([.leading, .trailing], 16)
                      .padding(.top, -10)
                      .padding(.bottom, 10)
        }
        .background(RoundedRectangle(cornerRadius: 15)
          .foregroundStyle(!isEmailValid ? color : color1)
          .opacity(!isEmailValid ? 0.15 : 1))
        .padding([.leading, .trailing], 16)
        .padding(.top, 8)

        Text("Эти данные никому не передаются. После оплаты мы вышли чек на указанный вами номер и почту")
          .sfPro(14, weight: .regular)
          .foregroundStyle(.gray)
          .padding(.top, 8)
          .padding([.trailing, .leading, .bottom], 16)

      }).background(RoundedRectangle(cornerRadius: 15)
          .foregroundStyle(.white))
    }
  }
}

extension BuyerInformation {
  func textFieldValidatorEmail(_ string: String) -> Bool {
      if string.count > 100 {
          return false
      }
      let emailFormat = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
      let emailPredicate = NSPredicate(format:"SELF MATCHES %@", emailFormat) 
      return emailPredicate.evaluate(with: string)
  }
}

#Preview {
  BuyerInformation(phone: "", email: "")
}
