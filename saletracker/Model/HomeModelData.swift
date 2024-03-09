//
//  HomeModelData.swift
//  saletracker
//
//  Created by user257152 on 3/2/24.
//

import Foundation


struct HomeModelData: Hashable, Identifiable {
    let id = UUID()
    let name: String
    let active: Int
    let won: Int
    let lost: Int
}


struct Homedata {
    static let homeModeldata = [
    
        HomeModelData(name: "Test 1", active: 2, won: 0, lost: 0),
        HomeModelData(name: "Test 2", active: 5, won: 0, lost: 0),
        HomeModelData(name: "Test 3", active: 8, won: 1, lost: 8),
        HomeModelData(name: "Test 4", active: 9, won: 0, lost: 0),
        HomeModelData(name: "Test 5", active: 2, won: 8, lost: 0),
        HomeModelData(name: "Test 6", active: 4, won: 0, lost: 7),
        HomeModelData(name: "Test 7", active: 8, won: 0, lost: 0),
        HomeModelData(name: "Test 8", active: 6, won: 0, lost: 0),
        HomeModelData(name: "Test 9", active: 3, won: 0, lost: 0)
    
    ]
}
