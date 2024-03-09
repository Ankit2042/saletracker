//
//  Profile.swift
//  saletracker
//
//  Created by user257152 on 3/1/24.
//

import SwiftUI

struct Profile: View {
    @ObservedObject var profileViewModel: ProfileViewModel = ProfileViewModel()
    var body: some View {
        
            ZStack{
                ScrollView(.vertical, showsIndicators: false) {
                    VStack{
                        
                        HStack{
                            Text("Profile")
                                .font(.headline)
                        }
                        .padding(.top)
                        Divider()
                            .padding(.horizontal, -30)
                        HStack{
                            Image("Profile")
                                .renderingMode(.template)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .clipShape(Circle())
                                .frame(width: 100, height: 100, alignment: .center)
                                .foregroundColor(.gray)
                            
                        }
                        
                        Text("Total Members: 11/20")
                            .font(.title3)
                            .fontWeight(.semibold)
                        
                        
                        CustomTextField(PlaceHolder: "First Name", bVariable: $profileViewModel.firstName)
                        
                        CustomTextField(PlaceHolder: "Last Name", bVariable: $profileViewModel.LastName)
                        
                        CustomTextField(PlaceHolder: "Phone Number", bVariable: $profileViewModel.phoneNumber)
                        
                        CustomTextField(PlaceHolder: "Email", bVariable: $profileViewModel.email)
                        
                        Spacer()
                        
                           
                    }
                    .padding(.horizontal)
                }
                
                
                
            }
       
    }
}

#Preview {
    Profile()
}
