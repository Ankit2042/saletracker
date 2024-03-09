//
//  AddProductViewModel.swift
//  saletracker
//
//  Created by user257152 on 3/4/24.
//

import Foundation


class AddProductViewModel: ObservableObject{
    @Published var category: String = ""
    @Published var name: String = ""
    @Published var rate: String = ""
    @Published var unit: String = ""
    @Published var add: Int = 5
}
