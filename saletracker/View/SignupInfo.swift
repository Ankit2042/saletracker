//
//  SignupInfo.swift
//  saletracker
//
//  Created by user257152 on 2/28/24.
//

import SwiftUI

struct SignupInfo: View {
    @ObservedObject var signupInfoViewModel: SignupinfoViewModel = SignupinfoViewModel()
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
                
           
                
                CustomTextField(PlaceHolder: "First Name", bVariable: $signupInfoViewModel.firstName)
                
                CustomTextField(PlaceHolder: "Last Name", bVariable: $signupInfoViewModel.firstName)
                
                CustomTextField(PlaceHolder: "Company Name", bVariable: $signupInfoViewModel.firstName)
                
                HStack{
                    Image(systemName: signupInfoViewModel.checked ? "checkmark.square.fill" : "square")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20)
                        .foregroundColor(signupInfoViewModel.checked ? Color(UIColor.systemBlue) : Color.secondary)
                        .onTapGesture {
                            withAnimation {
                                self.signupInfoViewModel.checked.toggle()
                            }
                            
                        }
                    
                    Text("I Agree To The And Condition")
                        .foregroundStyle(.gray)
                }
                .padding()
                
                Button(action: {
                    print("sign Up Calling ")
                }, label: {
                    HStack {
                        Text("Sign up")
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
                
                
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    SignupInfo()
}
