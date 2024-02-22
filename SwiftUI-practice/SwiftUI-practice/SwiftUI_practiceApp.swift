//
//  SwiftUI_practiceApp.swift
//  SwiftUI-practice
//
//  Created by Seonwoo Kim on 2/6/24.
//

import SwiftUI

@main
struct SwiftUI_practiceApp: App {
    @State private var modelData = ModelData()
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    @State var isLaunching: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isLaunching {
                SplashView()
                    .onAppear {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                            isLaunching = false
                        }
                    }
            } else {
                NavigationView {
//                    LandmarkRow(landmark: ModelData().landmarks[0])
//                        .environment(modelData)
                    
                    IntroView()
                }
                .environmentObject(listViewModel)
            }
        }
        
    }
}



