//
//  ProfileHost.swift
//  SwiftUI-practice
//
//  Created by Seonwoo Kim on 3/6/24.
//
import SwiftUI


struct ProfileHost: View {
    @State private var draftProfile = Profile.default
    @Environment(\.editMode) var editMode
    @Environment(ModelData.self) var modelData


    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            HStack {
                if editMode?.wrappedValue == .active {
                    Button("Cancel", role: .cancel) {
                        draftProfile = modelData.profile
                        editMode?.animation().wrappedValue = .inactive
                    }
                }
                Spacer()
                EditButton()
            }
            if editMode?.wrappedValue == .inactive {
                ProfileSummary(profile: modelData.profile)
            } else {
                ProfileEditor(profile: $draftProfile)
                    .onAppear {
                        draftProfile = modelData.profile
                    }
                    .onDisappear {
                        modelData.profile = draftProfile
                    }
            }
        }
        .padding()
    }
}


#Preview {
    ProfileHost()
        .environment(ModelData())
}
