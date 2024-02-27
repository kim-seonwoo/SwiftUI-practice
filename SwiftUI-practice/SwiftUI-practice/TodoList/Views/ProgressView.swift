//
//  ProgressView.swift
//  SwiftUI-practice
//
//  Created by Seonwoo Kim on 2/26/24.
//
import SwiftUI

struct ProgressBarView: View {
    @Binding var progress: Double
    let totalSteps = 6
    
    var body: some View {
        VStack {
            Text("진행 상황: \(Int(progress * 100))%")
            ZStack(alignment: .leading) {
                Rectangle()
                    .foregroundColor(.gray)
                    .frame(width: 300, height: 10)
                    .cornerRadius(10.0)// 막대의 크기 설정
                Rectangle()
                    .foregroundColor(.purple)
                    .frame(width: CGFloat(progress) * 300, height: 10)
                    .cornerRadius(10.0)
                    .animation(.spring())
                    // 현재 진행 상황에 맞게 너비 조정
            }
            .padding()
            
            
        }
        .padding()

    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ProgressBarView(progress: $progress)
//    }
//}
