//
//  OnboardingSwipeView.swift
//  SwiftUI-practice
//
//  Created by Seonwoo Kim on 2/26/24.
//

import SwiftUI

struct OnboardingSwipeView: View {
    @State private var currentPage: Int = 0
    let timer = Timer.publish(every: 2.5, on: .main, in: .common).autoconnect()

    var body: some View {
        GeometryReader { geometry in
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 0) {
                    ForEach(1..<4) { index in
                        Image("splash")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: geometry.size.width)
                            .clipped()
                    }
                }
            }
            .frame(width: geometry.size.width, height: 380) // 임의의 높이
            .offset(x: geometry.size.width * CGFloat(currentPage))
            .edgesIgnoringSafeArea(.all)

            VStack {
                Spacer()
                PageControl(numberOfPages: 3, currentPage: $currentPage)
                    .padding()
            }
        }
        .onReceive(timer) { _ in
            withAnimation {
                currentPage = (currentPage + 1) % 3
            }
        }
    }
}

struct PageControl: View {
    var numberOfPages: Int
    @Binding var currentPage: Int

    var body: some View {
        HStack {
            ForEach(0..<numberOfPages, id: \.self) { page in
                Circle()
                    .frame(width: 8, height: 8)
                    .foregroundColor(page == currentPage ? .blue : .gray)
            }
        }
    }
}
