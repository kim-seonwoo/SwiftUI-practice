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
        var item1 = ItemModel(title: "First", isCompleted: true)
        var item2 = ItemModel(title: "Second", isCompleted: false)
        var item3 = ItemModel(title: "Third", isCompleted: false)
        
        return Group {
            ListRowView(item: item1)
            ListRowView(item: item2)
            ListRowView(item: item3)
        }
        .previewLayout(.sizeThatFits)
    }
}
#endif
