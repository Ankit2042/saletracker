//
//  Login.swift
//  saletracker
//
//  Created by user257152 on 2/28/24.
//

import SwiftUI

struct Login: View {
    @ObservedObject var loginViewModel: LoginViewModel = LoginViewModel()
    var body: some View {
        ZStack{
            VStack{
                Spacer()
                Image("Logo")
                    .resizable()
                    .frame(width: 130, height: 130)
                
                Text("Log in")
                    .font(.largeTitle)
                    .fontWeight(.medium)
                    .foregroundColor(.gray.opacity(0.6))
                
                Text("To Continue To sales Tracker")
                    .foregroundColor(.gray.opacity(0.6))
                    .padding(.bottom,30)
                
           
                
                CustomTextField(PlaceHolder: "Email/Phone", bVariable: $loginViewModel.email)
                
                
                CustomSecureField(PlaceHolder: "Password", bVariable: $loginViewModel.Password)
                
//                MARK: LoginButton
                Button(action: {
                    loginViewModel.isNavigate.toggle()
                }, label: {
                    HStack {
                        Text("Log in")
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
                .padding(.top)
                
//                MARK: Navigate ButtomBar
//
                
                
                .navigationDestination(isPresented: $loginViewModel.isNavigate , destination: {
                    BottomBar()
                })
                
               
                
                HStack(spacing:5){
                    Text("Don't remember Password?")
                    NavigationLink {
                        ForgotPassword()
                    } label: {
                        HStack{
                            Text("Forgot Password")
                                .foregroundStyle(.gray)
                        }
                        
                        
                    }
                }
                .padding(.vertical)
                
                HStack(spacing:5){
                    Text("Don't have an account?")
                    NavigationLink {
                        SignUp()
                    } label: {
                        HStack{
                            Text("SignUp")
                                .foregroundStyle(.gray)
                            
                        }
                        
                        
                    }
                }
                
                Spacer()
            }
            .padding(.horizontal)
            .navigationBarBackButtonHidden()
        }
    }
}

#Preview {
    Login()
}
