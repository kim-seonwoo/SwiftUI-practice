//
//  TextBootcamp.swift
//  SwiftUI-practice
//
//  Created by Seonwoo Kim on 2/6/24.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
////            .font(.title)
////            .fontWeight(.semibold)
////            .italic()
////            .strikethrough(true, color: .red)
//            .font(.system(size: 24, weight: .semibold, design: .serif))
            .frame(width: 200, height: 100, alignment: .leading)
            .foregroundColor(.red)
            .multilineTextAlignment(.leading)
    }
}

#Preview {
    TextBootcamp()
}
