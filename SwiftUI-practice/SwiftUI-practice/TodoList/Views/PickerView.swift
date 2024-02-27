//
//  SwiftUIView.swift
//  SwiftUI-practice
//
//  Created by Seonwoo Kim on 2/26/24.
//

import SwiftUI

struct PickerView: View {
    @State private var selectedNumber = 0
    
    var body: some View {
        VStack {
            Text("Selected number: \(selectedNumber)")
                .padding()
            
            Picker("Select a number", selection: $selectedNumber) {
                ForEach(0..<101) { number in
                    Text("\(number)")
                }
            }
            .pickerStyle(.wheel)
            .labelsHidden()
            .frame(width: 100, height: 150) // 다이얼 크기 조정
            .clipped() // 크기 조절 후의 내용 잘라내기
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        PickerView()
    }
}
