//
//  TransitionBootcamp.swift
//  SwiftUI-practice
//
//  Created by Seonwoo Kim on 2/12/24.
//

import SwiftUI

struct TransitionBootcamp: View {
    
    @State var shadow: Bool = false
    
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                Button("Button") {
                    shadow.toggle()
                }
                Spacer()
            }
            
            if shadow {
                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                    .frame(height: UIScreen.main.bounds.height*0.5)
                    .transition(.asymmetric(insertion: .move(edge: .bottom), removal: AnyTransition.opacity.animation(.easeInOut(duration: 0.5))))
                    .animation(.easeInOut)
            }
        }
    }
}

#Preview {
    TransitionBootcamp()
}
