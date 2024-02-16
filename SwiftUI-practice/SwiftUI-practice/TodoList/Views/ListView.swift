//
//  ListView.swift
//  SwiftUI-practice
//
//  Created by Seonwoo Kim on 2/16/24.
//

import SwiftUI

struct ListView: View {
    
    @EnvironmentObject var listViewModel: ListViewModel
    
    var body: some View {
        VStack {
            Text("\(listViewModel.items.count)개")
                .font(.title3)
                .frame(maxWidth: .infinity)
                .frame(alignment: .leading)
            List {
                ForEach(listViewModel.items) { item in
                    ListRowView(item: item)
                        .onTapGesture {
                            withAnimation(.linear) {
                                listViewModel.updateItem(item: item)
                            }
                        }
                }
                .onDelete(perform: listViewModel.deleteItem)
                .onMove(perform: listViewModel.moveItem)
            }
            .listStyle(.plain)
            .navigationTitle("김선우의 Todo")
            .navigationBarItems(leading: EditButton()
                , trailing: NavigationLink("Add", destination: AddView()
                                      )).foregroundColor(.black)
        }
    }
}

#Preview {
    NavigationView {
        ListView()
    }
    .environmentObject(ListViewModel())
}


