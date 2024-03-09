//
//  AddTeamMemberViewModel.swift
//  saletracker
//
//  Created by user257152 on 3/4/24.
//

import Foundation

struct AssignedProductData{
    let selectCategory: String
    let name: String
    let rate: String
    let unit: String
    let target: String
}

class AddTeamMemberViewModel: ObservableObject {
    @Published var firstName: String = ""
    @Published var lastName: String = ""
    @Published var selectRole: String = ""
    @Published var selectManager: String = ""
    @Published var phone: String = ""
    @Published var email: String = ""
    @Published var password: String = ""
    @Published var treamMemberBeat: Bool = false
    @Published var name: String = ""
    @Published var rate: String = ""
    @Published var unit: String = ""
    @Published var monthTarget: String = ""
}
