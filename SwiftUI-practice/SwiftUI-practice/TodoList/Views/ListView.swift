//
//  ListView.swift
//  SwiftUI-practice
//
//  Created by Seonwoo Kim on 2/16/24.
//

import SwiftUI

struct ListView: View {
    
    @EnvironmentObject var listViewModel: ListViewModel
    @State var isPresented = false

    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("전투 병력: \(listViewModel.countCompleted())명")
            Text("\(listViewModel.soldierLevel())".uppercased())
            Button(action: {
                self.isPresented.toggle()
            }) {
                Text("MY ARMY")
                    .foregroundColor(.primary)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(.placeholder)
                    .cornerRadius(10)
            }
            .sheet(isPresented: $isPresented) {
                MyPageView()
            }
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
            .navigationTitle("김선우의 \(listViewModel.nameGroup())")
            .navigationBarItems(leading: EditButton()
                , trailing: NavigationLink("Add", destination: AddView()
                                      )).foregroundColor(.primary)
        }
        .padding(20)
    }
}

#Preview {
    NavigationView {
        ListView()
    }
    .environmentObject(ListViewModel())
}


