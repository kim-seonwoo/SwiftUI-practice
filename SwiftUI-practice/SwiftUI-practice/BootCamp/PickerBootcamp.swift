//
//  PickerBootcamp.swift
//  SwiftUI-practice
//
//  Created by Seonwoo Kim on 2/13/24.
//

import SwiftUI

struct PickerBootcamp: View {
    
    var colors = ["red", "green", "blue"]
     @State var selectedColor = ""
    
    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor.red
        let attributes: [NSAttributedString.Key:Any] = [
            .foregroundColor: UIColor.white
        ]
        UISegmentedControl.appearance().setTitleTextAttributes(attributes, for: .selected)
    }
    
    var body: some View {
      VStack {
        Picker("Choose a color", selection: $selectedColor) {
          ForEach(colors, id: \.self) {
            Text($0)
          }
        }
        .pickerStyle(.segmented)
        .background(.yellow)
        .cornerRadius(15)
        .padding()
        
        Text("You selected: \(selectedColor)")
      }
    }
}

#Preview {
    PickerBootcamp()
}
