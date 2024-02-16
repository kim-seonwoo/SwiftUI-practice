//
//  ListRowView.swift
//  SwiftUI-practice
//
//  Created by Seonwoo Kim on 2/16/24.
//

import SwiftUI

struct ListRowView: View {
    var body: some View {
        HStack {
            Image(systemName: "checkmark.circle")
            Text("First Item")
            Spacer()
        }
    }
}

#Preview {
    ListRowView()
}
