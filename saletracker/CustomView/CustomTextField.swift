//
//  CustomTextField.swift
//  saletracker
//
//  Created by user257152 on 2/28/24.
//

import SwiftUI

struct CustomTextField: View {
    
        var PlaceHolder : String
       
    
        @Binding var bVariable : String
    var body: some View {
        VStack(spacing: 0){
            TextField(PlaceHolder, text: $bVariable)
                .padding(.bottom)
            
            Divider()
                .frame(minHeight: 1)
                .background(Color.gray)
            
        }
        .padding(.top,15)
    }
}

//#Preview {
//    CustomSecureField(PlaceHolder: "Email/Phone")
//}


struct CustomSecureField: View {
    
        var PlaceHolder : String
       
    @State private var isSecured: Bool = true
        @Binding var bVariable : String
    var body: some View {
        VStack(spacing: 0){
            HStack {
                if isSecured {
                    SecureField(PlaceHolder, text: $bVariable)
                    .foregroundColor(.black)
                    
                } else {
                    TextField(PlaceHolder, text: $bVariable)
                    .foregroundColor(.black)
                    
                }
                
                Button(action: {
                    isSecured.toggle()
                }) {
                    Image(systemName: self.isSecured ? "eye.slash" : "eye")
                        .accentColor(.gray)
                        .frame(width: 22, height: 22)
                }
                
            }
            .padding(.bottom)
            
            Divider()
                .frame(minHeight: 1)
                .background(Color.gray)
           
        }
        .padding(.top,15)
    }
}
