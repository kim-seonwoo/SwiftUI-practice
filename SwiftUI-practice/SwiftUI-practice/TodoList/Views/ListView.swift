//
//  ListView.swift
//  SwiftUI-practice
//
//  Created by Seonwoo Kim on 2/16/24.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        List {
            ListRowView()
        }
        .navigationTitle("Todo List")
    }
}

#Preview {
    ListView()
}


