//
//  SurveyView.swift
//  SwiftUI-practice
//
//  Created by Seonwoo Kim on 2/29/24.
//

import SwiftUI

struct SurveyView: View {
    var lists: [SurveyButton] = [
        SurveyButton(id: "2", title: "3", isMultiple: false),
        SurveyButton(id: "2", title: "2", isMultiple: false),
        SurveyButton(id: "2", title: "1", isMultiple: false)
    ]
    
    var body: some View {
        VStack {
            ForEach(lists.indices) { index in
                SurveyButtonView(button: lists[index], isSelected: index == selectedButtonIndex)
                    .onTapGesture {
                        selectedButtonIndex = index
                    }
            }
        }
    }
    
    @State private var selectedButtonIndex: Int? = nil
}

struct SurveyButtonView: View {
    let button: SurveyButton
    let isSelected: Bool
    
    var body: some View {
        ZStack {
            Text(button.title)
                .frame(height: 62)
                .frame(maxWidth: .infinity)
                .background(Color.gray.opacity(0.3))
                .border(isSelected ? Color.gray : Color.clear)
                .cornerRadius(10.0)
                .foregroundColor(.black)
        }
        .padding(.horizontal, 20.0)
    }
}


#Preview {
    SurveyView()
}
