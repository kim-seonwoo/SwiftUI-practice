//
//  ConditionalBootcamp.swift
//  SwiftUI-practice
//
//  Created by Seonwoo Kim on 2/8/24.
//

import SwiftUI

struct ConditionalBootcamp: View {
    @State var isTrue: Bool = true
    
    var body: some View {
        Button("Button: \(isTrue.description)") {
            isTrue.toggle()
        }
        
        if isTrue {
            Circle()
                .frame(width: 100, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
        } else {
            Rectangle()
                .frame(width: 100, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
        }
    }
}

#Preview {
    ConditionalBootcamp()
}
