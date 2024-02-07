//
//  FrameBootcamp.swift
//  SwiftUI-practice
//
//  Created by Seonwoo Kim on 2/7/24.
//

import SwiftUI

struct FrameBootcamp: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .background(.red)
            .frame(width: 200, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
            .background(.yellow)
            .frame(minWidth: 400)
            .background(.pink)
    }
}

#Preview {
    FrameBootcamp()
}
