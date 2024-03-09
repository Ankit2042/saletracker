//
//  SignUpViewModel.swift
//  saletracker
//
//  Created by user257152 on 2/28/24.
//

import Foundation


class SignUpViewModel: ObservableObject{
    @Published var email: String = ""
    @Published var phone: String = ""
    @Published var password: String = ""
    @Published var isNavigate: Bool = false
}
