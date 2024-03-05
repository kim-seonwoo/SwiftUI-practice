//
//  LandmarkContentView.swift
//  SwiftUI-practice
//
//  Created by Seonwoo Kim on 3/5/24.
//

import SwiftUI


struct LandmarkContentView: View {
    @State private var selection: Tab = .featured


    enum Tab {
        case featured
        case list
    }


    var body: some View {
        TabView(selection: $selection) {
            CategoryHome()
                .tabItem {
                    Label("Featured", systemImage: "star")
                }
                .tag(Tab.featured)


            LandmarkList()
                .tabItem {
                    Label("List", systemImage: "list.bullet")
                }
                .tag(Tab.list)
        }
    }
}


#Preview {
    LandmarkContentView()
        .environment(ModelData())
}
