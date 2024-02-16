//
//  MyPageView.swift
//  SwiftUI-practice
//
//  Created by Seonwoo Kim on 2/16/24.
//

import SwiftUI

struct MyPageView: View {
    
    @EnvironmentObject var listViewModel: ListViewModel
    @State var animate: Bool = false
    
    var body: some View {
        ScrollView {
            VStack {
                Spacer()
                Text("ARMY")
                    .font(.title)
                    .fontWeight(.bold)
                    .fontDesign(.rounded)
                    .foregroundColor(.black)
                
                let columns: [GridItem] = Array(repeating: .init(.flexible()), count: 5)
                LazyVGrid(columns: columns) {
                    ForEach(0..<listViewModel.countCompleted(), id: \.self) { _ in
                        Image(listViewModel.soldierLevel())
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100)
                            .padding()
                            .onAppear(perform: animation)
                    }
                }
            }
        }
        .background(.white)
    }
    
    func animation() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 4.5) {
            withAnimation(.easeInOut) {
                animate.toggle()
            }
        }
    }
}


#Preview {
    MyPageView()
        .environmentObject(ListViewModel())
}
