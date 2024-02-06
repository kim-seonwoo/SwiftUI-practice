//
//  ContentView.swift
//  SwiftUI-practice
//
//  Created by Seonwoo Kim on 2/6/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            DatePicker(selection: /*@START_MENU_TOKEN@*/.constant(Date())/*@END_MENU_TOKEN@*/, label: { /*@START_MENU_TOKEN@*/Text("Date")/*@END_MENU_TOKEN@*/ })
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
