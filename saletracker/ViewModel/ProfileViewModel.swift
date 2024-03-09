//
//  Profile.swift
//  saletracker
//
//  Created by user257152 on 3/1/24.
//

import Foundation


class ProfileViewModel: ObservableObject {
    @Published var firstName: String = "Test"
    @Published var LastName: String = "Com"
    @Published var phoneNumber: String = "9758415748"
    @Published var email: String = "test@test.com"
}
