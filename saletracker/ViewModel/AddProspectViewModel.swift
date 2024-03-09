//
//  AddProspectViewModel.swift
//  saletracker
//
//  Created by user257152 on 3/1/24.
//

import Foundation


class AddProspectViewModel: ObservableObject {
    @Published var searchContacts: String = ""
    @Published var firstName: String = ""
    @Published var lastName: String = ""
    @Published var phone: String = ""
    @Published var email: String = ""
    @Published var company: String = ""
    @Published var gstNo: String = ""
    @Published var designation: String = ""
    @Published var address: String = ""
    @Published var city: String = ""
    @Published var state: String = ""
    @Published var country: String = ""
    @Published var zipCode: String = ""
    @Published var Tag: String = ""
    @Published var acquireTheContactDetails:String = ""
    @Published var tag:String = ""
    @Published var sendThisContactGreetings:String = ""
    @Published var birthday:String = ""
    @Published var anniversary:String = ""
    
    @Published var both: String = ""
    
}
