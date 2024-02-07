//
//  GradientBootcamp.swift
//  SwiftUI-practice
//
//  Created by Seonwoo Kim on 2/7/24.
//

import SwiftUI

struct GradientBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
            .fill(
                LinearGradient(gradient: Gradient(colors: [Color(.red), Color.blue]), startPoint: .topLeading, endPoint: .trailing)
//                LinearGradient는 어느 단 방향으로의 그라데이션
//                AngularGradient 어느 한 포인트로 부터 퍼져나가는 그라데이션
//                RadialGradient 반반 나눈 값이고 중간에 그라데이션
            )
            .frame(width: 200, height: 300)
    }
}

#Preview {
    GradientBootcamp()
}
