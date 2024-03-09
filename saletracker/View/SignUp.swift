//
//  SignUp.swift
//  saletracker
//
//  Created by user257152 on 2/28/24.
//

import SwiftUI

struct SignUp: View {
    @ObservedObject var signupViewModel: SignUpViewModel = SignUpViewModel()
    var body: some View {
        ZStack{
            VStack{
                Image("Logo")
                    .resizable()
                    .frame(width: 130, height: 130)
                
                Text("Welcome")
                    .font(.largeTitle)
                    .fontWeight(.medium)
                    .foregroundColor(.gray.opacity(0.6))
                
                Text("CREATE YOUR COMPANY ACCOUNT")
                    .foregroundColor(.gray.opacity(0.6))
                    .padding(.bottom,30)
                
           
                
                CustomTextField(PlaceHolder: "Email/Phone", bVariable: $signupViewModel.email)
                
                
                CustomTextField(PlaceHolder: "Email/Phone", bVariable: $signupViewModel.phone)
                    .keyboardType(.numberPad)
                
                
                CustomSecureField(PlaceHolder: "Password", bVariable: $signupViewModel.password)
                
                Button(action: {
                    print("Call Next up ")
                    signupViewModel.isNavigate.toggle()
                }, label: {
                    HStack {
                        Text("Next")
                            .foregroundStyle(.white)
                            .fontWeight(.bold)
                        
                    }
                    .padding(.vertical)
                    .padding(.horizontal,50)
                    .background(){
                        Color.theme.buttonColor
                            .cornerRadius(20)
                    }

                })
                .padding(.vertical)
                
               
                
                .navigationDestination(
                    isPresented:$signupViewModel.isNavigate) {
                          SignupInfo()
                        Text("")
                              .hidden()
                     }
                
                HStack(spacing:5) {
                    Text("Already have an account?")
                    NavigationLink(destination: Login()) {
                        HStack{
                            Text("Log in")
                                .foregroundColor(Color.gray)
                                .fontWeight(.semibold)
                        }
                        
                    }
                }.padding(.top)
                
                
            }
            .padding(.horizontal)
            .navigationBarBackButtonHidden()
        }
    }
}

#Preview {
    SignUp()
}
