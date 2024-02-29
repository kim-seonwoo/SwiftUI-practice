//
//  SurveyButotn.swift
//  SwiftUI-practice
//
//  Created by Seonwoo Kim on 2/29/24.
//

import SwiftUI

struct SurveyButton: View, Identifiable {
    let id: String
    let title: String
    let isMultiple: Bool
    @State var isSelected = false
    
    var body: some View {
        ZStack {
            ZStack {
                Text(title)
            }
            .frame(height: 62)
            .frame(maxWidth: .infinity)
            .background {
                Color.gray.opacity(0.3)
            }
            .border(isSelected ? Color.gray : Color.red)
            .cornerRadius(10.0)
            .foregroundColor(.black)
            
        }
        .padding(.horizontal, 20.0)
        .onTapGesture {
            tapSurveyButton()
        }
    }
    
    func tapSurveyButton() {
        isSelected.toggle()
    }
}

#Preview {
    SurveyButton(id: "1", title: "1-4 시간", isMultiple: true)
}
