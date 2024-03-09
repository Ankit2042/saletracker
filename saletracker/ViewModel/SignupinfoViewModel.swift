//
//  SignupinfoViewModel.swift
//  saletracker
//
//  Created by user257152 on 2/28/24.
//

import Foundation

class SignupinfoViewModel: ObservableObject {
    @Published var firstName: String = ""
    @Published var lastname: String = ""
    @Published var companyName: String = ""
    @Published var checked: Bool = false
}


