//
//  SwiftUI_practiceApp.swift
//  SwiftUI-practice
//
//  Created by Seonwoo Kim on 2/6/24.
//



import SwiftUI
import KakaoSDKCommon
import KakaoSDKAuth

@main
struct SwiftUI_practiceApp: App {
    init() {
        // Kakao SDK 초기화
        KakaoSDK.initSDK(appKey:"c7d3f8f7ad71395d5532803926da17ce")
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .onOpenURL { url in
                    if (AuthApi.isKakaoTalkLoginUrl(url)) {
                        _ = AuthController.handleOpenUrl(url: url)
                    }
                }
        }
    }
}
