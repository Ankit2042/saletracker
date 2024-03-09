//
//  labelTextField.swift
//  saletracker
//
//  Created by user257152 on 3/1/24.
//

import SwiftUI

struct labelTextField: View {
    var isrequired: Bool = true
    var label: String
    var placeholder: String
    @Binding var bVariable: String
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
            
            TextField(placeholder, text: $bVariable)
                .padding(.vertical,10)
                .padding(.horizontal)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.gray, lineWidth:1)
                )

                
            
        }
        .padding(.horizontal,2)
    }
}

#Preview {
    AddProspect()
}
