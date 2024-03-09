//
//  AddProduct.swift
//  saletracker
//
//  Created by user257152 on 3/4/24.
//

import SwiftUI

struct AddProduct: View {
        
    @ObservedObject var productViewModel: AddProductViewModel = AddProductViewModel()
 @State var addmoreproduct:Int = 1
    
    var category: [String] = ["Aabk", "Account Opening", "Company Formation", "Liquidation Report", "Mortgages", "SME Finance"]
    var body: some View {
        ZStack{
            
            VStack{
                Divider()
                
                CustomDropDownTextField(label: "select Category", isrequired: false, value: $productViewModel.category, placeholder: "Select Category", dropDownList: category)
                
                
                PlusProduct(name: $productViewModel.name, rate: $productViewModel.rate, unit: $productViewModel.unit, add: $productViewModel.add)
                
                Spacer()
            }
            .padding(.horizontal)
            .navigationTitle("Add Product")
           
        }
    }
}

#Preview {
    AddProduct()
}
