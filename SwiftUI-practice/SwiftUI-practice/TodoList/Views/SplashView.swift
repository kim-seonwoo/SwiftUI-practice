//
//  SplashView.swift
//  SwiftUI-practice
//
//  Created by Seonwoo Kim on 2/16/24.
//

import SwiftUI

struct SplashView: View {
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack {
                Image("splash")
                LoginView()
                    .frame(width: 100)
                    .frame(maxWidth: .infinity)
            }
        }
    }
}


#Preview {
    SplashView()
}
