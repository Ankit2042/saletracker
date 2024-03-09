//
//  ForgotPassword.swift
//  saletracker
//
//  Created by user257152 on 2/28/24.
//

import SwiftUI

struct ForgotPassword: View {
    @ObservedObject var forgotPasswordViewModel: ForgotPasswordViewModel = ForgotPasswordViewModel()
    
    var body: some View {
        ZStack{
            VStack{
                Image("Logo")
                    .resizable()
                    .frame(width: 130, height: 130)
                
                Text("Forgot Password")
                    .font(.headline)
                    .fontWeight(.medium)
                    .foregroundColor(.gray.opacity(0.6))
                    .padding(.top)
                
                Text("Provide Your Email Address To Reset Password On Sales Tracker")
                    .multilineTextAlignment(.center)
                    .padding(.vertical)
                
                
                CustomTextField(PlaceHolder: "E-mail", bVariable: $forgotPasswordViewModel.Email)
                
                
                Button(action: {
                    print("Call Forgot Password")
                }, label: {
                    HStack {
                        Text("Submit")
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
                
            }
            .padding(.horizontal,30)
        }
    }
}

#Preview {
    ForgotPassword()
}
