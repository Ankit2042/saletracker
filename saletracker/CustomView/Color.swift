//
//  Color.swift
//  saletracker
//
//  Created by user257152 on 2/28/24.
//

import Foundation


import Foundation
import SwiftUI


extension Color {
    static let theme = ColorTheme()
    
}

struct ColorTheme {
    let buttonColor = Color("ButtonColor")
    let loginTextColor = Color("LoginTextColor")
    let blueWhite = Color("BlueWhite")
    let redWhite = Color("RedWhite")
    let liteBlackWhite = Color("LiteBlackwhite")
    let bottomButtonColor = Color("BottomButtonColor")
    let BlackWhite =  Color("BlackWhite")
}

extension Button {
    func customButtonStyle() -> some View {
        self
            .padding(.vertical,13)
                .frame(maxWidth: .infinity)
                .background(Color.theme.buttonColor.cornerRadius(10))
                .foregroundColor(.white)
                .font(.system(size: 27).bold())
    }
}
