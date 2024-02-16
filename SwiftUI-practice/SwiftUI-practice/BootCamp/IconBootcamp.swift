//
//  IconBootcamp.swift
//  SwiftUI-practice
//
//  Created by Seonwoo Kim on 2/7/24.
//

import SwiftUI

struct IconBootcamp: View {
    var body: some View {
        Image(systemName: "person.fill.badge.plus")
//            .resizable()
//            .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
            .renderingMode(.original)
            .font(.system(size: 200))
//            아이콘은 글자와 같이 취급
//            .foregroundColor(.green)
            .frame(width: 200, height: 300)
//        AspectFill(비율 유지 O, 화면 꽉 채움 O, 이미지 잘림 O)
//
//        AspectFit(비율 유지 O, 화면 꽉 채움 X, 이미지 잘림 X)
//
//        ScaleToFill(비율 유지 X, 화면 꽉 채움 O, 이미지 잘림 X)
    }
}

#Preview {
    IconBootcamp()
}
