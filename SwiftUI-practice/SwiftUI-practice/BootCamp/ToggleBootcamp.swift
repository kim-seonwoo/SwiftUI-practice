//
//  ToggleBootcamp.swift
//  SwiftUI-practice
//
//  Created by Seonwoo Kim on 2/13/24.
//

import SwiftUI

struct ToggleBootcamp: View {
    
    @State var toggleIsOn: Bool = false
    var body: some View {
        Toggle(isOn: $toggleIsOn, label: {
            /*@START_MENU_TOKEN@*/Text("Label")/*@END_MENU_TOKEN@*/
        })
        .toggleStyle(SwitchToggleStyle(tint: .teal))
    }
}

#Preview {
    ToggleBootcamp()
}
