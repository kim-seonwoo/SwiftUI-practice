//
//  LandmarkList.swift
//  SwiftUI-practice
//
//  Created by Seonwoo Kim on 2/20/24.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
           NavigationSplitView {
               List(landmarks) { landmark in
                   NavigationLink {
                       LandmarkDetail(landmark: landmark)
                   } label: {
                       LandmarkRow(landmark: landmark)
                   }
               }
               .navigationTitle("Landmarks")
           } detail: {
               Text("Select a Landmark")
           }
       }
}
    #Preview {
        LandmarkList()
    }
