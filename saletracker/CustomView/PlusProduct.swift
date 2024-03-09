//
//  PlusProduct.swift
//  saletracker
//
//  Created by user257152 on 3/4/24.
//

import SwiftUI

struct PlusProduct: View {
    @Binding var name: String
    @Binding var rate: String
    @Binding  var unit: String
    @Binding var add: Int
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 5) {
            HStack(spacing:3){
                Text("Product")
                    .font(.headline)
                    .fontWeight(.semibold)
                Text("*")
                    .font(.title)
                    .foregroundStyle(.red)
                
                Spacer()
                
                Button(action: {
                    add += 1
                }, label: {
                    Image(systemName: "plus")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .foregroundColor(.primary)
                })
            }
            HStack{
                TextField("Name", text: $name)
                    .padding(.horizontal)
                    .padding(.vertical,10)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.gray, lineWidth:1)
                    )
                TextField("Rate", text: $rate)
                    .padding(.horizontal)
                    .padding(.vertical,10)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.gray, lineWidth:1)
                    )
                TextField("Rate", text: $unit)
                    .padding(.horizontal)
                    .padding(.vertical,10)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.gray, lineWidth:1)
                    )
                
                
                Button(action: {
                    add -= 1
                }, label: {
                    Image(systemName: "trash.fill")
                        .renderingMode(.template)
                        .font(.title)
                        .foregroundColor(.primary)
                })
            }
        }
    }
}

#Preview {
    PlusProduct(name: .constant("Name"), rate: .constant("Rate"), unit: .constant("Unit"), add: .constant(5))
}
