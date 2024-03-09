//
//  AddContact.swift
//  saletracker
//
//  Created by user257152 on 3/4/24.
//

import SwiftUI

struct AddContact: View {
    
    @ObservedObject var addProspectViewModel: AddProspectViewModel = AddProspectViewModel()
    
    @State var selectIndex: Int = 1
    var body: some View {
        VStack(spacing: 20){
            labelTextField(isrequired: false, label: "Search Contacts", placeholder: "Search contact name/number/company name", bVariable: $addProspectViewModel.searchContacts)
            
            ScrollView(.vertical, showsIndicators: false) {
                HStack(spacing: 0){
                    labelTextField(isrequired: true, label: "First Name", placeholder: "First Name", bVariable: $addProspectViewModel.firstName)
                    
                    labelTextField(isrequired: true, label: "Last Name", placeholder: "Last Name", bVariable: $addProspectViewModel.lastName)
                    
                }
                
                labelTextField(isrequired: true, label: "Phone", placeholder: "Phone", bVariable: $addProspectViewModel.phone)
                
                labelTextField(isrequired: false, label: "E-mail", placeholder: "Email", bVariable: $addProspectViewModel.email)
                
                labelTextField(isrequired: false, label: "Company", placeholder: "Company", bVariable: $addProspectViewModel.company)
                
                labelTextField(isrequired: false, label: "GST No", placeholder: "ENter GST No", bVariable: $addProspectViewModel.gstNo)
                
                labelTextField(isrequired: false, label: "Designation", placeholder: "Designation", bVariable: $addProspectViewModel.designation)
                
                labelTextField(isrequired: false, label: "Address", placeholder: "Address", bVariable: $addProspectViewModel.address)
                
                HStack{
                    labelTextField(isrequired: false, label: "City", placeholder: "Enter City", bVariable: $addProspectViewModel.city)
                    
                    labelTextField(isrequired: false, label: "State", placeholder: "Enter State", bVariable: $addProspectViewModel.state)
                }
                
                HStack{
                    labelTextField(isrequired: false, label: "Country", placeholder: "Enter City", bVariable: $addProspectViewModel.country)
                    
                    labelTextField(isrequired: false, label: "Zipcode", placeholder: "Enter State", bVariable: $addProspectViewModel.zipCode)
                }
                
                
                CustomDropDownTextField(label: "how did you Acquire The contact Details?", isrequired: false, value: $addProspectViewModel.acquireTheContactDetails, placeholder: "Select Channel", dropDownList: ["Online", "Offline"])
                
                
                labelTextField(isrequired: false, label: "Tag", placeholder: "Enter Tag", bVariable: $addProspectViewModel.tag)
                
                VStack(alignment: .leading, spacing: 10) {
                    
                    Text("Would You Like To Send This Contact Greeting?")
                        .lineLimit(2)
                        .fontWeight(.semibold)
                        .frame(maxWidth: .infinity,alignment: .leading)
                        
                    
                    HStack{
                        
                        RadioButtonView(Greeting: "Birthday", selectGreetings: $addProspectViewModel.sendThisContactGreetings)
                        
                        RadioButtonView(Greeting: "Anniversary", selectGreetings: $addProspectViewModel.sendThisContactGreetings)
                        
                        RadioButtonView(Greeting: "Both", selectGreetings: $addProspectViewModel.sendThisContactGreetings)
                        
                        RadioButtonView(Greeting: "N/A", selectGreetings: $addProspectViewModel.sendThisContactGreetings)
                        
                        
                        
                    }
                }
                .padding(.top,5)
                
                
                
                if addProspectViewModel.sendThisContactGreetings == "Birthday"{
                    SelectDate(dateString: $addProspectViewModel.birthday, label: "Birthday")
                }else if addProspectViewModel.sendThisContactGreetings == "Anniversary"{
                    SelectDate(dateString: $addProspectViewModel.anniversary, label: "Anniversary")
                }else if addProspectViewModel.sendThisContactGreetings == "Both" {
                    VStack{
                        SelectDate(dateString: $addProspectViewModel.birthday, label: "Birthday")
                        SelectDate(dateString: $addProspectViewModel.anniversary, label: "Anniversary")
                    }
                }
                
                //                MARK: Naxt Button
                                Button(action: {
                                    print("Next")
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
                                .padding(.top)
                
                   
            }
            
            
        }
        .padding(.horizontal,15)
    }
}

#Preview {
    AddContact()
}
