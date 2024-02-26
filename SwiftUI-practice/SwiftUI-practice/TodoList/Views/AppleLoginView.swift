//
//  AppleLoginView.swift
//  SwiftUI-practice
//
//  Created by Seonwoo Kim on 2/23/24.
//

import SwiftUI



import AuthenticationServices








struct SignInWithAppleButtonView: UIViewRepresentable {
    
    
    
    
    
    
    
    typealias UIViewType = UIView
    
    
    
    
    
    
    
    func makeUIView(context: Context) -> UIView {
        
        
        
        return ASAuthorizationAppleIDButton()
        
        
        
    }
    
    
    
    
    
    
    
    func updateUIView(_ uiView: UIView, context: Context) {
        
        
        
        //
        
        
        
    }
    
    
    
}








struct LoginView: View {
    
    
    
    var body: some View {
        
        
        
        SignInWithAppleButtonView()
        
        
        
            .frame(width: 280, height: 60, alignment: .center)
        
        
        
            .onTapGesture { self.showAppleLogin() }
        
        
        
    }
    
    
    
    
    
    
    
    private func showAppleLogin() {
        
        
        
        let request = ASAuthorizationAppleIDProvider().createRequest()
        
        
        
        request.requestedScopes = [.email, .fullName]
        
        
        
        let controller = ASAuthorizationController(authorizationRequests: [request])
        
        
        
        controller.performRequests()
        
        
        
    }
    
    
    
}

#Preview {
    LoginView()
}
