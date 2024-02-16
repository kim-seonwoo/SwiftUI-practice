//
//  ShapeBootcamp.swift
//  SwiftUI-practice
//
//  Created by Seonwoo Kim on 2/6/24.
//

import SwiftUI

struct ShapeBootcamp: View {
    var body: some View {
        Circle()
//            .fill(.blue)
//            .foregroundColor(.pink)
//            .stroke(style: /*@START_MENU_TOKEN@*/StrokeStyle()/*@END_MENU_TOKEN@*/)
            .trim(from: 0.3, to: /*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    ShapeBootcamp()
}
