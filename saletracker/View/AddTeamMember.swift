//
//  AddTeamMember.swift
//  saletracker
//
//  Created by user257152 on 3/4/24.
//

import SwiftUI

struct AddTeamMember: View {
    @ObservedObject var addTeamMemberViewModel: AddTeamMemberViewModel = AddTeamMemberViewModel()
    var category: [String] = ["Aabk", "Account Opening", "Company Formation", "Liquidation Report", "Mortgages", "SME Finance"]
    var body: some View {
        ZStack{
            
            ScrollView(.vertical, showsIndicators: false){
                VStack{
                    
                    Divider()
                        .padding(-10)
                    labelTextField(isrequired: true, label: "First Name", placeholder: "Enter First Name", bVariable: $addTeamMemberViewModel.firstName)
                    
                    labelTextField(isrequired: true, label: "Last Name", placeholder: "Enter Last Name", bVariable: $addTeamMemberViewModel.lastName)
                    
                    CustomDropDownTextField(label: "Select Role", isrequired: true, value: $addTeamMemberViewModel.selectRole, placeholder: "Select Role", dropDownList: ["Manager", "Team Member"])
                    
                    CustomDropDownTextField(label: "Select Manager", isrequired: true, value: $addTeamMemberViewModel.selectManager, placeholder: "Select Role", dropDownList: ["My Self", "Vasudha Chhabra", "Sumit Sahani", "Nitesh Banerjee"])
                    
                    labelTextField(isrequired: true, label: "Phone", placeholder: "Enter Phone", bVariable: $addTeamMemberViewModel.phone)
                    
                    labelTextField(isrequired: false, label: "Email", placeholder: "Enter Email", bVariable: $addTeamMemberViewModel.email)
                    
                    labelTextField(isrequired: true, label: "Password", placeholder: "Enter Password", bVariable: $addTeamMemberViewModel.password)
                    
                    
                    Toggle("Team Member Beat *", isOn: $addTeamMemberViewModel.treamMemberBeat)
                    
                   
                    
                    
                    VStack{
                        CustomDropDownTextField(label: "", isrequired: false, value: $addTeamMemberViewModel.name, placeholder: "Select Category", dropDownList: category)
                        
                        CustomDropDownTextField(label: "", isrequired: false, value: $addTeamMemberViewModel.name, placeholder: "Name", dropDownList: ["Name 1", "Name 2"])
                        
                        
                        
                        HStack{
                            
                            
                            labelTextField(isrequired: false, label: "", placeholder: "Rate", bVariable: $addTeamMemberViewModel.rate)
                            
                            labelTextField(isrequired: false, label: "", placeholder: "Unit", bVariable: $addTeamMemberViewModel.unit)
                            
                            
                            
                        }
                        
                        labelTextField(isrequired: false, label: "", placeholder: "Set Monthly Target For This Product", bVariable: $addTeamMemberViewModel.monthTarget)
                    }
                    .padding()
                    .overlay() {
                        RoundedRectangle(cornerRadius: 15, style: .continuous)
                            .stroke(Color.gray, lineWidth:1)
                    }
                    
                    
                    HStack{
                        Text("Assign Another Product")
                            .font(.headline)
                            .fontWeight(.medium)
                        Spacer()
                        Button(action: {
                            
                        }, label: {
                            Image(systemName: "plus")
                                .resizable()
                                .frame(width: 20, height: 20)
                                .foregroundColor(.primary)
                        })
                    }
                    
                    Button(action: {
                        
                    }, label: {
                        HStack {
                            Text("Save")
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
                .padding()
                
            }
            .navigationTitle("Add Tead Mamber")
        }
    }
}

#Preview {
    AddTeamMember()
}
