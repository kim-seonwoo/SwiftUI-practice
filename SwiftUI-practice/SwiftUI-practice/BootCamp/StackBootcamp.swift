//
//  StackBootcam,p.swift
//  SwiftUI-practice
//
//  Created by Seonwoo Kim on 2/7/24.
//

import SwiftUI

struct StackBootcam_p: View {
    var body: some View {
        LazyVStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, content: {
            ForEach(1...10, id: \.self) { count in
                /*@START_MENU_TOKEN@*/Text("Placeholder \(count)")/*@END_MENU_TOKEN@*/
            }
        })

        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }
        VStack {
            Spacer()
                .frame(width: 200, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
        }
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        
    }
}

#Preview {
    StackBootcam_p()
}
