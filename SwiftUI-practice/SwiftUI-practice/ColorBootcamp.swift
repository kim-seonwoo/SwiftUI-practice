//
//  ColorBootcamp.swift
//  SwiftUI-practice
//
//  Created by Seonwoo Kim on 2/6/24.
//

import SwiftUI

struct ColorBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
            .fill(Color(UIColor.lightGray))
            .frame(width: 300, height: 200)
        
    }
}

#Preview {
    ColorBootcamp()
}
