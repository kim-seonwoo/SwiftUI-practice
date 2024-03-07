////
////  ProfileView.swift
////  SwiftUI-practice
////
////  Created by Seonwoo Kim on 2/15/24.
////
//
//import SwiftUI
//import KakaoSDKUser
//
//struct ProfileView: View {
//    
//    @AppStorage("name") var currentUserName: String?
//    @AppStorage("age") var currentUserAge: Int?
//    @AppStorage("gender") var currentUserGender: String?
//    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
//    
//    var body: some View {
//        VStack {
//            Image(systemName: "person.circle.fill")
//                .resizable()
//                .scaledToFit()
//                .frame(width: 150, height: 150)
//            Text(currentUserName ?? "Your name here")
//            Button {
//                if (UserApi.isKakaoTalkLoginAvailable()) {
//                    UserApi.shared.me { User, Error in
//                        if let name = User?.kakaoAccount?.profile?.nickname {
//                            print(name)
//                        }
//                        if let mail = User?.kakaoAccount?.email {
//                            print(mail)
//                        }
//                        if let profile = User?.kakaoAccount?.profile?.profileImageUrl {
//                            print(profile)
//                        }
//                    }
//                    UserApi.shared.loginWithKakaoTalk {(oauthToken, error) in
//                        print(oauthToken)
//                        print(error)
//                    }
//                } else {
//                    UserApi.shared.loginWithKakaoAccount {(oauthToken, error) in
//                        print(oauthToken)
//                        print(error)
//                    }
//                }
//            } label : {
//                Image("dragon")
//                    .resizable()
//                    .aspectRatio(contentMode: .fit)
//                    .frame(width : UIScreen.main.bounds.width * 0.9)
//            }
//            
//            Text("This user is \(currentUserAge ?? 0) years old")
//            Text("Their gender is \(currentUserGender ?? "unknown")")
//            Text("Sign Out")
//                .foregroundColor(.white)
//                .frame(height: 55)
//                .frame(maxWidth: .infinity)
//                .background(.black)
//                .font(.headline)
//                .cornerRadius(10)
//                .onTapGesture {
//                    signOut()
//                }
//            //            Text("Main")
//            //                .foregroundColor(.white)
//            //                .frame(height: 55)
//            //                .frame(maxWidth: .infinity)
//            //                .background(.black)
//            //                .font(.headline)
//            //                .cornerRadius(10)
//            //                .onTapGesture {
//            //                    print(path)
//            //                    pushToMain()
//            //                    print(path)
//            //                }
//            
//            NavigationLink(destination: ListView()) {
//                Text("Main")
//                    .foregroundColor(.white)
//                    .frame(height: 55)
//                    .frame(maxWidth: .infinity)
//                    .background(.black)
//                    .font(.headline)
//                    .cornerRadius(10)
//            }
//        }
//        .font(.title)
//        .foregroundColor(.purple)
//        .padding(.vertical, 50)
//        .background(.white)
//        .cornerRadius(10)
//        .shadow(radius: 10)
//        .padding(40)
//    }
//    
//    
//    func signOut() {
//        currentUserName = nil
//        currentUserAge = nil
//        currentUserGender = nil
//        withAnimation(.spring()) {
//            currentUserSignedIn = false
//        }
//    }
//}
//
//#Preview {
//    ProfileView()
//}
//
//// 루트 뷰 변경 코드
////struct NavigationUtil {
////  static func popToRootView() {
////      let keyWindow = UIApplication.shared.connectedScenes
////              .filter({$0.activationState == .foregroundActive})
////              .compactMap({$0 as? UIWindowScene})
////              .first?.windows
////              .filter({$0.isKeyWindow}).first
////    findNavigationController(viewController: keyWindow?.rootViewController)?
////      .popToRootViewController(animated: true)
////  }
//// 
////  static func findNavigationController(viewController: UIViewController?) -> UINavigationController? {
////    guard let viewController = viewController else {
////      return nil
////    }
//// 
////    if let navigationController = viewController as? UINavigationController {
////      return navigationController
////    }
//// 
////    for childViewController in viewController.children {
////      return findNavigationController(viewController: childViewController)
////    }
//// 
////    return nil
////  }
////}
