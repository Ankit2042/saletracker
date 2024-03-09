//
//  LoginViewModel.swift
//  saletracker
//
//  Created by user257152 on 2/28/24.
//

import Foundation


class LoginViewModel: ObservableObject {
    @Published var email:String = ""
    @Published var Password:String = ""
    @Published var login: Bool = false
    @Published var isNavigate: Bool = false
    
}
