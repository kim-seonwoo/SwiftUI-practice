//
//  IntroView.swift
//  SwiftUI-practice
//
//  Created by Seonwoo Kim on 2/14/24.
//

import SwiftUI

struct IntroView: View {
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    @State var shouldShowListView: Bool = false
    
    var body: some View {
        ZStack {
            RadialGradient(
                gradient: Gradient(colors: [.purple, .blue]), center: .topLeading, startRadius: 5, endRadius: 500
            )
            .ignoresSafeArea()
            
            if currentUserSignedIn {
//                ProfileView()
//                    .transition(.asymmetric(insertion: .move(edge: .bottom), removal: .move(edge: .top)))
            }  else {
                OnboardingView()
                    .transition(.asymmetric(insertion: .move(edge: .top), removal: .move(edge: .bottom)))
            }
        }
    }
}

#Preview {
    IntroView()
}
