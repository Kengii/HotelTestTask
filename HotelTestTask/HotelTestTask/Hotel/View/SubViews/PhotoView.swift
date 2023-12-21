//
//  PhotoView.swift
//  HotelTestTask
//
//  Created by Владимир Данилович on 21.12.23.
//

import SwiftUI

struct PhotoView: View {

  var imageUrls: [URL]
  let columns = [GridItem(.fixed(257))]

  var body: some View {
    TabView {
      ForEach(imageUrls, id: \.self) { url in
        AsyncImage(
          url: url,
          transaction: Transaction(animation: .easeInOut)
        ) { phase in
          switch phase {
          case .empty:
            ProgressView()
          case .success(let image):
            image
              .resizable()
              .aspectRatio(contentMode: .fill)
              .transition(.scale(scale: 0.1, anchor: .center))
          case .failure:
            Image(systemName: "wifi.slash")
          @unknown default:
            EmptyView()
          }
        }
          .frame(height: 257)
      }
    }
      .tabViewStyle(.page(indexDisplayMode: .always))
      .indexViewStyle(.page(backgroundDisplayMode: .always))
      .clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
  }
}
