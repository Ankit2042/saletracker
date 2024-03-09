//
//  CustomDropDownTextField.swift
//  saletracker
//
//  Created by user257152 on 3/2/24.
//

import SwiftUI



//#Preview {
//    CustomDropDownTextField()
//}

import SwiftUI

struct CustomDropDownTextField: View{
    var label: String
    var isrequired: Bool
    @Binding var value: String
    var placeholder: String
    var dropDownList: [String]
    var body: some View {
        
        
        VStack(alignment: .leading, spacing: 3){
            HStack(spacing: 2){
                Text(label)
                    .font(.headline)
                    .fontWeight(.medium)
                if isrequired{
                    Text("*")
                        .font(.headline)
                        .foregroundStyle(.red)
                }
            }
            Menu {
                ForEach(dropDownList, id: \.self){ client in
                    Button(client) {
                        self.value = client
                    }
                }
            } label: {
                VStack(spacing: 5){
                    HStack{
                        Text(value.isEmpty ? placeholder : value)
                            .foregroundColor(value.isEmpty ? .gray : .black)
                        Spacer()
                        Image(systemName: "chevron.down")
                            .foregroundColor(Color.primary)
                            .font(Font.system(size: 20, weight: .bold))
                    }
                    .padding(.horizontal)
                   
                }
                .padding(.vertical,10)
                .padding(.horizontal)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.gray, lineWidth:1)
                )
            }
           
                
            
        }
        .padding(.horizontal,2)
        
        
    }
}
