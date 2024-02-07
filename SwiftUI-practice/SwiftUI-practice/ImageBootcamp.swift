//
//  ImageBootcamp.swift
//  SwiftUI-practice
//
//  Created by Seonwoo Kim on 2/7/24.
//

import SwiftUI

struct ImageBootcamp: View {
    var body: some View {
        Image("image_ico")
            .resizable()
//            .aspectRatio(contentMode: .fill)
            .scaledToFit()
            .cornerRadius(30)
//            .foregroundColor(.red)
            .frame(width: 200, height: 300)
//            .clipped()
    }
}

#Preview {
    ImageBootcamp()
}
