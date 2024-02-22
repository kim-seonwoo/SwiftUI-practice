//
//  ListRowView.swift
//  SwiftUI-practice
//
//  Created by Seonwoo Kim on 2/16/24.
//

import SwiftUI

struct ListRowView: View {
    
    let item: ItemModel
    
    var body: some View {
        ZStack {
            HStack {
                Image(systemName: item.isCompleted ? "checkmark.circle" : "circle")
                    .foregroundColor(item.isCompleted ? .green : .red)
                Text(item.title)
                    .foregroundColor(.primary)
                Spacer()
            }
            .font(.title2)
            .padding(.vertical, 8)
        }
    }
}

#if DEBUG
struct ListRowView_Previews: PreviewProvider {
    static var previews: some View {
        return Group {
            ListRowView(item: ItemModel(title: "First", isCompleted: true))
        }
        .previewLayout(.sizeThatFits)
    }
}
#endif
