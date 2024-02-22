//
//  OnboardingView.swift
//  SwiftUI-practice
//
//  Created by Seonwoo Kim on 2/14/24.
//

import SwiftUI

struct OnboardingView: View {
    
    // 0-Welcome Screen, 1-Add name, 2-Add age, 3-Add gender
    @State var onboardingState: Int = 0
    let transition: AnyTransition = .asymmetric(insertion: .move(edge: .trailing), removal: .move(edge: .leading))
    
    @State var name: String = ""
    @State var age: Double = 50
    @State var gender: String = ""
    
    @State var alertTitle: String = ""
    @State var showAlert: Bool = false
    
    //app Storage
    @AppStorage("name") var currentUserName: String?
    @AppStorage("age") var currentUserAge: Int?
    @AppStorage("gender") var currentUserGender: String?
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    
    var body: some View {
        ZStack{
            // contetnt
            ZStack {
                switch onboardingState {
                case 0:
                    welcomeSection
                        .transition(transition)
                case 1:
                    addNameSection
                        .transition(transition)
                case 2:
                    addAgeSection
                        .transition(transition)
                case 3:
                    addGenderSection
                        .transition(transition)
                default:
                    RoundedRectangle(cornerRadius: 25.0 )
                        .foregroundColor(.green)
                }
            }
            VStack {
                Spacer()
                bottomButton
            }
            .padding(30)
        }
        .alert(isPresented: $showAlert, content: {
            return Alert(title: Text(alertTitle))
        })
    }
}

#Preview {
    OnboardingView()
        .background(.purple)
}

//MARK: COMPONENTS
extension OnboardingView {
    
    private var bottomButton: some View {
        Text(onboardingState == 0 ? "Sign Up" :
                onboardingState == 3 ? "Finish" : "Next"
        )
        .font(.headline)
        .foregroundColor(.purple)
        .frame(height: 55)
        .frame(maxWidth: .infinity)
        .cornerRadius(10)
        .background(.white)
        //            .animation(nil)
        .onTapGesture {
            handleNextButtonPressed()
        }
    }
    
    private var welcomeSection: some View {
        VStack(spacing: 40, content: {
            Image(systemName: "heart.text.square.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .foregroundColor(.white)
            Text("Find your match.")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .overlay(
                    Capsule(style: .continuous)
                        .frame(height: 3)
                        .offset(y: 5)
                        .foregroundColor(.white)
                    , alignment: .bottom
                )
            Text("This is the #1 app for find")
                .fontWeight(.medium)
                .foregroundColor(.white)
            Spacer()
            Spacer()
        }).padding(50)
    }
    
    private var addNameSection: some View {
        VStack(spacing: 40, content: {
            Text("What's Your Name?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            TextField("Your Name Here", text: $name)
                .font(.headline)
                .frame(height: 55)
                .padding(.horizontal)
                .background(.white)
                .cornerRadius(5.0)
            Spacer()
            Spacer()
        }).padding(50)
    }
    
    private var addAgeSection: some View {
        VStack(spacing: 40, content: {
            Text("What's Your age?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            Text("\(Int(age))")
                .fontWeight(.semibold)
                .font(.title3)
                .foregroundColor(.white)
            Slider(value: $age, in: 18...100, step: 1)
                .accentColor(.white)
            Spacer()
            Spacer()
        }).padding(50)
    }
    
    private var addGenderSection: some View {
        VStack(spacing: 40, content: {
            Text("What's Your Gender?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            Picker(selection: $gender, label: Text("Select a gender!!!")
                   , content: {
                Text("Male").tag("Male")
                Text("Female").tag("Female")
            })
            .pickerStyle(.menu)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(.white)
            .cornerRadius(10)
            .accentColor(.purple)
            Spacer()
            Spacer()
        }).padding(50)
    }
}

extension OnboardingView {
    func handleNextButtonPressed() {
        
        //Check Inputs
        switch onboardingState {
        case 1:
            guard name.count >= 3 else {
                showAlert(title: "3글자 이상 입력해주세요!")
                return
            }
        case 3:
            guard gender.count > 1 else {
                showAlert(title: "성별을 입력 해주세요!")
                return
            }
        default:
            break
        }
        
        // GO to next section
        if onboardingState == 3 {
            signIn()
        } else {
            withAnimation(.spring()) {
                onboardingState += 1
            }
        }
    }
    
    func signIn() {
        currentUserName = name
        currentUserAge = Int(age)
        currentUserGender = gender
        showAlert(title: "온보딩 종료")
        withAnimation(.spring()) {
            currentUserSignedIn = true
        }
    }
    
    func showAlert(title: String) {
        alertTitle = title
        showAlert.toggle()
    }
}
