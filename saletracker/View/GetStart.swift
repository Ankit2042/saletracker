//
//  GetStart.swift
//  saletracker
//
//  Created by user257152 on 2/28/24.
//

import SwiftUI

struct GetStart: View {
    var body: some View {
        
            ZStack{
                VStack{
                    Image("Logo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 130, height: 130)
                        .padding(.bottom, 50)
                        
                    Image("NameLogo")
                        .resizable()
                        .scaledToFit()
                    
                    HStack{
                        NavigationLink(destination: SignUp()) {
                            HStack{
                                Text("Sign Up")
                                    .foregroundStyle(.white)
                                    .fontWeight(.bold)
                                    
                            }
                            .padding(.vertical)
                            .frame(width: 150)
                            .background(){
                                Color.theme.buttonColor
                                    .cornerRadius(20)
                            }
                            
                        }
                        
                        
                        NavigationLink(destination: Login()) {
                            HStack{
                                Text("Log in")
                                    .foregroundStyle(.white)
                                    .fontWeight(.bold)
                                    
                            }
                            .padding(.vertical)
                            .frame(width: 150)
                            .background(){
                                Color.theme.buttonColor
                                    .cornerRadius(20)
                            }
                            
                        }
                    }
                    .padding(.top)
                   
                }
                .padding(.horizontal)
            }
        
    }
}

#Preview {
    GetStart()
}
