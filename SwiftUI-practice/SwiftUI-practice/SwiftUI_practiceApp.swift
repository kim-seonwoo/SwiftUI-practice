//
//  SwiftUI_practiceApp.swift
//  SwiftUI-practice
//
//  Created by Seonwoo Kim on 2/6/24.
//

import SwiftUI

@main
struct SwiftUI_practiceApp: App {
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
                    ListView()
                }
                .environmentObject(listViewModel)
            }
        }
        
    }
}



